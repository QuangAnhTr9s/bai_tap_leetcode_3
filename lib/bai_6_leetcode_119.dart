// https://leetcode.com/problems/pascals-triangle-ii/
void main() {
  int rowIndex = 5;
  print(getRow(rowIndex));
}
List<int> getRow(int rowIndex) {
  if(rowIndex == 0){
    return [1];
  }
  if(rowIndex == 1){
    return [1,1];
  }
  List<int> result = [1,1];
  for(int i=2; i <= rowIndex; i++){
    List<int> store = [...result];
    result.add(1);
    for(int j = 1; j < i; j++){
      result[j] = store[j-1] + store[j];
    }
  }
  return result;
}

