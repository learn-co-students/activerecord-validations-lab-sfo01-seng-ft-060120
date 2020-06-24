require 'pry'

class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title == nil
            record.errors[:title] << "Title cannot be empty!"
        else
            clickbait = ["Won't Believe", "Secret", "Top", "Guess"]
            unless clickbait.any? { |phrase| record.title.include?(phrase)}
            record.errors[:title] << "Not Clickbait-y!"
            end 
        end
    end
end