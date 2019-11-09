namespace my_option

inductive pol_option (α : Type) : Type
| None : pol_option 
| Some (n : α ) : pol_option 

def op0 := pol_option.None nat
def op1 := pol_option.Some 5

#check op0

def option_in {α : Type} [decidable_eq α] : pol_option α → α → bool
| (pol_option.None α) n := ff
| (pol_option.Some x) n := (n = x)


end my_option
