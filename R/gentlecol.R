gentlecol = function(n) {
  z <- c("#FFFFCC","#C7E9B4","#7FCDBB","#40B6C4","#2C7FB8","#253494")
  coord <- as.data.frame(t(col2rgb(z))/255)
  x <- seq(0, 1, length=length(z))
  r <- approxfun(x, coord$red)
  g <- approxfun(x, coord$green)
  b <- approxfun(x, coord$blue)

  x <- seq(0, 1, length = n)
  rgb(r(x), g(x), b(x))
}
