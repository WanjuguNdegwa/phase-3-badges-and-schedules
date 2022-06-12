# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

badge_maker("Arel")

def batch_badge_creator(names)
  names.map do |name| 
    badge_maker(name)
  end
end

batch_badge_creator(["Arel", "Carol"])

def assign_rooms(names)
  room_assignments = names.map.with_index do |name, index|
   "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

assign_rooms(["Arel", "Carol"])

def printer(names)
  names.each do |name| 
    puts badge_maker(name)
  end

  assign_rooms(names).each do |name| 
    puts name
  end
end
