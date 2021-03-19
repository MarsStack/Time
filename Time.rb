def my_min_phase2(arr)
    least = arr.first # O1

    arr.each_with_index do |ele, i| #On
        if least > arr[i]           #O1 
            least = arr[i]          #O1
        end
    end

    least # 1 + n * 1 * 1 => n
end

def my_min_phase1(arr)
    

   arr.each_with_index do |el1, i1| # O(n)
    min = true # O1
    
    arr.each_with_index do |el2, i2| #On
      next if i1 == i2          # O1
      min = false if el2 < el1  #O1
    end
    
    return el1 if min #O1
  end

end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
my_min_phase2(list)  # =>  O(n)
my_min_phase1(list)  # =>  O(n^2)

def largest_contiguous_subsum(arr)
    subarrs = []

    (0...arr.length).each do |i1|
        (i1...arr.length).each do |i2|
            subarrs << arr[i1..i2]
        end
    end
    
    sums = []
    subarrs.each do |sub|
        sums << sub.sum
    end
    sums.max
end

list2 = [5, 3, -7]
p largest_contiguous_subsum(list2) # => 8

## possible sub-sums
#[5]           # => 5
#[5, 3]        # => 8 --> we want this one
#[5, 3, -7]    # => 1
#[3]           # => 3
#[3, -7]       # => -4
#[-7]          # => -7

list3 = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list3) # => 8 (from [7, -6, 7])

list4 = [-5, -1, -3]
p largest_contiguous_subsum(list4) # => -1 (from [-1])