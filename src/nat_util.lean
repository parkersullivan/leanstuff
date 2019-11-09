def ltb : ℕ → ℕ → bool
| 0 0 := ff
| 0 (m + 1) := tt
| (n + 1) 0 := ff
| (n + 1) (m + 1) := ltb n m

def my_max (n m : ℕ) : ℕ :=
if (ltb n m) 
then m 
else n

