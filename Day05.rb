inp=File.read("2015/Day05.txt").split("\n")
puts inp.select{|w|
  w.count("aeiou") > 2 &&
  w.chars.each_cons(2).map{_1.uniq.size}.any?{|x| x<2} &&
  (w.chars.each_cons(2).map(&:join) & ['ab','cd','pq','xy']).size == 0
}.size

puts inp.select{|w|
  /(.).\1/ === w &&
  /(..).*\1/ === w
}.size
