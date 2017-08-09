def translate string 
    string = string.split(" ")
    result = ""
    for word in string
        if isConsonant(word)
            wordConsonant = consonantCollector word
            piggyEnd = wordConsonant + "ay"
            word[0..wordConsonant.length-1] = ""
            word = word + piggyEnd
            result = result + word + " "
        else
            result = result + word + "ay" + " "
        end
    end
    result.chomp(" ")
end

def consonantCollector string 
    string.downcase!
    string = string.split ""
    result = ""
    i = 0
    while isConsonant string[i]
        result = result + string[i]
        if string[i] == "q"
            if string[i+1] == "u"
                result = result + "u"
                i += 1
            end
        end
        i += 1
    end
    result
end

def isConsonant string
    vowelArray = ["a", "e", "o", "i", "u", "y"]
    string.downcase!
    for vowel in vowelArray
        if vowel == string[0]
            return false            
        end
    end
    true
end