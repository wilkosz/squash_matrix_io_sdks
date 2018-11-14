require 'squash_matrix_api'
require 'sentry-raven'

id = 336 # unimelb id
api_instance = SquashMatrixAPI::DefaultApi.new

begin
  unimelb = api_instance.clubs_squash_matrix_id_get(id)
  players_ids = unimelb[:player_ids]
  players = players_ids.map do |p_id|
    api_instance.players_squash_matrix_id_get(p_id)
  end
  top_10_players = players.sort_by { |a| a[:rating] }.slice(0, 9)
  puts 'Top 10 unimelb players:rating'
  top_10_players.each do |player|
    puts "#{player[:name]}:#{player[:rating]}"
  end
rescue SquashMatrixAPI::ApiError => e
  Raven.capture_exception(e)
end
