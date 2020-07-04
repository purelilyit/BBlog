class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder

  accepts_nested_attributes_for :technologies,
                                  reject_if: lambda {  |attrs| attrs['name'].blank? }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200')
    self.badge ||= Placeholder.image_generator(height: '250',width: '250')
  end
end
