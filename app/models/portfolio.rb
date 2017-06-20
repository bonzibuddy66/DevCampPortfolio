class Portfolio < ApplicationRecord
    validates_presence_of :title , :body, :main_image, :thumb_image
    
    def self.programming
        where(subtitle: 'Programming')
end
    scope  :service, -> { where(subtitle: 'My great service')}
end
