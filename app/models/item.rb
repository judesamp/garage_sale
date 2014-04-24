class Item < ActiveRecord::Base

  mount_uploader :item_image, ItemUploader
end
