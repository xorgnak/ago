# Ago
Simple universal time.

## install
```
gem install ago
```

## usage
```
x = AGO.now
# ... some time later ...
ago = AGO[x]
ago.to_i
ago.to_s
# ... more ...
ago.to_s '%w %~w'
```
