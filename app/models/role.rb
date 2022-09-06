class Role < ActiveRecord::Base
  has_many :auditions
  has_many :actors, through: :auditions
  has_many :locations, through: :auditions


end