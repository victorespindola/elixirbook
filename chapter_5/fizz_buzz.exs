IO.puts "Exercise Functions-2"
fizz_buzz = fn 
  0,0,_ -> IO.puts "FizzBuzz"
  0,_,_ -> IO.puts "Fizz"
  _,0,_ -> IO.puts "Buzz"
  _,_,x -> IO.puts x
end


fizz_buzz.(0,0,3)
fizz_buzz.(0,2,3)
fizz_buzz.(1,0,2)
fizz_buzz.(3,4,5)

IO.puts "------------------------------------------------"
IO.puts "Exercise Functions-3"

rem_fizz = fn n -> fizz_buzz.(rem(n,3), rem(n,5), n) end
Enum.map 10..16, rem_fizz
