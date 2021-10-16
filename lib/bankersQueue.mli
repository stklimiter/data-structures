
(** bankersQueu, O(1) for append (mostely), last and prepend, O(n) for concat, first, insert, nth.
    OCaml list is a singly linked list.
    Two lazy sinlgy linked list, reverse rear and append to the front if front is smaller than the rear list*)
type 'a bankers_queue = {front: 'a list; frontSize : int; rear: 'a list; rearSize: int}

(** Converts any list of type 'a, into a bankersQueue of type 'a*)
val from_list: 'a list -> 'a bankers_queue

(** check [bankers_queue] checks if the back of the bankers_queue is bigger, if so, reverse and append to the front. If not, return queue *)
val check: 'a bankers_queue -> 'a bankers_queue

(** enqueue ['a bankers_queue] adds an 'a to the back of the queue *)
val enqueue: 'a -> 'a bankers_queue -> 'a bankers_queue

(*val empty: 'a bankers_queue*)