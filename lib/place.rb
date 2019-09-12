class Place < ActiveRecord::Base
    has_many :reviews
    has_many :parents, through: :reviews



end
