# Simple, given a string of words, return the length of the shortest word(s).
#
# String will never be empty and you do not need to account for different data types.
def find_short(s)
  words = s.split(" ")

  words.sort_by!(&:length)

  l = words[0].length

  return l # l: length of the shortest word
end
