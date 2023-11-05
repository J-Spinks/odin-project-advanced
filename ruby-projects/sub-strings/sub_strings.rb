# method #substrings takes a word as the first argument and
# then an array of valid substrings (your dictionary) as the second argument.
# It returns a hash listing each substring (case insensitive) that was found
# in the original string and how many times it was found.

dictionary = ["below", "down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"]




# solution 2:
def substring(string, dictionary)
  match_hash = {}
  dictionary.each do |word|
    counts = string.downcase.scan(/(?=#{word})/).count
    if counts.positive?
      match_hash[word] = counts
    end
  end
  match_hash
end



p substring("Howdy partner, sit down! How's it going?", dictionary)


# def substrings(str, dictionary)
#   hashmap = {}
#   dictionary.each do |word|
#     counts = str.downcase.scan(/(?=#{word})/).count
#     hashmap[word] = counts if counts.positive?
#   end
#   hashmap
# end
