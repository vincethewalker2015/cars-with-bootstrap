class Car < ApplicationRecord
    validates :make, presence: true
    validates :name, presence: true
    validates :price, presence: true
    
    mount_uploader :picture, PictureUploader
    
    
    def picture_size
       if picture_size > 5.megabytes
           errors.add(:picture, "should be less than 5MB")
       end
    end
    
end