p File.read("2015/Day02.txt").split("\n").map{|line| line.split('x').map(&:to_i).combination(2).map{_1.inject(:*)}}.sum{|x| x.min+2*x.sum}
p File.read("2015/Day02.txt").split("\n").map{|line| line.split('x').map(&:to_i).sort}.map{|a,b,c| 2*a+2*b+a*b*c}.sum
