class Customer < ApplicationRecord
  has_many_attached :profiles

  # def get_profile(width,height)
  #   unless profile.attached?
  #     file_path=Rails.root.join('app/assets/images/no_image.jpg')
  #     profile.attach(io:File.open(file_path),filename:'default-image.jpg',content_type:'image/jpeg')
  #   end
  #   profile.variant(resize_to_limit:[width,height]).processed
  # end

  validates :profiles,presence:true

end
