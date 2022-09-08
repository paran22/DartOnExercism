class Bob {
  String response(String question) {
    question = _removeSpaceAndDigit(question);

    if (_isNoWord(question)) return 'Fine. Be that way!';
    if (_isQuestion(question) && _isYelling(question)) return "Calm down, I know what I'm doing!";
    if (_isQuestion(question)) return 'Sure.';
    if (_isYelling(question)) return 'Whoa, chill out!';

    return 'Whatever.';
  }

  bool _isQuestion(String question) => question.endsWith('?');
  bool _isYelling(String question) => !question.contains(RegExp('[a-z]')) && question.contains(RegExp('[A-Z]'));
  bool _isNoWord(String question) => question.isEmpty;
  String _removeSpaceAndDigit(String question) => question.trim().replaceAll(RegExp('[0-9]'), '');
}

