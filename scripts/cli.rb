require 'optparse'

options = {}
OptionsParser.new do |opts|
    opts.banner = 'Usage: hc-server [options]'

    opts.on('-t', '--target', 'Target infrastructure path. Defaults to CWD.') { |v| options[:target_path] = v || Dir.pwd }
end.parse!

command = ARGV.pop

puts "Target: #{options[:target]}"
puts "Command: #{command}"
