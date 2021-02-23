class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil
            unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Guess") || record.title.match?(/Top\s\d*/)
                record.errors[:title] << "Title is not sufficiently click-baity"
            end
        end
    end
end