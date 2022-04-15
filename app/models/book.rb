class Book < ApplicationRecord
  belongs_to :author
  has_many :bookstags
  has_many :tags, through: :bookstags


  # validations
  validate :image_size_validation

  private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end

  mount_uploader :image, ::AvatarUploader

  def self.tagged_with(name)
    Tag.find_by!(name: name).booksa
  end

  def all_tags(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name).first_or_create!
    end
  end

  def all_tags
    tags.map(&:name).join(",") 
  end

 

end
