import 'dart:io';

void main() {
  // Task 1: Design a scenario to calculate the total cost of a shopping cart:
  // • Add the prices of three products.
  // • Apply a 15% tax if the total exceeds 100 monetary units.
  // • Otherwise, add a fixed shipping fee of 5 units.

  double product1 = 40.0;
  double product2 = 30.0;
  double product3 = 35.0;

  double subtotal = product1 + product2 + product3;
  double totalCost;

  if (subtotal > 100) {
    double tax = subtotal * 0.15;
    totalCost = subtotal + tax;
    print("Subtotal: \$${subtotal}");
    print("Tax (15%): \$${tax}");
    print("Total Cost: \$${totalCost}");
  } else {
    double shipping = 5.0;
    totalCost = subtotal + shipping;
    print("Subtotal: \$${subtotal}");
    print("Shipping Fee: \$${shipping}");
    print("Total Cost: \$${totalCost}");
  }

  // Task 2: Design a compound logical expression to check user access eligibility:
  // • The user must be older than 18 and have an active subscription,
  // OR
  // • The user must have the Admin role.

  int userAge = 25;
  bool hasActiveSubscription = true;
  bool isAdmin = false;

  bool hasAccess = (userAge > 18 && hasActiveSubscription) || isAdmin;

  print("\nUser Access Eligibility:");
  print("Age: $userAge, Active Subscription: $hasActiveSubscription, Admin: $isAdmin");
  print("Has Access: $hasAccess");

  // Task 3: Use arithmetic and logical operators to verify whether a given number is:
  // • Even
  // • And divisible by 7 at the same time.

  int number = 14; // Example number

  bool isEvenAndDivisibleBy7 = (number % 2 == 0) && (number % 7 == 0);

  print("\nNumber Check:");
  print("Number: $number");
  print("Is even and divisible by 7: $isEvenAndDivisibleBy7");

  // Task 4: Perform a logical comparison between two strings entered by the user to ensure they are equal
  // regardless of letter case (case-insensitive comparison).

  print("\nEnter first string:");
  String? string1 = stdin.readLineSync();
  print("Enter second string:");
  String? string2 = stdin.readLineSync();

  if (string1 != null && string2 != null) {
    bool areEqualIgnoreCase = string1.toLowerCase() == string2.toLowerCase();
    print("Strings are equal (case-insensitive): $areEqualIgnoreCase");
  } else {
    print("Invalid input.");
  }
}