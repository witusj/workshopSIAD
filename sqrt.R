# From Wikipedia:
# Perhaps the first algorithm used for approximating √S is known as the Babylonian method,
# named after the Babylonians, or "Hero's method", named after the first-century Greek
# mathematician Hero of Alexandria who gave the first explicit description of the method.

g <- 2
x <- 25

while(abs(g^2 - x) > 0.000001) {
  print(g)
  g <- (g + x/g)/2
  } 
g