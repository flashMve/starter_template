import 'package:flutter/material.dart';

import 'base_page_view_model.dart';

/// [BasePage] is a class that extends the [StatelessWidget] to have its build function available for every view that extends it.
///
/// Every View that extends [BasePage] should extend a [BasePageViewModel] so it will have the functionalities of [BaseViewModel]
///
/// You can add desired data that is going to be needed in the entire app like App_Title here then it will be available to every view that extends it.
///

class BasePage<T extends BasePageViewModel> extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return T as Widget;
  }
}
