# Given: an array containing hashes of names
#
# Return: a string formatted as a list of names separated by commas except for the
#  last two names, which should be separated by an ampersand.
#
# Example:
#
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'
#
# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'
#
# list([ {name: 'Bart'} ])
# # returns 'Bart'
#
# list([])
# # returns ''


def list(names)
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end
