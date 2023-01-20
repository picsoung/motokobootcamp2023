import Int "mo:base/Int";
import Array "mo:base/Array";

actor {
  public query func second_maximum(array : [Int]) : async Int {
    var maximum : Int = 0;
    var sorted_arr : [Int] = Array.sort<Int>(array, Int.compare);
    maximum := sorted_arr[sorted_arr.size()-2];
    //if the second maximum is the same as the maximum, keep going in the array
    // while(maximum ==sorted_arr[sorted_arr.size()-2]){
    //   new_arr := Arra
    // };
    return maximum;
  };
  
  public query func remove_even(array : [Nat]) : async [Nat] {
    return Array.filter<Nat>(array, func x = x % 2 != 0);
  };

  func drop<T>(xs : [T], n : Nat) : [T] {
    return Array.tabulate<T>(n, func (i) = xs[i+n] );
  };
};
