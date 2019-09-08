class Parent < ActiveRecord::Base
    has_many :review
    has_many :place, through: :review
end

