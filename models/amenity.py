#!/usr/bin/python
""" holds class Amenity"""
import models
from models.base_model import BaseModel, Base
from os import getenv
import sqlalchemy
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship


class Amenity(BaseModel, Base):
    """This class is a representation of an amenity.
    
    Attributes:
        name: The amenity's name.
            - Optional: False
            - Type: String
            - Length: <= 128

        Note: All attributes are optional when file storage is utilized.
    """
    if models.storage_t == 'db':
        __tablename__ = 'amenities'
        name = Column(String(128), nullable=False)

    else:
        name = ""

    def __init__(self, *args, **kwargs):
        """initializes Amenity"""
        super().__init__(*args, **kwargs)
