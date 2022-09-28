import 'dart:async';
import 'dart:developer';

import 'package:starter_template/app/app.router.dart';
import 'package:starter_template/ui/base_page/base_page_view_model.dart';

class SplashPageViewModel extends BasePageViewModel {
  @override
  Future<void> initailize() async {
    Timer(
      const Duration(seconds: 3),
      () {
        log("Next Screen");
        navigationService.navigateTo(Routes.homePageView);
      },
    );
  }
}
