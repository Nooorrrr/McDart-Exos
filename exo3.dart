//Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.

class Laptop {
  String? id;
  String? name;
  int? ram;

  Laptop(this.id, this.name, this.ram);

  void displayLaptopInfo() {
    print("The laptop's ID : $id");
    print("The laptops name is : $name");
    print("The laptops ram capacity is : $ram GB");
  }
}

void main() {
  Laptop laptop1 = Laptop("738EJF", "ACER", 16);
  Laptop laptop2 = Laptop("BN53GF", "MAC", 32);
  Laptop laptop3 = Laptop("90JEL23", "CHROME BOOK", 8);
  laptop1.displayLaptopInfo();
  laptop2.displayLaptopInfo();
  laptop3.displayLaptopInfo();
}
