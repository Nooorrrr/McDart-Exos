//Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.

void createUser(String name, int age, bool isActive) {
  isActive ?? true;
  print(
      "User created with:\nName: $name\nAge: $age\nActivity Status: $isActive");
}

void main() {
  createUser("Noor", 18,true );
}
