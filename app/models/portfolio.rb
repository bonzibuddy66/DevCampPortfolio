class Portfolio < ApplicationRecord
    validates_presence_of :title , :body, :main_image, :thumb_image
    
    def self.programming
        where(subtitle: 'Programming')
end
    scope  :service, -> { where(subtitle: 'My great service')}
    
    after_initialize :set_defaults
    
    def set_defaults
        self.main_image ||= "http://placehold.it/400x200"
        self.thumb_image ||= "http://placehold.it/300x500"
    end
end
