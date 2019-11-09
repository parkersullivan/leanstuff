import ..src.list
open my_private
/-testing partially evaluation with polymorphic lists-/
#check pol_list
#check @pol_list.cons
#check @pol_list.cons ℕ 
#check @pol_list.cons ℕ 7

/-creating some list instances-/
def pl0 : (pol_list nat) := pol_list.nil 
def pl1 : (pol_list nat) := pol_list.cons 1 pl0
def pl2 : (pol_list nat) := pol_list.cons 2 pl1
def pl3 : (pol_list nat) := pol_list.cons 3 pl2

/-testing the cons function-/
#check @pol_list.cons ℕ 7 pl1

/-testing the append function-/
#reduce pol_append pl0 pl1

/-testing the reverse list function-/
#reduce pl3
#reduce reverse_list pl3
def l3 := pol_append pl2 pl2

/-testing the map function-/
#reduce l3
#reduce pol_map is_even pl1

/-testing the filter function-/
#reduce filter is_even pl3

/-testing the fold function-/
#eval fold nat.add 0 pl0 
#eval fold nat.add 0 pl1
#eval fold nat.add 0 pl2
#eval fold nat.add 0 pl3
#eval fold fold_is_even tt pl3



