class Place < ActiveRecord::Base
    has_many :review
    has_many :parents, through: :review
end
