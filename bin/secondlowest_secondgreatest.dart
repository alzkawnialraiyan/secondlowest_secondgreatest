import 'dart:io';

void main(){
  final listF = <int> [];
  print("Enter the number of how many elements in the list : ");
  int n = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < n; i++) {
    int? input;
    do {
      print("input number ${i+1}: ");
      input = int.parse(stdin.readLineSync()!);
    } while (input == null);
    listF.add(input);
  }
  List<int> unsortedList = listF;
  List<int> sortedList = sorted(unsortedList);
   print("Sorted List : $sortedList");
  List<int> secondSmall = secondSmallest(sortedList);
  List<int> secondLarge = secondLargest(sortedList);
}

List<int> sorted(List<int> array){
  int n = 0;
  for (int i = 0; i < array.length; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i] >= array[j]) {
        // temporary variable
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
      }
    }
  }
  return array;
}

List<int> secondSmallest(List<int> array){
  print(array[1]);
  return array;
}

List<int> secondLargest(List<int> array){
  print(array[array.length-2]);
  return array;
}