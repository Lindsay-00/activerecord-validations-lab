# class ClickbaitValidator < ActiveModel::Validator
#     def validate(record)
#       unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top [number]") || record.title.include?("Guess")
#         record.errors[:post] << "The title is not clickbait."
#       end
#     end
#   end 
  