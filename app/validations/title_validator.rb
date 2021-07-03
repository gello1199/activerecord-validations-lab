class TitleValidator < ActiveModel::Validator
  
  TITLES = [/Won't Believe/, /Secret/, /Top[0-9]/, /Guess/]
  
  def validate(record)
      if TITLES.none? do |word| 
        # binding.pry
      word.match(record.title)
      end
        record.errors.add :title, "Must contain clickbait"
      end
    end
  end