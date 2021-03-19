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
p my_min_phase2(list)  # =>  O(n)
p my_min_phase1(list)  # =>  O(n^2)

