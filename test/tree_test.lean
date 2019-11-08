import ..src.tree

open my_tree

/-defining some tree instances-/
def t0 : (tree ℕ ) := @tree.empty ℕ 
def t1 : (tree ℕ) := tree.node 5 t0 t0
def t2 : (tree nat) := tree.node 2 t1 t0
def t3 : (tree nat) := tree.node 7 t0 t1
def t4 : (tree nat) := tree.node 12 t2 t1

/-testing out the sum_node function-/
#eval sum_node t0
#eval sum_node t1
#eval sum_node t2
#eval sum_node t3
#eval sum_node t4

/-testing out the tree_map function-/
#reduce tree_map (λ (n: ℕ), (n + 1)) t0
#reduce tree_map (λ (n: ℕ), (n + 1)) t1
#reduce tree_map (λ (n: ℕ), (n + 1)) t2
#reduce tree_map (λ (n: ℕ), (n + 1)) t3
#reduce tree_map (λ (n: ℕ), (n + 1)) t4

theorem five_eq_five : eq (2 + 3) 5 := 
    (eq.refl 5)

theorem zero_eq_zero : 0 = 0 := eq.refl 0

theorem zez_and_5eq5 : (0 = 0) ∧ (5 = 5) :=
    and.intro (eq.refl 0) (eq.refl 5)

theorem all_n : ∀ (n : ℕ), n = n := 
    λ (x : ℕ), (eq.refl x)