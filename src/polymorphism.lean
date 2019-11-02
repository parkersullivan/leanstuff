namespace my_private

inductive pol_list (α  : Type) : Type
| nil {} : pol_list
| cons : α → pol_list → pol_list 

def f := @pol_list.cons ℕ 7 
def g := @pol_list.cons ℕ 11

def pol_map {α β : Type} : (α → β) → pol_list α  → pol_list β 
| f pol_list.nil := pol_list.nil
| f (pol_list.cons h t) := (pol_list.cons (f h) (pol_map f t))

def is_even : ℕ → bool
| n := n % 2 = 0



def pol_append {α : Type} : pol_list α → pol_list α → pol_list α 
| pol_list.nil l2 := l2
| (pol_list.cons h t) l2 := pol_list.cons h (pol_append t l2)


/-list reverse function, filter: takes a function alpha to bool and a list of bools and a sub list of only the elemtns that return true-/

def reverse_list {α : Type} : pol_list α → pol_list α 
| pol_list.nil := pol_list.nil
| (pol_list.cons h t) := pol_append (reverse_list t) (pol_list.cons h pol_list.nil)

def filter {α : Type} : (α → bool) → pol_list α → pol_list α 
| f pol_list.nil := pol_list.nil 
| f (pol_list.cons h t) :=  if (f h) 
                            then pol_list.cons h (filter f t) 
                            else (filter f t)

def fold {α β : Type} : (α → β → β) → β → pol_list α → β 
| f i pol_list.nil := i
| f i (pol_list.cons h t) := (f h (fold f i t))

def fold_is_even : ℕ → bool → bool 
| h r := band (is_even h) r 


end my_private



