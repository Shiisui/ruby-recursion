# Iteration
def fibs(n, result=[0, 1, 1])
  if n <= 2 
      return n
  else
      i = 0
    while n-3 > i
      result << result[-1] + result[-2]
      i += 1
    end 
  end
  return result
end
# Recursion
def fibs_rec(n) 
  n <= 2 ? n-1 : fibs_rec(n-1) + fibs_rec(n-2)
end
p fibs_rec(8)
