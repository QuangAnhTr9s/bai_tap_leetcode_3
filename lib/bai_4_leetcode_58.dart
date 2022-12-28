// https://leetcode.com/problems/length-of-last-word/
void main() {
  String s = "   fly me   to   the moon  ";
  print(lengthOfLastWord(s));
}

int lengthOfLastWord(String s) {
  return s.trim().split(' ').last.length;
}
