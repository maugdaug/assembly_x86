.data
wcount dq 0
hello db'Hello World!'
.code
start:
  arg -11
  invoke GetStdHandle
  arg 0, addr wcount, 27
  arg adr hello,rax
  invoke WriteFile
  xor rax, rax
  ret
