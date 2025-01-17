//Section A
import 'dart:io';

//1.
// void main() {
//   Map<String, dynamic> person = {"name": "John", "age": 30, "isStudent": false};

//   for (var entry in person.entries) {
//     print('${entry.key}: ${entry.value}');
//   }
// }

//2.

// void main() {
//   print("Odd numbers from 1 to 20");
//   for (int i = 2; i <= 20; i += 2) {
//     print(i);
//   }
// }

//3.

// void main() {
//   List<int> numbers = [10, 20, 30, 40, 50];
//   int sum = 0;

//   for (int i = 0; i < numbers.length; i++) {
//     sum += numbers[i];
//   }

//   print('The sum is: $sum');
// }

//4.

// void main() {
//   stdout.write("Enter the number: ");
//   String? input = stdin.readLineSync();
//   int? num1 = int.tryParse(input!);

//   if (num1 == null) {
//     print("Invalid input");
//     return;
//   }

//   if (num1 % 3 == 0 && num1 % 5 == 0) {
//     print("FizzBuzz");
//   } else if (num1 % 3 == 0) {
//     print("Fizz");
//   } else if (num1 % 5 == 0) {
//     print("Buzz");
//   } else {
//     print(num1);
//   }
// }

//5.

// int findLargest(List<int> numbers) {
//   int largest = numbers[0];

//   for (int i = 1; i < numbers.length; i++) {
//     if (numbers[i] > largest) {
//       largest = numbers[i];
//     }
//   }

//   return largest;
// }

// void main() {
//   List<int> numbers = [12, 45, 7, 89, 23];

//   print("The largest number is: ${findLargest(numbers)}");
// }

//6.

// void main() {
//   for (int i = 1; i <= 4; i++) {
//     for (int j = 1; j <= i; j++) {
//       stdout.write("$i ");
//     }
//     print('');
//   }
// }

//Section B (optional)----------------------------------------------------------

//2.

// void main() {
//   List<int> numbers = [];
//   List<int> oddNumbers = [];
//   List<int> evenNumbers = [];

//   while (true) {
//     stdout.write("Enter a number (0 to stop): ");
//     String? input = stdin.readLineSync();
//     int? number = int.tryParse(input!);

//     if (number == null) {
//       print("Invalid input");
//       continue;
//     }

//     if (number == 0) {
//       break;
//     }

//     numbers.add(number);

//     if (number % 2 == 0) {
//       evenNumbers.add(number);
//     } else {
//       oddNumbers.add(number);
//     }
//   }

//   if (numbers.isNotEmpty) {
//     int greatestNumber = numbers.reduce((a, b) => a > b ? a : b);
//     print("Greatest number in the main list: $greatestNumber");
//   } else {
//     print("No numbers were entered.");
//   }

//   print("Odd numbers: $oddNumbers");
//   print("Even numbers: $evenNumbers");
// }

//3.

// void main() {
//   List<Map<String, String>> books = [];
//   print("Welcome to the Library Management System!");

//   for (;;) {
//     print("""
// Choose an option:
// 1. Add Book
// 2. Edit Book
// 3. Delete Book
// 4. Get All Books
// Enter your choice (1-4): """);

//     String? input = stdin.readLineSync();
//     int? choice = int.tryParse(input!);

//     if (choice == null || choice < 1 || choice > 4) {
//       print("Invalid choice. Please try again.");
//       continue;
//     }

//     if (choice == 1) {
//       // Add Book
//       stdout.write("Enter book title: ");
//       String title = stdin.readLineSync()!;
//       stdout.write("Enter book author: ");
//       String author = stdin.readLineSync()!;
//       books.add({"title": title, "author": author});
//       print("Book added successfully!");
//     } else if (choice == 2) {
//       // Edit Book
//       if (books.isEmpty) {
//         print("No books available to edit.");
//         continue;
//       }
//       stdout.write("Enter the book number to edit: ");
//       int? bookNumber = int.tryParse(stdin.readLineSync()!);
//       if (bookNumber == null || bookNumber < 1 || bookNumber > books.length) {
//         print("Invalid book number.");
//         continue;
//       }
//       stdout.write("Enter new book title: ");
//       String newTitle = stdin.readLineSync()!;
//       stdout.write("Enter new book author: ");
//       String newAuthor = stdin.readLineSync()!;
//       books[bookNumber - 1] = {"title": newTitle, "author": newAuthor};
//       print("Book updated successfully!");
//     } else if (choice == 3) {
//       // Delete Book
//       if (books.isEmpty) {
//         print("No books available to delete.");
//         continue;
//       }
//       stdout.write("Enter the book number to delete: ");
//       int? bookNumber = int.tryParse(stdin.readLineSync()!);
//       if (bookNumber == null || bookNumber < 1 || bookNumber > books.length) {
//         print("Invalid book number.");
//         continue;
//       }
//       books.removeAt(bookNumber - 1);
//       print("Book deleted successfully!");
//     } else if (choice == 4) {
//       // Get All Books
//       if (books.isEmpty) {
//         print("No books in the library.");
//       } else {
//         print("--- List of Books ---");
//         for (int i = 0; i < books.length; i++) {
//           print(
//               "${i + 1}. Title: ${books[i]['title']}, Author: ${books[i]['author']}");
//         }
//       }
//     }

//     // Ask if the user wants to continue
//     stdout.write("Do you want to continue? (yes/no): ");
//     String? continueChoice = stdin.readLineSync();
//     if (continueChoice?.toLowerCase() == "no") {
//       print("Thank you for using the Library Management System. Goodbye!");
//       break;
//     }
//   }
// }

//1.
// void main() {
//   int size = 9; // Define the size of the pattern
//   int mid = size ~/ 2;

//   // Upper part of the pattern
//   for (int i = 0; i <= mid; i++) {
//     for (int j = 0; j < size; j++) {
//       if (i == 0 || j == i || j == size - i - 1) {
//         stdout.write("*");
//       } else {
//         stdout.write(" ");
//       }
//     }
//     print("");
//   }

//   // Lower part of the pattern
//   for (int i = mid - 1; i >= 0; i--) {
//     for (int j = 0; j < size; j++) {
//       if (i == 0 || j == i || j == size - i - 1) {
//         stdout.write("*");
//       } else {
//         stdout.write(" ");
//       }
//     }
//     print("");
//   }
// }
