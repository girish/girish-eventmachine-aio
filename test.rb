require 'thread'

Thread.new do
  loop do
    puts "thread"
  end
end
loop do
  puts "main"
end

=begin
require 'fiber'

Fiber.new do
  loop do
    puts "fiber"
  end
end.resume

loop do
  puts "main"
end
=end