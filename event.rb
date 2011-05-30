require 'eventmachine'

EM.run do
  EM.next_tick do
    puts 2
    EM.stop
  end
  puts 1
end


EM.run do
  EM.next_tick do
    puts 2
    EM.stop
  end
  puts 1
end