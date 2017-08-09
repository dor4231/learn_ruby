class Book  
    def title
        @title
    end

    def title=(new_title)
        @title = self.titleize new_title
    end

    def first_word string
        string = string.split(" ")
        string[0]
    end

    def titleize string
        result = first_word(string).capitalize + " "
        string = string.split(" ")
        string.delete_at(0)
        for word in string
            if isLittle(word)
                result = result + word + " "
            else
                result = result + word.capitalize + " "
            end
        end
        result.chomp(" ")
    end

    def isLittle string
        littleWords = ["the", "of", "and", "or", "a", "an", "if", "is", "are", "in"]
        for little in littleWords
            if little == string.downcase
                return true
            end
        end
        false
    end
end
