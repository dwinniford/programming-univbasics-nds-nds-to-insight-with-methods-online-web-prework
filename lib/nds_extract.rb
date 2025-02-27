require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  outer_index = 0
  while outer_index < nds.count do
    director_data = nds[outer_index]
    result[nds[outer_index][:name]] = gross_for_director(director_data)
    outer_index += 1 
  end 
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  inner_index = 0 
    worldwide_grosses = 0 
    while inner_index < director_data[:movies].count do 
      worldwide_grosses += director_data[:movies][inner_index][:worldwide_gross]
      inner_index += 1 
    end 
    worldwide_grosses
#    result[director_data][:name] = worldwide_grosses
end
