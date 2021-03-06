function ends_in_3(n)
local s = tostring(n)
return "3" == s:sub(#s,#s)
end

function is_prime(n)
  if n <= 1 then return false
  elseif n == 2 or n == 3 then return true end
  for i=2, n/2 do
    if n%i == 0 then return false end
  end
  return true
end

function prime_ends_in_3(n)
  counter = 0
  i = 3
  while counter < tonumber(n) do
    if ends_in_3(i) and is_prime(i) then counter = counter+1 print(i) end
    i = i+1
  end
end


if arg[1] ~= nil then prime_ends_in_3(arg[1]) end

function for_loop(a, b, f)
  local i = a
  while i <= b do
    f(i)
    i = i+1
  end
end

for_loop(1,4,print)

function add(previous, next)
  return previous+next
end

function multiply(previous, next)
  return previous * next
end

function reduce(max, init, f)
  local result = init
  for i = 1, max do
    result = f(result, i)
  end
  return result
end

print(reduce(5,1,multiply))
