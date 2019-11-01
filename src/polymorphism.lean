namespace my_private

inductive pol_list (α  : Type) : Type
| nil : pol_list
| cons : α → pol_list → pol_list

#check pol_list

def pl0 : (pol_list nat) := pol_list.nil ℕ
def pl1 : (pol_list nat) := pol_list.cons 0 pl0

end my_private