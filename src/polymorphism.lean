namespace my_private

inductive pol_list (α  : Type) : Type
| nil {} : pol_list
| cons : α → pol_list → pol_list 

def pl0 : (pol_list nat) := pol_list.nil 
def pl1 : (pol_list nat) := pol_list.cons 0 pl0

#check pol_list
#check @pol_list.cons
#check @pol_list.cons ℕ 
#check @pol_list.cons ℕ 7

def f := @pol_list.cons ℕ 7 
def g := @pol_list.cons ℕ 11

#check f pl1

#check @pol_list.cons ℕ 7 pl1

def pol_map {α β : Type} : (α → β) → pol_list α  → pol_list β 
| f pol_list.nil := pol_list.nil
| f (pol_list.cons h t) := (pol_list.cons (f h) (pol_map f t))

def is_even : ℕ → bool
| n := n % 2 = 0

#reduce pol_map is_even pl1

def pol_append {α : Type} : pol_list α → pol_list α → pol_list α 
| pol_list.nil l2 := l2
| (pol_list.cons h t) l2 := pol_append t (pol_list.cons h l2)

#reduce pol_append pl0 pl1

/-list reverse function, filter: takes a function alpha to bool and a list of bools and a sub list of only the elemtns that return true-/


end my_private



