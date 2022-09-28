import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';

/// [BasePageViewModel] is a concreate class that extends the [BaseViewModel] (from stacked package.) to have its functionalities available for every view model that extends it.
///
/// Every View Model that extends [BasePageViewModel]  will have the functionalities of [BaseViewModel] also.
///
/// You can add desired functionalities or business logic that is going to be needed in the entire app like analytics_service, app_navigation_service here then it will be available to every view model that extends it.
///
abstract class BasePageViewModel extends BaseViewModel {
  bool _initialized = false;

  final NavigationService _navigationService = locator<NavigationService>();

  NavigationService get navigationService => _navigationService;

  @protected
  set initialised(value) => _initialized = value;

  @override
  bool get initialised => _initialized;

  Future<void> initailize() async {
    notifyListeners();
  }
}
