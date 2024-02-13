def substrings(string, dictionary)
    dictionary.map! {|vocab| vocab.downcase}
    string_list = string.downcase.split
    
    substring = []
    string_list.each do |string|
        dictionary.each do |vocab|
            substring.push(vocab) if string.include?(vocab)
        end
    end

    substring.sort.tally
end