// https://leetcode.com/problems/reverse-string/

void main() {
  List<String> s = ["h","e","l","l","o"];
  reverseString(s);
  print(s);
}
void reverseString(List<String> s) {
    for(int i = 0; i <(s.length/2); i++){
      String a = s[i];
      s[i] = s[s.length - i -1];
      s[s.length - i -1] = a;
    }
}

