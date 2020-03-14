
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,dictionary)

    hash = {}

    # making a new array which is downcased and removing all punctuations.
    puts new_array = string.downcase.split.map {
    |word|
    word.gsub(/[^a-zA-Z0-9]/,'')
}

    # Matching
    dictionary.each do |word|
    hash[word] = 0
    new_array.each do |this_word|
        if this_word[0..-1].index(word) != nil
            hash[word] += 1
        end
    end
end
#returning the complete hash
hash

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)


