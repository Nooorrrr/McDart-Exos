//a program thhat uses the here methode to look for names that starts with the letter a in a list

void main() {
  List<String> names = [
    'Noor',
    'L3arbi',
    'Salim',
    'Mounib',
    'Akram',
    'Minna',
    'Hiba'
  ];

  String namewithA;
  namewithA = names.where((name) => name.startsWith('A')).first;

  print("The name that starts with the letter A is : $namewithA");
}
