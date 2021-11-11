open OUnit2
open Lib.BinarySearchTree

let tests_insert = "test suite for insert" >::: [
  "empty, checking front"        >::         (fun _ -> assert_equal E empty());
(*  "empty, checking back"         >::        (fun _ -> assert_equal 0*)
(*                                                                  (from_list []).rearSize);*)
(*  "size 1, checking front"       >::        (fun _ -> assert_equal 1*)
(*                                                                  (from_list [1]).frontSize);*)
(*  "size 1, checking back"        >::        (fun _ -> assert_equal 0*)
(*                                                                  (from_list [1]).rearSize);*)
(*  "array, checking front size"   >::        (fun _ -> assert_equal 4*)
(*                                                                  (from_list [1; 2; 3; 4;]).frontSize);*)
(*  "array, checking back size"    >::        (fun _ -> assert_equal 0*)
(*                                                                  (from_list [1; 2; 3; 4;]).rearSize);*)
(*  "array, checking front"        >::        (fun _ -> assert_equal [4; 3; 2; 1;]*)
(*                                                                  (from_list [1; 2; 3; 4;]).front);*)
(*  "array, checking back"         >::        (fun _ -> assert_equal []*)
(*                                                                  (from_list [1; 2; 3; 4;]).rear);*)
]

(*let tests_check = "test suite for check" >::: [*)
(*  "empty"                       >::     (fun _ -> assert_equal {front = []; frontSize = 0; rear = []; rearSize = 0}*)
(*                                                               (check {front = []; frontSize = 0; rear = []; rearSize = 0}));*)
(*  "only front"                  >::     (fun _ -> assert_equal {front = [1; 2; 3]; frontSize = 3; rear = []; rearSize = 0}*)
(*                                                               (check {front = [1; 2; 3]; frontSize = 3; rear = []; rearSize = 0}));*)
(*  "only rear"                   >::     (fun _ -> assert_equal {front = [1; 2; 3]; frontSize = 3; rear = []; rearSize = 0}*)
(*                                                               (check {front = []; frontSize = 0; rear = [3; 2; 1;]; rearSize = 3}));*)
(*  "equal size"                  >::     (fun _ -> assert_equal {front = [1; 2; 3]; frontSize = 3; rear = [6; 5; 4]; rearSize = 3}*)
(*                                                               (check {front = [1; 2; 3]; frontSize = 3; rear = [6; 5; 4]; rearSize = 3}));*)
(*  "front larger"                >::     (fun _ -> assert_equal {front = [0; 1; 2; 3]; frontSize = 4; rear = [6; 5; 4]; rearSize = 3}*)
(*                                                               (check {front = [0; 1; 2; 3]; frontSize = 4; rear = [6; 5; 4]; rearSize = 3}));*)
(*  "back larger"                 >::     (fun _ -> assert_equal {front = [1; 2; 3; 4; 5; 6; 7]; frontSize = 7; rear = []; rearSize = 0}*)
(*                                                               (check {front = [1; 2; 3]; frontSize = 3; rear = [7; 6; 5; 4]; rearSize = 4}));*)
(*]*)

(*let tests_enqueue = "test suite for enqueue" >::: [*)
(*  "empty"                       >::     (fun _ -> assert_equal {front = [1]; frontSize = 1; rear = []; rearSize = 0}*)
(*                                                               (enqueue 1 {front = []; frontSize = 0; rear = []; rearSize = 0}));*)
(*  "1 element front"             >::     (fun _ -> assert_equal {front = [1]; frontSize = 1; rear = [2]; rearSize = 1}*)
(*                                                               (enqueue 2 {front = [1]; frontSize = 1; rear = []; rearSize = 0}));*)
(*  "1 element front\back"        >::     (fun _ -> assert_equal {front = [1; 2; 3]; frontSize = 3; rear = []; rearSize = 0}*)
(*                                                               (enqueue 3 {front = [1]; frontSize = 1; rear = [2]; rearSize = 1}));*)
(*]*)

(*let tests_dequeue = "test suite for dequeue" >::: [*)
(*  "empty"                       >::     (fun _ -> assert_equal (None, {front = []; frontSize = 0; rear = []; rearSize = 0})*)
(*                                                               (dequeue {front = []; frontSize = 0; rear = []; rearSize = 0}));*)
(*  "1 element front"             >::     (fun _ -> assert_equal (Some 23, {front = []; frontSize = 0; rear = []; rearSize = 0})*)
(*                                                               (dequeue {front = [23]; frontSize = 1; rear = []; rearSize = 0}));*)
(*  "1 element front/back"        >::     (fun _ -> assert_equal (Some 23, {front = [24]; frontSize = 1; rear = []; rearSize = 0})*)
(*                                                               (dequeue {front = [23]; frontSize = 1; rear = [24]; rearSize = 1}));*)
(*]*)



let run_all () = run_test_tt_main tests_from_list;
(*                 run_test_tt_main tests_check;*)
(*                 run_test_tt_main tests_enqueue;*)
(*                 run_test_tt_main tests_dequeue*)