import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/strings.dart';
import '../../../resources/text_styles.dart';
import '../../../ui/base_page/base_page.dart';
import '../../../ui/pages/splash_page/splash_page_view_model.dart';

class SplashPageView extends BasePage<SplashPageViewModel> {
  const SplashPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashPageViewModel>.nonReactive(
      viewModelBuilder: () => SplashPageViewModel(),
      onModelReady: (model) {
        model.initailize();
      },
      builder: (context, model, child) {
        return const Scaffold(
          backgroundColor: SECONDARY_COLOR,
          body: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                APP_TITLE,
                style: HEADING_TEXT_STYLE,
              ),
            ),
          ),
        );
      },
    );
  }
}
