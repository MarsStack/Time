def first_anagram?(str1, str2)
    poss_str = []
    
    (0...str1.length).each do |i|
        (0...str1.length).each do |i2|
            poss_str << str1[i..i2] unless str1[i..i2].empty?
            # poss_str << str1[0..i2].reverse
            i = 1
            str3 = str1.split.rotate(i)
            (str1.length - 1).times do 
                poss_str << str3[i..i2].join(" ") unless str3[i..i2].empty?
                i += 1
            end 
        end 
    end 
    poss_str
end 

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")


[
"gizmo"
"gizom"
"gimzo"
"gimoz"
"g"
]

