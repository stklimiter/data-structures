
type 'a bankers_queue   = {front: 'a list; frontSize : int; rear: 'a list; rearSize: int}


let from_list l         = {front = (List.rev l); frontSize = (List.length l); rear = []; rearSize = 0}

let check q             = if q.frontSize < q.rearSize
                          then {front = ( q.front @ (List.rev q.rear) ); frontSize = q.rearSize + q.frontSize; rear = []; rearSize = 0}
                          else q

let enqueue e q         = ({q with rear = [e] @ q.rear; rearSize = q.rearSize + 1}) |> check

let dequeue q           = match q.front with
                            | [] -> (None ,q)
                            | head::tail -> ( Some (head), {q with front = tail; frontSize = q.frontSize - 1} |> check)
