import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_template/app/app.locator.dart';
import 'package:starter_template/app/app.router.dart';
import 'package:starter_template/resources/strings.dart';

main() async {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      navigatorKey: StackedService.navigatorKey,
      initialRoute: Routes.splashPageView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
