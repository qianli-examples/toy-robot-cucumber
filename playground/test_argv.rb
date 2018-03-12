a = $stdin.gets.chomp
#a = ARGV
puts a + "gagagagaga"

def help_command
  loop do
    help = $stdin.gets.chomp
    puts "ahahaha this is help hahahalalal" if help = '-h' | 'help' | '--help' | '-help'
  end
  Thread.new{help_command}
end