def first_anagram?(str1, str2)
    poss_str = []
    
    # (0...str1.length).each do |i|
    #     (0...str1.length).each do |i2|
    #         poss_str << str1[i..i2] unless str1[i..i2].empty?
    #         # poss_str << str1[0..i2].reverse
    #         i = 1
    #         str3 = str1.split.rotate(i)
    #         (str1.length - 1).times do 
    #             poss_str << str3[i..i2].join(" ") unless str3[i..i2].empty?
    #             i += 1
    #         end 
    #     end 
    # end 
    poss_str
end 

# first_anagram?("gizmo", "sally")    #=> false
# first_anagram?("elvis", "lives")

def second_anagram?(str1, str2)
    str1.each_char.with_index do |char, i|
        if str2.index(str1[i])
            str2[str2.index(str1[i])] = ""
        end
    end
   str2.empty?
end

# O(n) * O(1) * O(1) + O(1) => O(n)
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")

def sort_anagram?(str1, str2)
    sorted1 = false
    sorted2 = false
    
   until sorted1
        sorted1 = true 

        (0...str1.length - 1).each do |i|
            case str1[i] <=> str1[i+1]
            when 1
                str1[i], str1[i+1] = str1[i+1], str1[i]
                sorted1 = false 
            end 
        end  
            
    end
    until sorted2
        sorted2 = true 

        (0...str2.length - 1).each do |i|
            case str2[i] <=> str2[i+1]
            when 1
                str2[i], str2[i+1] = str2[i+1], str2[i]
                sorted2 = false 
            end 
        end  
            
    end

    str1 == str2 
end 

# O(k) + O(n) * O(k) * O(n) + O(n) * O(k) * O(n) => O(n^2) + O(n^2) => O(n^2)
# p sort_anagram?("gizmo", "sally")    #=> false
# p sort_anagram?("elvis", "lives")

def fourth_anagram?(str1, str2)
    hash_new = Hash.new(0)

    str1.each_char do |char|
        hash_new[char] += 1
    end
    
    str2.each_char do |char|
        hash_new[char] -= 1
    end
    
    hash_new.all? { |k, v| v == 0 }
end

# O(k) + O(n) + O(n) + O(n) => O(n)
p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")
