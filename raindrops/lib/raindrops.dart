class Raindrops {
  String convert(int number) {
    StringBuffer sound = StringBuffer();

    if (number % 3 == 0) sound.write('Pling');
    if (number % 5 == 0) sound.write('Plang');
    if (number % 7 == 0) sound.write('Plong');
    if (sound.isEmpty) sound.write(number.toString());

    return sound.toString();
  }

}
