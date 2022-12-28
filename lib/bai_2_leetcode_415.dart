// https://leetcode.com/problems/add-strings/description/
void main() {
  String num1 = "584", num2 = "18";
  print(addStrings(num1, num2));
}

String addStrings(String num1, String num2) {
  List<int> listNum1 = num1.split('').map((e) => int.parse(e)).toList();
  List<int> listNum2 = num2.split('').map((e) => int.parse(e)).toList();
  if (listNum1.length < listNum2.length) {
    int length = listNum2.length - listNum1.length - 1;
    for (int i = 0; i <= length; i++) {
      listNum1.insert(0, 0);
    }
  } else if (listNum1.length > listNum2.length) {
    int length = listNum1.length - listNum2.length - 1;
    for (int i = 0; i <= length; i++) {
      listNum2.insert(0, 0);
    }
  }
  int count = 0;
  List<int> listResult = [];
  for (int i = listNum1.length - 1; i >= 0; i--) {
    int a = listNum1[i] + listNum2[i];
    if (a > 9) {
      listResult.add((a % 10 + count));
      count = 1;
    } else {
      if ((a + count) > 9) {
        listResult.add((a+ count)%10);
        count = 1;
      } else {
        listResult.add((a + count));
        count = 0;
      }
    }
  }
  if (count == 1) {
    listResult.add(1);
  }
  return listResult.reversed.join();
}
