import List "mo:base/List";
import Book "./book";

actor {
  type Book = Book.Book;
  let b : Book = {
    title= "Les Miserables";
    pages= 854;
  };

  var booksList : List.List<Book> = List.nil();

  public func add_book(b: Book) : async () {
    booksList := List.push(b, booksList)
  };

  public func get_books() : async [Book]{
    return List.toArray<Book>(booksList)
  }
}