fib = (num) ->
  if n == 1 or n == 0
    console.log n
  else
    fib(n-1) + fib(n-2)

fib 5