require 'eventmachine'
=begin
EM.run do
  EM.add_timer(5) do
    puts "puts"
    EM.stop
  end
  sleep 10
  puts "puts s"
end
require 'thread'

Thread.new do
  loop do
    puts "thread"
  end
end
loop do
  puts "main"
end
t.join
=end

require 'fiber'

Fiber.new do
  loop do
    puts "fiber"
  end
end.resume

loop do
  puts "main"
end