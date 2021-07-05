class Info < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
   validates :weight
   validates :height
   validates :bmi
  end 

end
