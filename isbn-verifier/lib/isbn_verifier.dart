bool isValid(String isbn) {
  if (isbn.contains(RegExp('[A-Wa-w]|[Y-Zy-z]'))) return false;
  if (isbn.contains('X') && isbn.indexOf('X') != isbn.length - 1) return false;
  if (isbn.replaceAll('-', '').length != 10) return false;

  int sum = isbn
      .replaceAll(RegExp('[-]'), '')
      .split('')
      .asMap()
      .map((index, element) => MapEntry(index, convertToInt(element) * (10 - index)))
      .values
      .reduce((value, element) => value + element);

  return sum % 11 == 0;
}

int convertToInt(String value) {
  return value == 'X' ? 10 : int.parse(value);
}
