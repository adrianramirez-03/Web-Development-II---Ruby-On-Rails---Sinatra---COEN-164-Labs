arr =  [[:key1, "value1"], [:key2, "value2"]]

hash = arr.inject({}) do |memo, (key, value)|
    memo[key] = value
    memo
end

puts hash