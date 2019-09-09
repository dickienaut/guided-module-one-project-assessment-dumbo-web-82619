class Review < ActiveRecord::Base
     belongs_to :parent
     belongs_to :place
end