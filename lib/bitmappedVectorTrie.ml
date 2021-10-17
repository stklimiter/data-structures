
  let max_size = ref 32

  type 'a vector =
            | Root of 'a list
            | Tail of 'a vector list

  let add t lst = if (List.length lst) = max_size.contents
                            then Tail([Root([t]);Root(lst)])
                            else Root([t] @ lst)

  let rec append t v = match v with
                            | Root (list) -> add t list
                            | Tail ([]) -> failwith "something went wrong"
                            | Tail (first::tail) ->   Tail([append t first] @ tail)





