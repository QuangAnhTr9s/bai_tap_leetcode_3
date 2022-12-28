// https://leetcode.com/problems/reverse-words-in-a-string-iii/description/
void main(){
  String s = "Let's take LeetCode contest";
  print(reverseWords(s));
  print(s.split(' '));
}
String reverseWords(String s) {
  List<String> list = s.split(' ');
  List<String> result = [];
  list.forEach((element) {
    result.add(element.split('').reversed.join());
  });
    return result.join(' ');
}