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
