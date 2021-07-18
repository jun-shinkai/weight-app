class Info < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
   validates :weight
   validates :height
   validates :bmi
  end 
 
 
   validate :date_scope, on: :create
 

 private
   def date_scope
     if Info.where("user_id = ? AND DATE(created_at) = DATE(?)", self.user_id, Time.now).all.any?
      errors.add(:user_id, "Can only post once a day")
     end
   end

end
