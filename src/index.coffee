# 提供任意进制到10
# 10 到任意进制
#


util  = require 'util'

to10 = (str, chars) ->
  for s in str
    throw new Error 'contains unknow char' if not chars.includes s
  str = str.split('').reverse()
  sum = 0
  for e, i in str
    j = chars.indexOf e
    sum += j * Math.pow chars.length, i
  sum


toStr = (nn, chars) ->
  ss = []
  next = nn
  while next >= chars.length
    x = next % chars.length
    #console.log 'next %d , x %d', next, x
    ss.unshift chars[x]
    next = (next-x)/chars.length
  ss.unshift chars[next]
  ss.join ''


lpad = (str, n, c) ->
  str = str.toString() if not util.isString str
  return str if str.length >= n
  cc = (c for e in [0...n-str.length])
  cc.join('') + str


module.exports = {to10, toStr, lpad}
