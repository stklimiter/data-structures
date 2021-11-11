module type Set =
    sig
        type elem

        type set

        val empty : set
(*        val insert : elem -> set -> set*)
        val member : elem -> set -> bool

        val insert : elem -> set -> set

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

module BinarySearchTree (Element: Ordered): Set   = struct
type elem = Element.t
type tree = E  | T of tree * elem * tree
type set = tree
let empty = E
(*let insert  e s  = s*)
let rec member e s = match s with
                | E -> false
                | T(l, i, r) ->
                                if (Element.lt e i) then (member e l)
                                else if (Element.lt i e) then (member e r)
                                else true

let rec insert e s = match s with
                  | E -> T(E, e, E)
                  | T(l, i, r) ->
                                if (Element.lt e i) then T((insert e l), i, r)
                                else if (Element.lt i e) then T(l, i, (insert e r))
                                else s

end
