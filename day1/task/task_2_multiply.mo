import Int "mo:base/Int";
actor {
  public query func multiplyInt(n : Int, m : Int) : async Int{
    return n*m;
  };
}