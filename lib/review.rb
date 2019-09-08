class Review < ActiveRecord::Base
     belongs_to Parent
     belongs_to Place
end