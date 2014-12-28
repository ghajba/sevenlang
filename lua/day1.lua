function ends_in_3(n)
s = tostring(n)
return "3" == s:sub(#s,#s)
end
