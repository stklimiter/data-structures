module type Set =
    sig
        type elem

        type set

        val empty : set
(*        val insert : elem -> set -> set*)
        val member : elem -> set -> bool
    end

module type Ordered =
  sig
   type t
(*  Equality *)
   val eq: t -> t -> bool
(*   Lesser than*)
   val lt: t -> t -> bool
(*  Equal or lesser than *)
  end

module BinarySearchTree (Element: Ordered) : Set  = struct
type elem = Element.t
type tree = E  | T of tree * elem * tree
type set = tree

let empty = E
(*let insert  e s  = s*)
let member e s = match s
                | E -> false
                | (l, i, r) -> member (e, T(a, y, b)) = if Element.lt )

end
