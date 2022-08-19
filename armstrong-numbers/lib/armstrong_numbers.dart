import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    num _sumOfEachNum = _getSumOfEachNum(number);
    return _sumOfEachNum == number;
  }

  num _getSumOfEachNum(int number) {
    List<String> numbers = number.toString().split('');
    num _sum = 0;
    numbers.forEach((number) {
      _sum += pow(int.parse(number), numbers.length);
    });
    return _sum;
  }
}
