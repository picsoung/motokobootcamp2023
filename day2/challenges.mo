import Array "mo:base/Array";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

actor {
  public query func average_array(array : [Int]) : async Int {
    var sum : Int = 0;
    for (value in array.vals()) {
      sum := sum + value;
    };
    return sum / array.size();
  };

  public query func count_character(t : Text, c : Char) : async Nat {
    var counter : Nat = 0;
    for (value in t.chars()) {
      if (value == c) {
        counter := counter + 1;
      };
    };
    return counter;
  };

  public query func factorial(n : Nat) : async Nat {
    var result : Nat = 1;
    for (i in Iter.range(1, n)) {
      result *= i;
    };
    return result;
  };

  public query func number_of_words(t : Text) : async Nat {
    let splitted = Text.split(t, #char ' ');
    let array = Iter.toArray<Text>(splitted);
    return array.size();
  };

  public query func find_duplicates(a : [Nat]) : async [Nat] {
    var duplicates : [Nat] = [];
    let length = a.size();
    for(i in Iter.range(0, length-1)) {
      for(j in Iter.range(i+1, length-1)) {
        if(a[i]==a[j]){
          let existing: ?Nat = Array.find<Nat>(duplicates, func (x : Nat):Bool {x == a[i]});

          switch (existing) {
              case (null) {
                duplicates:= Array.append<Nat>(duplicates,[a[i]])
              };
              case(?_){
                
              }
          }
        }
      };
    };
    return duplicates;
  };

  public query func convert_to_binary(n : Nat) : async Text {
    var num: Nat = n;
    var binary : Text = Nat.toText(num % 2);
    while (num > 1) {
        num := (num / 2);
        binary :=  Nat.toText(num % 2) # (binary); //1100100 
    };
    return binary;
  };
 
}