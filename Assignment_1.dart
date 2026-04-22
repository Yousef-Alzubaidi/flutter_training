
void main() {
  // Task 1: Define a variable using the late keyword to store a user profile description.
  // Then assign a value to it later in the code, and include a code comment explaining why late was chosen in this context.
  late String userProfileDescription;

  // Simulate some operations before assigning the value
  print("Initializing user profile...");

  // Assign a value to the late variable later in the code
  userProfileDescription = "This is a detailed description of the user's profile, including their interests, skills, and background.";

  // Print the profile description
  print("User Profile Description: $userProfileDescription");

  // Comment explaining why late was chosen:
  // The 'late' keyword is used here because the variable 'userProfileDescription' is declared at the beginning
  // but its value is assigned later in the code after some initialization steps. This allows the variable
  // to be non-nullable without needing to initialize it immediately, avoiding potential null checks.

  // Task 2: Create:
  // • A variable representing the application version number using const to guarantee full immutability at compile time.
  // • Another variable using final to store the login time, which is determined when the application starts running.

  const String appVersion = "1.0.0"; // Using const for compile-time constant
  final DateTime loginTime = DateTime.now(); // Using final for runtime constant

  print("Application Version: $appVersion");
  print("Login Time: $loginTime");

  // Task 3: Write code that demonstrates the fundamental difference between final and const by attempting to
  // assign the result of a function call (such as retrieving the current time) to both.
  // Identify which one accepts the assignment and which one rejects it, and explain why.

  // final can be assigned the result of a function call at runtime
  final DateTime currentTimeFinal = DateTime.now();
  print("Final current time: $currentTimeFinal");

  // const cannot be assigned the result of a function call because const requires compile-time constants.
  // The following line would cause a compile-time error:
  // const DateTime currentTimeConst = DateTime.now(); // Error: Const variables must be initialized with a constant value.

  // Instead, we can use const with a literal or a const constructor, but not with runtime values.
  const int constNumber = 42; // This works because 42 is a compile-time constant.
  print("Const number: $constNumber");

  // Explanation:
  // - final variables are evaluated at runtime and can be assigned the result of function calls or expressions.
  // - const variables must be known at compile time and cannot depend on runtime computations.
  // Therefore, final accepts the assignment of DateTime.now(), while const rejects it.
}