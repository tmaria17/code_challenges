# An isogram is a word that has no repeating letters, consecutive or
#  non-consecutive.Implement a function that determines whether a string that
#  contains only letters is an isogram. Assume the empty string is an isogram.
#  Ignore letter case.
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

#this will return true
puts is_isogram("Dermatoglyphics")

#this will return false
puts is_isogram("Aba")
