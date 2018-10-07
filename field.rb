count = [ARGV[0].to_i, 1].max
arr = Array.new

for x in 1..4 do
  arr[x-1] = Array.new
  File.open("#{x-1}.txt", "r").each_line do |line|
    arr[x-1].push(line.strip)
  end
end

for i in 1..count do
  str = ""
  for word in arr do
    str += word.sample + " "
  end
  puts str
end
