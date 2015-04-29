class Comment < ActiveRecord::Base
    belongs_to :post
    validates :body, presence: true
    validates :post, presence: true
    
    def commenter_name
       commenter.present? ? self.commenter : "Anon" 
    end
end
