abstract class ICounter {
  int get counter;

  /// Increments the counter value by [+1].
  void increment({int? value});

  /// Decrements the counter value by [-1].
  void decrement({int? value});
}
