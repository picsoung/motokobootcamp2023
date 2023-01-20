module Book {
  public type Book = {
    title : Text;
    pages : Nat;
  };

  public func create_book(t : Text, p : Nat) : Book {
    let b : Book = {
      title= t;
      pages= p;
    };
    return b;
  };
};
