def fibs(num)
  if num == 1
    return [0]
  elsif num == 2
    return [0, 1]
  end
  arr = [0, 1]
  for i in 3..num
    arr.push(arr[i-2]+arr[i-3])
  end
  arr
end
def fibs_recur(num)
  if num == 1
    return [0]
  elsif num == 2
    return [0, 1]
  end
  arr_before = fibs_recur(num - 1)
  return arr_before.push(arr_before[-1]+arr_before[-2])
end

def merge_sort(arr)
  if arr.length == 1 || arr.length == 0
    return arr
  end
  left_arr = merge_sort(arr.take(arr.length/2))
  right_arr = merge_sort(arr.drop(arr.length/2))
  res = []
  while left_arr.length != 0 && right_arr.length != 0
    if left_arr[0] <= right_arr[0]
      res.push(left_arr[0])
      left_arr.shift
    else
      res.push(right_arr[0])
      right_arr.shift
    end
  end
  if(left_arr.length > 0)
    res.concat(left_arr)
  else
    res.concat(right_arr)
  end
  res
end
#p fibs(8)
#p fibs_recur(8)
p merge_sort([3,4,2,1])
