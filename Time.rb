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
    new_arr = []

    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if arr[idx1] > arr[idx2]
                new_arr << arr[idx1]     
            end
        end
    end
    new_arr & arr
end

def 

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_phase2(list)  # =>  O(n)
p my_min_phase1(list)  # =>  O(?)
hj
