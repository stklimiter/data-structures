
(** bankersQueu, O(1) for append (mostely), last and prepend, O(n) for concat, first, insert, nth.
    OCaml list is a singly linked list.
    Two lazy sinlgy linked list, reverse rear and append to the front if front is smaller than the rear list*)
type 'a bankers_queue = {front: 'a list; frontSize : int; rear: 'a list; rearSize: int}

(** [from_list lst] Converts any list into a bankers_queue containing the same elements in the same order *)
val from_list: 'a list -> 'a bankers_queue

(** [check bankers_queue] checks if the rear of the bankers_queue is bigger, if so, reverse and append to the front of a
new bankers_queue. If not, return bankers_queue *)
val check: 'a bankers_queue -> 'a bankers_queue

(** [enqueue 'a bankers_queue] adds 'a to the back of the queue *)
val enqueue: 'a -> 'a bankers_queue -> 'a bankers_queue

(* [dequeue bankers_queue] tries to return the first value in the stack. Returns a (Maybe, queue), where the
 queue is inserted bankers_queue, but without the first element (if any) *)
val dequeue: 'a bankers_queue  -> ('a option * 'a bankers_queue)