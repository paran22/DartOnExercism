class Anagram {
  List<String> findAnagrams(String word, List<String> list) {
    List<String> answer = [];

    for (String element in list) {
      if (word.length != element.length) continue;
      if (word.toLowerCase() == element.toLowerCase()) continue;

      List<String> words = word.toLowerCase().split('');
      for (int i = 0; i < element.length; i++) {
        if (words.contains(element[i].toLowerCase())) words.remove(element[i].toLowerCase());
      }
      if (words.length == 0 ) answer.add(element);
    }

    return answer;
  }

}
