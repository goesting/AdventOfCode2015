visited = {}
x=y=0
visited[[x,y]] = 1

File.read("2015/Day03.txt").chars{|c| 
case c
when ?^
  y+=1
when ?v
  y-=1
when ?<
  x-=1
when ?>
  x+=1
end
visited[[x,y]] ||= 0
visited[[x,y]] +=1
}
p visited.size

#Part2
visited = {}
x=y=0
xr=yr=0
visited[[x,y]] = 1
robomove=false
File.read("2015/Day03.txt").chars{|c| 
case c
when ?^
  y+=1 if !robomove
  yr+=1 if robomove
when ?v
  y-=1 if !robomove
  yr-=1 if robomove
when ?<
  x-=1 if !robomove
  xr-=1 if robomove
when ?>
  x+=1 if !robomove
  xr+=1 if robomove
end
xx = robomove ? xr : x
yy = robomove ? yr : y
visited[[xx,yy]] ||= 0
visited[[xx,yy]] +=1
robomove = !robomove
}
p visited.size
