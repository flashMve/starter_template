import 'dart:async';

import '../../../app/app.locator.dart';
import '../../../ui/base_page/base_page_view_model.dart';

import '../../../services/counter_service.dart';

class HomePageViewModel extends BasePageViewModel {
  final CounterService _counterService = locator<CounterService>();
  int? newCount;

  String get title => "Counter $counter";

  int get counter => _counterService.counter;

  @override
  Future<void> initailize() async {}

  void updateCounter(String value) {
    newCount = value.isEmpty ? null : int.parse(value);
    notifyListeners();
  }

  void increment() {
    _counterService.increment(value: newCount);
    notifyListeners();
  }

  void decrement() {
    _counterService.decrement(value: newCount);
    notifyListeners();
  }
}
