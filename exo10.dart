// program that takes a list of strings as input, sorts the list asynchronously, and then prints the sorted list.

Future<void> sortList(List<String> l) async {
  l.sort();
}

void main() async {
  List<String> random = ["apple", "football", "alger", "keys", "box", "candy"];
  await sortList(random);
  print("the sorted list is:");
  print(random);
}
