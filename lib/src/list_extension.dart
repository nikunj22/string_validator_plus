/// Extension for checking if a list is empty.
extension ListIsEmptyExtension<T> on List<T> {
  /// Checks if this list is empty.
  ///
  /// Returns `true` if this list is empty, and `false` otherwise.
  ///
  /// This getter simply returns the result of the 'isEmpty' property of the list.
  bool get isEmptyList => isEmpty;
// The 'get' keyword defines a getter method that returns a boolean value.
// If the list is empty, it returns true, otherwise, it returns false.
}

/// Extension for removing duplicates from a list.
extension ListRemoveDuplicatesExtension<T> on List<T> {
  /// Removes duplicate elements from this list.
  ///
  /// Returns a new list containing only the unique elements in the same order as they appear in this list.
  ///
  /// This method uses the 'toSet' method to convert the list into a set, which automatically removes duplicates.
  /// Then, it uses the 'toList' method to convert the set back into a list with unique elements.
  List<T> removeDuplicates() => toSet().toList();
// The method definition begins with the 'List<T>' return type, indicating that
// this method will return a new list with unique elements of type 'T'.
}

/// Extension for shuffling the elements of a list.
extension ListShuffleExtension<T> on List<T> {
  /// Shuffles the elements of this list randomly.
  ///
  /// Returns a new list with the elements randomly reordered.
  ///
  /// This method creates a new list 'list' by copying all elements from this list using 'List.from'.
  /// Then, it calls the 'shuffle' method on the new list, which randomly reorders the elements.
  List shuffle() {
    var list = List.from(this);
    // A new list 'list' is created by copying all elements from the original list using 'List.from'.

    list.shuffle();
    // The 'shuffle' method is called on the new list, which randomly reorders the elements.

    return list;
    // The shuffled list is returned.
  }
}
