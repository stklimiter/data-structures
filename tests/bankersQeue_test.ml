open OUnit2
open Lib.BankersQueue

let tests = "test suite for identity" >::: [
  "empty"  >::              (fun _ -> assert_equal "test" (identity ()));
]

let run_all () = run_test_tt_main tests