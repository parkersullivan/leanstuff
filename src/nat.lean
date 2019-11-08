namespace my_nat 

inductive nat : Type
| zero : nat
--| succ (n' : nat) : nat
| succ : nat → nat

def dec : nat → nat
| nat.zero := nat.zero
| (nat.succ n') := n'

#eval dec nat.zero
#eval dec (nat.succ nat.zero)
#eval dec (nat.succ (nat.succ nat.zero))

def add : nat → nat → nat 
| nat.zero x := x
| (nat.succ x') x := nat.succ(add x' x)

def ltb : nat → nat → bool
| nat.zero nat.zero := ff
| nat.zero (nat.succ n') := tt
| (nat.succ n') nat.zero := ff
| (nat.succ n') (nat.succ m') := (ltb n' m')

def n0 := nat.zero 
def n1 := nat.succ n0
def n2 := nat.succ n1 
def n3 := nat.succ n2
def n4 := nat.succ n3

#eval ltb n0 n1
#eval ltb n1 n0
#eval ltb n3 n4
#eval ltb n4 n3


end my_nat

def ltb : ℕ → ℕ → bool
| 0 0 := ff
| 0 (m + 1) := tt
| (n + 1) 0 := ff
| (n + 1) (m + 1) := ltb n m

#eval ltb 4 5
#eval ltb 4 4

def my_max (n m : ℕ) : ℕ :=
if (ltb n m) 
then m 
else n

#eval (max 4 5)
#print max