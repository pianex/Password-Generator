int twoDigits(int number) {
  int result = number;
  if (number > 99) {
    result = number % 100;
  }
  if (result < 10) {
    result = result + 10;
  }
  return result;
}

int threeDigits(int number) {
  int result = number;
  if (number > 999) {
    result = number % 1000;
  }
  if (result < 100) {
    result = result + 100;
  }
  return result;
}
