import 'package:flutter_test/flutter_test.dart';
import 'package:starter_template/interfaces/i_counter.dart';

class MockCounter extends ICounter {
  int _counter = 0;
  @override
  int get counter => (_counter);

  @override
  void decrement({int? value}) {
    _counter = _counter - (value ?? 1);
  }

  @override
  void increment({int? value}) {
    _counter = _counter + (value ?? 1);
  }
}

main() {
  final counter = MockCounter();
  group("Increment Tests", () {
    test('Counter value should be incremented by 1', () {
      counter.increment();
      expect(counter.counter, 1);
    });

    test('Counter value should be incremented by 12', () {
      counter.increment(value: 12);
      expect(counter.counter, 13);
    });
  });

  group("Decrement Tests", () {
    test('Counter value should be decremented by 1', () {
      counter.decrement();
      expect(counter.counter, -1);
    });

    test('Counter value should be decremented by 12', () {
      counter.decrement(value: 12);
      expect(counter.counter, -13);
    });
  });
}
