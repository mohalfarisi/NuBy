def find_palindromes(a,b)

  i = 0
  c = []
  until i == b
    a = 10 if a < 10
    a_str = a.to_s
    reverse = a_str.reverse
    if a_str == reverse
      c << a
      i += 1
    end
    a += 1
  end
  print c,"\n"
end

def find_palindromes2(a,b)

  i = 0
  c = []
  until i == b
    a = 10 if a < 10
    ax = a.to_s
    jmax = ax.size / 2

    for  j in 0..jmax
      if ax[j] != ax[-1-j]
            break
      else
        if j == jmax
          c << a
          i += 1
        end
      end
    end

    a += 1
  end
  print c,"\n"
end



find_palindromes(1,100)
