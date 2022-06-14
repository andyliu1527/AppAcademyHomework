require 'byebug'
def sum_to(n)
    return 1 if n == 1
    n + sum_to(n-1)
end

p sum_to(5) # => 15

def add_numbers(num_arrays)
    return 0 if num_arrays.length == 0
    num_arrays.shift + add_numbers(num_arrays)
end

p add_numbers([-80,34,7]) # => returns -39

def gamma_fnc(num)
    return 1 if num == 1
    (num - 1) * gamma_fnc(num-1)
end

p gamma_fnc(4) # => returns 6

def ice_cream_shop(flavors, favorite_flavor)
    return true if flavors.shift == favorite_flavor
    return false if flavors.length == 0
    ice_cream_shop(flavors, favorite_flavor)
end

p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true

def reverse(string)
    return string if string.length == 1
    string[-1] + reverse(string.chop)
end

p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"