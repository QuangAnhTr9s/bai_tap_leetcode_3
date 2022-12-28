// https://leetcode.com/problems/goal-parser-interpretation/
void main() {
  String command = "G()(al)";
  print(interpret(command));
}
String interpret(String command) {
    String result = command.replaceAll('()', 'o').replaceAll('(al)', 'al');
    return result;
}
