import 'package:flutter/cupertino.dart';
import 'package:flutter_template/core/init/navigation/INavigationService.dart';

class NavigationService implements INavigationService {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final removeAllOldRoutes = (Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage(String path, Object object) async {
    await navigatorKey.currentState?.pushNamed(path, arguments: object);
  }

  @override
  Future<void> navigateToPageClear(String path, Object object) async {
    await navigatorKey.currentState?.pushNamedAndRemoveUntil(path, removeAllOldRoutes ,arguments: object);
  }
}