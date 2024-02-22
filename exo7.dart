//Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.

class User {
  String? name;
  int? age;
  bool? isActive;

  User(String n, int a, bool bool);
}

User createUser(String n, int a) {
  return User(n, a, true);
}

void main() {
  createUser("Noor", 18);
  
}
