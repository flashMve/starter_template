import '../interfaces/i_counter.dart';

class CounterService extends ICounter {
  int _counter = 0;

  @override
  int get counter => _counter;

  @override
  void decrement({int? value}) {
    _counter = _counter - (value ?? 1);
  }

  @override
  void increment({int? value}) {
    _counter = _counter + (value ?? 1);
  }
}
