
    type 'a vector =
              | Root of 'a list
              | Tail of 'a vector list
    (* For testing purposes, the default size of 32 is a bit to big to test large vectors*)
    val max_size: int ref
    val append: 't -> 't vector -> 't vector
