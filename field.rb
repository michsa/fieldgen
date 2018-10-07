require 'optparse'

dir = 'classic'
use_server = false
server_format = 0

OptionParser.new do |parser|
  parser.on('-s', '--server[n]') do |arg|
    use_server = true
    if arg == 'n' then server_format = 1 end
  end
  parser.on('--server-name') do
    use_server = true
    server_format = 1
  end
  parser.on('-r2') { dir = 'r2' }
end.parse!

count = [ARGV[0].to_i, 1].max
arr = Array.new

def read_file(path)
  items = Array.new
  File.open(path, "r").each_line do |line|
    items.push(line.strip)
  end
  items
end

if use_server
  servers = read_file('0.txt').map do |line|
    line.split(" ")[server_format]
  end
  arr.push servers
end

for x in 1..3 do
  arr.push read_file("#{dir}/#{x}.txt")
end

for i in 1..count do
  str = ''
  for word in arr do
    str += word.sample + ' '
  end
  puts str
end
