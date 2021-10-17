open OUnit2
open Lib.BitmappedVectorTrie


let tests_max_size = "test max_size" >::: [
  "test max size of 4"          >::         (fun _ -> assert_equal 4
                                                                   max_size.contents);

]

let tests_equality = "test equality" >::: [
  "empty root/empty root"       >::         (fun _ -> assert_equal true
                                                        (Root([]) = Root([])));
  "empty/Root"                  >::         (fun _ -> assert_equal false
                                                        (Root([]) = Root(['a'])));
  "Tail/Root"                   >::         (fun _ -> assert_equal false
                                                        (Tail([]) = Root([])));
  "empty tail/tail"             >::         (fun _ -> assert_equal true
                                                        (Tail([]) = Tail([])));
  "empty tail/tail"             >::         (fun _ -> assert_equal false
                                                        (Tail([]) = Tail([Root(['a'])])));
  "tail/tail"                   >::         (fun _ -> assert_equal true
                                                         (Tail([Root(['a'])]) = Tail([Root(['a'])])));
  "tail larger/tail larger"     >::         (fun _ -> assert_equal true
                                                         (Tail([Root(['a']); Tail([Root(['b'; 'c'])])]) = Tail([Root(['a']); Tail([Root(['b'; 'c'])])])));
  "tail larger/other tail"      >::         (fun _ -> assert_equal false
                                                         (Tail([Root(['a']); Tail([Root(['b'; 'c'])])]) = Tail([Root(['a']); Tail([Root(['b'; 'e'])])])));
]

let tests_append = "test append" >::: [
  "one added to empty"          >::         (fun _ -> assert_equal true (Root(['a']) =
                                                                     (append 'a' (Root([])))));
  "one added to one"            >::         (fun _ -> assert_equal true (Root(['b'; 'a']) =
                                                                   (append 'b' (Root(['a'])))));
  "one added to four"           >::         (fun _ -> assert_equal true (Tail([Root([1]); Root([2;3;4;5])])  =
                                                                    (append 1 (Root([2;3;4;5])))));
]


let set_vector_size = max_size := 4

let run_all () =    set_vector_size;
                    run_test_tt_main tests_max_size;
                    run_test_tt_main tests_equality;
                    run_test_tt_main tests_append;