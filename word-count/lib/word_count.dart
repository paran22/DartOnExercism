class WordCount {
  Map<String, int> countWords(String phrase) {
    RegExp exp = RegExp('([a-z0-9]+\'[a-z0-9]+)|[a-z0-9]+');
    Iterable<String> words = exp.allMatches(phrase.toLowerCase()).map((x) => x[0]!);
    Map<String, int> _wordCount = {};
    for (String word in words) {
      if (!_wordCount.containsKey(word)) {
        _wordCount[word] = 1;
      } else {
        _wordCount[word] = _wordCount[word]! + 1;
      }
    }
    return _wordCount;
   }
}
