import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/strings.dart';
import '../../../resources/text_styles.dart';
import '../../../ui/base_page/base_page.dart';
import '../../../ui/pages/home_page/home_page_view_model.dart';

class HomePageView extends BasePage<HomePageViewModel> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.nonReactive(
      viewModelBuilder: () => HomePageViewModel(),
      onModelReady: (model) {
        model.initailize();
      },
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: SECONDARY_COLOR,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: const [
                _Title(),
                SizedBox(height: 20),
                _CounterForm(),
                SizedBox(height: 20),
                _Buttons(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _CounterForm extends HookViewModelWidget<HomePageViewModel> {
  const _CounterForm({Key? key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(BuildContext context, HomePageViewModel model) {
    final counter = useTextEditingController();
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: counter,
        onChanged: model.updateCounter,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: const InputDecoration(hintText: "Enter a number "),
      ),
    );
  }
}

class _Title extends ViewModelWidget<HomePageViewModel> {
  const _Title({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, HomePageViewModel model) {
    return Text(
      model.title,
      style: HEADING_TEXT_STYLE,
    );
  }
}

class _Buttons extends ViewModelWidget<HomePageViewModel> {
  const _Buttons({Key? key}) : super(key: key, reactive: false);

  @override
  Widget build(
    BuildContext context,
    HomePageViewModel model,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: model.increment,
          child: const Text(PLUS_BUTTON, style: BUTTON_TEXT_STYLE),
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: model.decrement,
          child: const Text(MINUS_BUTTON_TITLE, style: BUTTON_TEXT_STYLE),
        ),
      ],
    );
  }
}
