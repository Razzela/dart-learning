import 'hw_5_class.dart';
void main() {
    // 1. Книга через обычный конструктор
  Book book1 = Book('Harry Potter', 'J.K. Rowling');
  book1.rating = 8.5;
  book1.displayInfo();

  // 2. Книга через именованный конструктор
  Book book2 = Book.withRating(
    'Sherlock Holmes',
    'Arthur Conan Doyle',
    9.5,
  );

  // 3. Книга через обычный конструктор и сеттер рейтинга
  Book book3 = Book('The Hobbit', 'J.R.R. Tolkien');
  book3.rating = 8.5;

  // Создаём библиотеку
  Library cityLib = Library('City Library');

  // Добавляем книги
  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);

  // Выводим список книг
  cityLib.showBooks();

  // Вывод количество книг
  print('Total books in library: ${cityLib.booksCount}');
}