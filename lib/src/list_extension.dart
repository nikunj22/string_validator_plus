//Check if a List is Empty:
extension ListIsEmptyExtension<T> on List<T> {
  // The extension getter 'isEmptyList' is added to the 'List' class.
  // It provides a convenient way to check if a list is empty.

  bool get isEmptyList => isEmpty;
// The 'get' keyword defines a getter method that returns a boolean value.

// The getter simply returns the result of the 'isEmpty' property of the list.
// If the list is empty, it returns true, otherwise, it returns false.
}

//Remove Duplicates from a List:
extension ListRemoveDuplicatesExtension<T> on List<T> {
  // The extension method 'removeDuplicates' is added to the 'List' class.
  // It removes duplicate elements from the list and returns a new list with unique elements.

  List<T> removeDuplicates() => toSet().toList();
// The method definition begins with the 'List<T>' return type, indicating that
// this method will return a new list with unique elements of type 'T'.

// The 'toSet' method is used to convert the list into a set, which automatically removes duplicates.
// The 'toList' method is used to convert the set back into a list with unique elements.
}

//Shuffle the Elements of a List:
extension ListShuffleExtension<T> on List<T> {
  // The extension method 'shuffle' is added to the 'List' class.
  // It shuffles the elements of the list randomly and returns a new shuffled list.

  List shuffle() {
    // The method definition begins with the 'List' return type, indicating that
    // this method will return a new list with the elements shuffled.

    var list = List.from(this);
    // A new list 'list' is created by copying all elements from the original list using 'List.from'.

    list.shuffle();
    // The 'shuffle' method is called on the new list, which randomly reorders the elements.

    return list;
    // The shuffled list is returned.
  }
}
