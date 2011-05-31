require 'eventmachine'
# Basic
EM.run do
  EM.stop
end

# Timers
EM.run do
  EM.add_timer(100) do
    puts "finished after 100 ms"
    EM.stop
  end
  puts "wait.."
end

# Next Tick
EM.run do
  EM.next_tick do
    puts 2
    EM.stop
  end
  puts 1
end

# No-Loop
EM.run  do
  EM.add_timer(100) do
    puts "finished after 10000 ms"
    EM.stop
  end
  1.upto(10000) do
    sleep 1 # some processing
  end
end