import ..src.nat

open my_nat 

/-testing the decrement function-/
#eval dec my_nat.nat.zero
#eval dec (my_nat.nat.succ my_nat.nat.zero)
#eval dec (my_nat.nat.succ (my_nat.nat.succ my_nat.nat.zero))



def n0 := my_nat.nat.zero 
def n1 := my_nat.nat.succ n0
def n2 := my_nat.nat.succ n1 
def n3 := my_nat.nat.succ n2
def n4 := my_nat.nat.succ n3

#eval ltb n0 n1
#eval ltb n1 n0
#eval ltb n3 n4
#eval ltb n4 n3