# Conquer
def merge(left, right, sorted)
    i_left = 0; i_right = 0; i_sorted = 0
    left_len = left.length; right_len = right.length 
    unless i_left == left_len || i_right == right_len
        while i_left != left_len && i_right != right_len
            if left[i_left] < right[i_right] 
                sorted[i_sorted] = left[i_left] 
                i_left +=1 
            else
                sorted[i_sorted] = right[i_right] 
                i_right +=1
            end
            i_sorted += 1
            i_left == left_len ? 
            sorted[i_sorted..left_len+right_len] = right[i_right..right_len] : 
            sorted[i_sorted..left_len+right_len] = left[i_left..left_len]   
        end
    end
end
# Divide
def merge_sort(sorted, left=[], right=[]) 
    return sorted if sorted.length < 2 
    divisor = sorted.length / 2
    left = sorted[0..divisor-1]
    right = sorted[divisor..] 
    merge_sort(left) && merge_sort(right) && merge(left, right, sorted) 
    sorted
end
start = [3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6]
end_ = merge_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])
puts "Start: \n#{start}" + "\nEnd: \n#{end_}"
