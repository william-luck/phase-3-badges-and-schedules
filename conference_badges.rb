# Write your code here.

require "pry"

def badge_maker(string)
    "Hello, my name is #{string}."
end

def batch_badge_creator(names)
    names.map {|name| badge_maker(name)}
end

def assign_rooms(speakers) 
    speakers.map.with_index {|name, index| "Hello, #{name}! You'll be assigned to room #{index + 1}!" }
end

def printer(speakers)
    batch_badge_creator(speakers).each {|badge| puts badge}
    assign_rooms(speakers).each {|assignment| puts assignment}
end

binding.pry