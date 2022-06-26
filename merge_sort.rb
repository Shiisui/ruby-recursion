$steps = 1
def merge(b, c, a, steps)
    steps += 1
    return a if steps > 100
    i_b = 0
    i_c = 0 
    i_a = 0
    blen = b.length 
    clen = c.length 
    keep_going = true
    while keep_going
        if (i_b == blen || i_c == clen)
            keep_going = false
        end
        while i_b != blen && i_c != clen  
            if b[i_b] < c[i_c] 
                a[i_a] = b[i_b]
                i_b += 1
            else
                a[i_a] = c[i_c]
                i_c += 1
            end
            i_a += 1
            if i_b == blen 
                a[i_a..blen+clen] = c[i_c..clen]
            else 
                a[i_a..blen+clen] = b[i_b..blen]
            end
            
        end
        
    end
    
    
end

def merge_sort(array_a, steps, array_b=[], array_c=[]) 
    steps += 1
    $steps += 1
    return array_a if array_a.length < 2 || steps >= 200
    array_a.length % 2 == 0 ? divisor = array_a.length / 2 : divisor = array_a.length / 2 + 1
    array_b = array_a[0..divisor-1]
    array_c = array_a[divisor..] 
    merge_sort(array_b, steps)
    merge_sort(array_c, steps)
    merge(array_b, array_c, array_a, 0) 
    array_a
end
debut = [3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6]
fin = merge_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6], 0)
puts "Start: \n#{debut}"
puts "End: \n#{fin}"

puts "Reps: #{$steps}"

