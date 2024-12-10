inp = File.read("2015/Day06.txt").split("\n").map{|line|
  _,state,x1,y1,_,x2,y2 = line.gsub("toggle","a toggle").gsub(',',' ').split
  x1,x2,y1,y2 = [[x1,x2].sort,[y1,y2].sort].flatten.map(&:to_i)
  [state,x1,y1,x2,y2]
}
#INP example: [["toggle", 534, 948, 599, 968], ["on", 522, 730, 968, 950], ["off", 102, 229, 674, 529]]]
SIZE = 1000
bin_arr = Array.new(SIZE*SIZE,0)

inp.each{|state,x1,y1,x2,y2|
  if state == 'toggle'
    x1.upto(x2){|x| y1.upto(y2){|y| bin_arr[SIZE*x+y]= 1-bin_arr[SIZE*x+y]}}
  else
    v = state=='on' ? 1 : 0
    x1.upto(x2){|x| y1.upto(y2){|y| bin_arr[SIZE*x+y]=v}}
  end
}
p bin_arr.sum
