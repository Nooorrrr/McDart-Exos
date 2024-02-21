//a function that accepts a nullable int parameter and returns 0 if the value is null using null coalescing operator ??.

int intMaybeNull(int? number) {
  return number ?? 0;
}

void main() {
  int? number;
  print(intMaybeNull(7));
  print(intMaybeNull(number));
}
