class Director < ApplicationRecord
  belongs_to :favorite_genre, class_name: 'Genre'
  has_many :movie
end
