class Portfolio < ApplicationRecord
  has_many :technologies

  accepts_nested_attributes_for :technologies,
                                  reject_if: lambda {  |attrs| attrs['name'].blank? }

  after_initialize :set_defaults

  include Placeholder

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200')
    self.badge ||= Placeholder.image_generator(height: '250',width: '250')
  end

  def self.by_position
    order("position ASC")
  end
end
