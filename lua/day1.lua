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
