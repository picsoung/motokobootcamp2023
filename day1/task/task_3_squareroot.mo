import Float "mo:base/Float";
actor {
  public query func sqrRoot(x : Int, y : Int) : async Float{
    return Float.sqrt(Float.fromInt(x)*Float.fromInt(y)+10.3);
  };
}