class Hamming {
  int distance(String strands1, String strands2) {
    if (!isSameLength(strands1, strands2) && (strands1.isEmpty || strands2.isEmpty)) {
      throw ArgumentError('no strand must be empty');
    }
    if (!isSameLength(strands1, strands2)) {
      throw ArgumentError('left and right strands must be of equal length');
    }

    int count = 0;
    for (int i = 0; i < strands1.length; i++) {
      if (strands1[i] != strands2[i]) {
        count++;
      }
    }
    return count;
  }

  bool isSameLength(String strands1, String strands2) => strands1.length == strands2.length;
}
