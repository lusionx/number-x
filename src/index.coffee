# 提供任意进制到10
# 10 到任意进制
#


_     = require 'lodash'

to10 = (str, chars) ->
  f = _.all str, (e) -> _.contains chars, e
  throw new Error 'contains unknow char' if not f
  str = str.split('').reverse()
  sum = 0
  _.each str, (e, i) ->
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
  str = str.toString() if not _.isString str
  return str if str.length >= n
  cc = _.map [0...n-str.length], (e) -> c
  cc.join('') + str

module.exports = {to10, toStr, lpad}

