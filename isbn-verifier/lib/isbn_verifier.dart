bool isValid(String isbn) {
  if (isbn.contains(RegExp('[A-Wa-w]|[Y-Zy-z]'))) return false;
  if (isbn.contains('X') && isbn.indexOf('X') != isbn.length - 1) return false;

  List<String> isbnList = isbn.replaceAll(RegExp('[-]'), '').split('');
  if (isbnList.length != 10) return false;

  int sum = formulate(isbnList);

  return sum % 11 == 0;
}

int formulate(List<String> isbnList) {
  int sum = 0;
  for (int i = 0; i < isbnList.length; i++) {
    int num = isbnList[i] == 'X' ? 10 : int.parse(isbnList[i]);
    sum += num * (10 - i);
  }
  return sum;
}



