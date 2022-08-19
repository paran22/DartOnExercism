class WordCount {
  Map<String, int> countWords(String phrase) {
    RegExp exp = RegExp('([a-z0-9]+\'[a-z0-9]+)|[a-z0-9]+');
    Iterable<String> words = exp.allMatches(phrase.toLowerCase()).map((x) => x[0]!);
    Map<String, int> wordCount = {};
    for (String word in words) {
      if (!wordCount.containsKey(word)) {
        wordCount[word] = 1;
      } else {
        wordCount[word] = wordCount[word]! + 1;
      }
    }
    return wordCount;
   }
}
