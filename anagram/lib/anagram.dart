class Anagram {
  String makeKey(String word) {
    List<String> words = word.toLowerCase().split('');
    words.sort();
    return words.toString();
  }

  List<String> findAnagrams(String word, List<String> list) {
    return list
        .where((element) =>
            (makeKey(word) == makeKey(element)) &&
            (element.toLowerCase() != word.toLowerCase()))
        .toList();
  }
}
