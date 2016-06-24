class Exercise
    
    # Assume that "str" is a sequence of words separated by spaces.
        # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
    # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
    def self.marklar(str)
        str_array = str.split(" ")                   #Array of words
        final_str = ""                                   #final string to be returned
        for index in 0...str_array.length       #Loop through array
            if str_array[index].length > 4
                
                punc = str_array[index].rindex(/[[:punct:]]/) #Maintain punctuation
                if punc == nil                                             #If there is no punctuation, then replace with nothing
                    punc = ""
                else
                    punc = str_array[index][str_array[index].rindex(/[[:punct:]]/)]
                end
                
                if str_array[index] == str_array[index].downcase   #If the lowercase version of the same word is the same, than it is lowercase
                    str_array[index] = "marklar#{punc}"
                else                                                                    # else it is capitalized
                    str_array[index] = "Marklar#{punc}"
                end
            end
            if index != 0           #Adds spaces between the words
                final_str += " "
            end
            final_str += str_array[index]   #Concatentates the words from the array to the final string
        end
        return final_str
    end
    
    # Return the sum of all even numbers in the Fibonacci sequence, up to
        # the "nth" term in the sequence
        # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
    # and the sum of its even numbers is (2 + 8) = 10
    def self.even_fibonacci(nth)
        current = 1     #Current and Previous are used to traverse through the fibonacci sequence
        previous = 0
        even_sum = 0
        nth.times {      #loop n times and calculate each stage of the fibonacci sequence
            if current % 2 == 0    #If the current number is even then add it to the sum
                even_sum += current
            end
            temp = current + previous
            previous = current
            current = temp
        }
        return even_sum
    end
end
