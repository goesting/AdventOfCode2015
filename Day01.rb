p File.read("2015/Day01.txt").chars.map{|c| c=='(' ? 1 : -1}.sum
cum=0
p File.read("2015/Day01.txt").chars.each_with_index{|c,i| 
  cum += (c=='(' ? 1 : -1)
  if cum < 0
    p i
    break
  end
}
