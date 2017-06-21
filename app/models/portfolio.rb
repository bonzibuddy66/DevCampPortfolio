class Portfolio < ApplicationRecord
    has_many :technologies
    include Placeholder
    validates_presence_of :title , :body, :main_image, :thumb_image
    
    def self.programming
        where(subtitle: 'Programming')
    end
    scope  :service, -> { where(subtitle: 'My great service')}
    
    after_initialize :set_defaults
    
    def set_defaults
        self.main_image ||=  Placeholder.image_generator(height: '400', width: '200')
        self.thumb_image ||=  Placeholder.image_generator(height: '300', width: '500')
    end
end
