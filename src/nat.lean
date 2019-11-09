namespace my_nat 

inductive nat : Type
| zero : nat
--| succ (n' : nat) : nat
| succ : nat → nat

def dec : nat → nat
| nat.zero := nat.zero
| (nat.succ n') := n'

def add : nat → nat → nat 
| nat.zero x := x
| (nat.succ x') x := nat.succ(add x' x)

def ltb : nat → nat → bool
| nat.zero nat.zero := ff
| nat.zero (nat.succ n') := tt
| (nat.succ n') nat.zero := ff
| (nat.succ n') (nat.succ m') := (ltb n' m')


end my_nat