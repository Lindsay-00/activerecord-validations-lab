class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    
    validate :clickbait

    def clickbait
        errors.add(:post, "is not clickbait") unless self.title != nil && ["Won't Believe", "Secret", "Top [number]", "Guess"].any?{|word| self.title.include?(word)}
        # self.title.include?("Won't Believe") || self.title.include?("Secret") || self.title.include?("Top [number]") || self.title.include?("Guess")
          
    end
end
