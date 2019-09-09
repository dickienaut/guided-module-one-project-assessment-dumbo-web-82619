class Place < ActiveRecord::Base
    has_many :reviews
    has_many :parents, through: :reviews
    has_many :type_of_activity, through: :reviews
end
