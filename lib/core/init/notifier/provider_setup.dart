import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_template/core/init/navigation/navigation_service.dart';
import 'package:flutter_template/core/init/notifier/theme_notifier.dart';
class ApplicationProviders {
  static List<SingleChildWidget> singleItems = []; //independent providers like Notifiers
  static List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(create: (context) => ThemeNotifier()),
    Provider.value(value: NavigationService())
  ]; //depending providers like Proxies or Streams
  static List<SingleChildWidget> uiChangesItems = []; //ui changing providers -use mobx when you can instead
}