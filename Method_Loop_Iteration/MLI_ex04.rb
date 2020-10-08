def checkerboard(number)
  k=0
  x=[]
  y = ""

  for i in 0...number
    for j in 0...number

      if k % 2 == 0
        y += "[r]"
      else
        y += "[b]"
      end
      k += 1

    end
  x << y
  y = ""
  end
  #print x,"\n"
  puts x
end
# ---------------------------------------------------------------
def checkerboard2(number)
  k = 0
  c_board = Array.new(number){Array.new(number)}
  x = []

  for i in 0...number
    for j in 0...number

      if k % 2 == 0
        c_board[i][j] = "[r]"
      else
        c_board[i][j] = "[b]"
      end

      k += 1
    end
    x [i] = c_board[i].join()
  end

  puts x

end

checkerboard(7)
