class PascalsTriangle {
  List<List<int>> rows(int count) {
    List<List<int>> answer = [];

    for (int i = 0; i < count; i++) {
      if (i == 0) {
        answer.add([1]);
        continue;
      }
      if (i == 1) {
        answer.add([1, 1]);
        continue;
      }
      answer.add(createRow(answer[i - 1]));
    }
    return answer;
  }

  List<int> createRow(List<int> before) {
    List<int> row = [];
    for (int i = 0; i < before.length + 1; i++) {
      if (i == 0) {
        row.add(1);
        continue;
      }
      if (i == before.length) {
        row.add(1);
        continue;
      }
      row.add(before[i - 1] + before[i]);
    }

    return row;
  }
}
