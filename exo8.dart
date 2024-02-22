// a program in dart that reads csv file and print it’s content.

import 'dart:io';

void main() {
  File file = File('file.csv');
  String fileContent = file.readAsStringSync();
  List<String> lines = fileContent.split('\n');
  print("The csv file contains :");
  for (var line in lines) {
    print(line);
  }
}
