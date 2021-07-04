class Info < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
   validates :weight
   validates :height
  end 

  # def bmi
  #   weight / height ** 2
  # end

  # def height_2
  #   height * 2
  # end

  # def set_extra_information
  #   {:bmi => bmi, :height_2 => height_2}
  # end
end
