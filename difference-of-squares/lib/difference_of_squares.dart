class DifferenceOfSquares {
  int differenceOfSquares(int number) => squareOfSum(number) - sumOfSquares(number);

  int squareOfSum(int number) => _square(_toList(number).reduce(_sum));
  int sumOfSquares(int number) => _toList(number).map(_square).reduce(_sum);

  Iterable<int> _toList(int number) => Iterable.generate(number, (i) => i + 1);
  int _sum(int left, int right) => left + right;
  int _square(int value) => value * value;
}
