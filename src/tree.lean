namespace my_tree

inductive tree (α : Type) : Type
| empty {} : tree 
| node : α  → tree → tree → tree

def sum_node {α : Type} : tree α → ℕ 
| tree.empty := 0 
| (tree.node n t1 t2) := (1 + (sum_node t1) + (sum_node t2))

def tree_map {α β : Type} : (α → β) → tree α → tree β 
| f tree.empty := tree.empty
| f (tree.node n t1 t2) := 
        (tree.node 
            (f n) 
            (tree_map f t1) 
            (tree_map f t2))


def longest_branch {α : Type} : tree α → ℕ 
| tree.empty := 0
| (tree.node n t1 t2) := 1 + (max 
                            (longest_branch t1) 
                            (longest_branch t2))

def is_in {α : Type} [decidable_eq α]: tree α → α → bool
| tree.empty x := ff
| (tree.node n t1 t2) x := 
    if (n = x) then tt
    else if (is_in t1 x) then tt
    else if (is_in t2 x) then tt
    else ff

end my_tree