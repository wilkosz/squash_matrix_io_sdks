<?php
    $gitComment = "";
    $workingDirectory = "/Users/lachlan/Desktop/ChronoSheetsClients/WorkingDirectory/";
    $chronosheetsApiJsonUrl = "https://www.chronosheets.com/swagger/docs/v1";
    $gitHubUserName = "ChronoSheets";

    $swaggerLibTypes = [ 
                            "csharp",
                            "android",
                            "java",
                            "javascript",
                            "php",
                            "python",
                            "ruby",
                            "swift4",
                            "typescript-angular" 
                        ];
    $gitHubRepoNames = [ 
                            "ChronoSheets-CSharp-Client",
                            "ChronoSheets-Android-Client",
                            "ChronoSheets-Java-Client",
                            "ChronoSheets-Javascript-Client",
                            "ChronoSheets-PHP-Client",
                            "ChronoSheets-Python-Client",
                            "ChronoSheets-Ruby-Client",
                            "ChronoSheets-Swift4-Client",
                            "ChronoSheets-Angular-Client" 
                        ];
    $libCommonNames = [ 
                            "CSharp",
                            "Android",
                            "Java",
                            "Javascript",
                            "PHP",
                            "Python",
                            "Ruby",
                            "Swift4",
                            "TypeScriptAngular" 
                        ];
    $subfolders =       [
                            "",
                            "",
                            "",
                            "",
                            "ChronoSheetsAPI",
                            "",
                            "",
                            "",
                            "" 
                        ];

    echo "Starting generation\r\n";

    exec("chmod -R ugo+w ".$workingDirectory."*");

    exec("rm -rf ".$workingDirectory."_Archived/*");

    foreach($swaggerLibTypes as $key => $value)
    {
        echo "Start generating '".$value."' library\r\n";

        echo "Cleaning...\r\n";

        $filesToDelete = new DirectoryIterator($workingDirectory.$gitHubRepoNames[$key]);

        if($subfolders[$key] != ""){
            $filesToDelete = new DirectoryIterator($workingDirectory.$gitHubRepoNames[$key]."/".$subfolders[$key]);
        }

        foreach ($filesToDelete as $fileInfo) {
            $name = $fileInfo->getFilename();
            if ($name != ".git" && $name != ".gitignore" && $name != "." && $name != "..") 
            {
                if($subfolders[$key] != ""){
                    exec("rm -rf ".$workingDirectory.$gitHubRepoNames[$key]."/".$subfolders[$key]."/".$name);
                }else{
                    exec("rm -rf ".$workingDirectory.$gitHubRepoNames[$key]."/".$name);
                }
            }
        }

        echo "Generating api client files...\r\n";
        exec("swagger-codegen generate -i ".$chronosheetsApiJsonUrl." -l ".$value." -o ".$workingDirectory.$gitHubRepoNames[$key]."/ -c configs/config-".$value.".json --model-name-prefix CS");

        echo "Setting permissions on git push script\r\n";
        if($subfolders[$key] != ""){
            exec("chmod u+x ".$workingDirectory.$gitHubRepoNames[$key]."/".$subfolders[$key]."/git_push.sh");
        }else{
            exec("chmod u+x ".$workingDirectory.$gitHubRepoNames[$key]."/git_push.sh");
        }

        echo "Pusing to git...\r\n";

        if($subfolders[$key] != ""){
            $scriptFileName = $workingDirectory.$gitHubRepoNames[$key]."/".$subfolders[$key]."/git_push.sh";
            $contents = file_get_contents($scriptFileName);
            $contents = str_replace("git pull origin master", "git pull origin master --allow-unrelated-histories", $contents);
            file_put_contents($scriptFileName, $contents);
            exec("cd ".$workingDirectory.$gitHubRepoNames[$key]."/".$subfolders[$key]."; ".$scriptFileName." ChronoSheets ".$gitHubRepoNames[$key]." \"".$gitComment."\"; cd ../../../");
        }else{
            $scriptFileName = $workingDirectory.$gitHubRepoNames[$key]."/git_push.sh";
            $contents = file_get_contents($scriptFileName);
            $contents = str_replace("git pull origin master", "git pull origin master --allow-unrelated-histories", $contents);
            file_put_contents($scriptFileName, $contents);
            exec("cd ".$workingDirectory.$gitHubRepoNames[$key]."; ".$scriptFileName." ChronoSheets ".$gitHubRepoNames[$key]." \"".$gitComment."\"; cd ../../");
        }

        echo "Creating ZIP archives...\r\n";
        $zipFile = new ZipArchive();
        $zipFile->open($workingDirectory."_Archived/".$libCommonNames[$key].".zip",ZipArchive::CREATE|ZipArchive::OVERWRITE);
        $objects = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($workingDirectory.$gitHubRepoNames[$key]), RecursiveIteratorIterator::SELF_FIRST);
        foreach($objects as $name => $object){
            $relPath = str_replace($workingDirectory.$gitHubRepoNames[$key], "", $name);
            if(
                substr( $relPath, 0, 5 ) !== "/.git" &&
                substr( $relPath, 0, 11 ) !== "/.gitignore"  &&
                substr( $relPath, 0, 17 ) !== "/.swagger-codegen"  &&
                substr( $relPath, 0, 24 ) !== "/.swagger-codegen-ignore" &&
                $relPath !== "/." &&
                $relPath !== "/..."
            )
            {
                $bSkip = false;

                if($subfolders[$key] != ""){
                    $subfolderLen = strlen($subfolders[$key]);

                    if(substr($relPath, 0, $subfolderLen + 6) === "/".$subfolders[$key]."/.git"){ $bSkip = true; }
                    if(substr($relPath, 0, $subfolderLen + 12) === "/".$subfolders[$key]."/.gitignore"){ $bSkip = true; }
                    if(substr($relPath, 0, $subfolderLen + 18) === "/".$subfolders[$key]."/.swagger-codegen"){ $bSkip = true; }
                    if(substr($relPath, 0, $subfolderLen + 25) === "/".$subfolders[$key]."/.swagger-codegen-ignore"){ $bSkip = true; }
                }

                if(!$bSkip){
                    if(is_dir($name)){
                        //$zipFile->addEmptyDir(ltrim($relPath)); 
                    }else{
                        //$name = substr($name, 1, strlen($name));
                        $zipFile->addFile($name, ltrim($relPath, '/')); 
                    }
                }
            }
        }
        $zipFile->close();

        echo "Uploading to S3 cloud...\r\n";
        exec("aws s3 cp ".$workingDirectory."_Archived/".$libCommonNames[$key].".zip"." s3://chronoapiclients/v1/".$libCommonNames[$key].".zip --acl public-read");

    }
?>