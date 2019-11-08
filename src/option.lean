namespace my_option

inductive pol_option (α : Type) : Type
| None : pol_option 
| Some (n : α ) : pol_option 

def op0 := pol_option.None nat
def op1 := pol_option.Some 5

#check op0

end my_option
