class Post < ApplicationRecord
    belongs_to :user
    mount_uploader :image, PostImageUploader
    def self.search(search)
     result = all
     result = result.where("title like ?", "%#{search[:title]}%") if search[:title]
     result = result.where("place like ?", "%#{search[:place]}%") if search[:place]
     result = result.where("body like ?", "%#{search[:body]}%") if search[:body]
     result = result.where('time like ?', "%#{search[:time]}%") if search[:time]
     result
    end
end