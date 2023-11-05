# method #substrings takes a word as the first argument and
# then an array of valid substrings (your dictionary) as the second argument.
# It returns a hash listing each substring (case insensitive) that was found
# in the original string and how many times it was found.

dictionary = ["below", "below", "down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"]




def substring(word, dictionary)
  # take word
  # iterate over dictionary array
  results_hash = {}

  dictionary.each do |item|
    if item == word
      count =  dictionary.count(word)
      results_hash.store(word, count)
    end
  end
  p  results_hash
  # if the word parameter matches with any word within the dictionary (i.e dot.match?),
  # add that word as a key to hash with the value displaying the number of times the
  # word appeared in the dictionary array.
end

substring("below", dictionary)
