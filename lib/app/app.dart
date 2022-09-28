import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_template/services/counter_service.dart';

import '../ui/pages/home_page/home_page_view.dart';
import '../ui/pages/splash_page/splash_page_view.dart';

@StackedApp(routes: [
  AdaptiveRoute(page: SplashPageView, initial: true),
  AdaptiveRoute(page: HomePageView)
], dependencies: [
  // Lazy singletons must be registered here
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: CounterService),
])
class $AppRouter {}
