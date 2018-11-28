# coding: utf-8

"""
    Squash Matrix API

    # Endeavor The squash matrix API enables clubs, players, and regions to own their information, with results being updated weekly. The API information sits ontop of squash matrix australia website [https://squashmatrix.com](https://squashmatrix.com) # API Aside from the documentation provided below, there is also a `{json:api}` available and can be accessed in the same manner, with the addition of the accept header `{accept: application/vnd.api+json}`. More information about json api can be viewed on their website at [http://jsonapi.org/](http://jsonapi.org/) # Squash Matrix Scrapper There is a ruby SDK for retrieving information from [https://squashmatrix.com](https://squashmatrix.com) which can be found at https://rubygems.org/gems/squash_matrix # SDK's Please stay posted! Client sdk's for the following will be provided shortly:    - Javascript   - Java   - Ruby  # Blog Find relevent and interesting media on [wilkosz.com.au](http://wilkosz.com.au) # Contact Join this endeavor and be appart of the community [https://www.facebook.com/squashmatrixapi](https://www.facebook.com/squashmatrixapi) <hr />  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six

from SquashMatrixAPI.SquashMatrixClientModel.game import Game  # noqa: F401,E501


class Player(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'id': 'int',
        'name': 'str',
        'rating': 'float',
        'games_as_player_a': 'list[Game]',
        'games_as_player_b': 'list[Game]'
    }

    attribute_map = {
        'id': 'id',
        'name': 'name',
        'rating': 'rating',
        'games_as_player_a': 'games_as_player_a',
        'games_as_player_b': 'games_as_player_b'
    }

    def __init__(self, id=None, name=None, rating=None, games_as_player_a=None, games_as_player_b=None):  # noqa: E501
        """Player - a model defined in Swagger"""  # noqa: E501

        self._id = None
        self._name = None
        self._rating = None
        self._games_as_player_a = None
        self._games_as_player_b = None
        self.discriminator = None

        if id is not None:
            self.id = id
        if name is not None:
            self.name = name
        if rating is not None:
            self.rating = rating
        if games_as_player_a is not None:
            self.games_as_player_a = games_as_player_a
        if games_as_player_b is not None:
            self.games_as_player_b = games_as_player_b

    @property
    def id(self):
        """Gets the id of this Player.  # noqa: E501


        :return: The id of this Player.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this Player.


        :param id: The id of this Player.  # noqa: E501
        :type: int
        """

        self._id = id

    @property
    def name(self):
        """Gets the name of this Player.  # noqa: E501


        :return: The name of this Player.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this Player.


        :param name: The name of this Player.  # noqa: E501
        :type: str
        """

        self._name = name

    @property
    def rating(self):
        """Gets the rating of this Player.  # noqa: E501


        :return: The rating of this Player.  # noqa: E501
        :rtype: float
        """
        return self._rating

    @rating.setter
    def rating(self, rating):
        """Sets the rating of this Player.


        :param rating: The rating of this Player.  # noqa: E501
        :type: float
        """

        self._rating = rating

    @property
    def games_as_player_a(self):
        """Gets the games_as_player_a of this Player.  # noqa: E501


        :return: The games_as_player_a of this Player.  # noqa: E501
        :rtype: list[Game]
        """
        return self._games_as_player_a

    @games_as_player_a.setter
    def games_as_player_a(self, games_as_player_a):
        """Sets the games_as_player_a of this Player.


        :param games_as_player_a: The games_as_player_a of this Player.  # noqa: E501
        :type: list[Game]
        """

        self._games_as_player_a = games_as_player_a

    @property
    def games_as_player_b(self):
        """Gets the games_as_player_b of this Player.  # noqa: E501


        :return: The games_as_player_b of this Player.  # noqa: E501
        :rtype: list[Game]
        """
        return self._games_as_player_b

    @games_as_player_b.setter
    def games_as_player_b(self, games_as_player_b):
        """Sets the games_as_player_b of this Player.


        :param games_as_player_b: The games_as_player_b of this Player.  # noqa: E501
        :type: list[Game]
        """

        self._games_as_player_b = games_as_player_b

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, Player):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other