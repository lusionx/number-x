#number-x 任意进制与10进制的双向转化


### conver

```coffee
nx = require 'number-x'
chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVTXYZ'
assert.equal nx.toStr('38', chars), 'C'
assert.equal nx.('38', chars), 'C'
```

### tool

```coffee
assert.equal nx.lpad('12321', 7, 'a'), 'aa12321'
```
