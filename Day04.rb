require 'digest'
md5 = Digest::MD5.new
hex = 'peepeepoopoo'
x=1
while(!hex.start_with?('000000'))
  str = File.read("2015/Day04.txt") + x.to_s
  md5.reset
  md5 << str
  hex = md5.hexdigest
  x+=1
  #p hex
  p x if x%100000 == 0
end
puts x-1
