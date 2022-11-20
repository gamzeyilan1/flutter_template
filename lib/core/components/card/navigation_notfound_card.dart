import 'package:flutter/material.dart';
import '../../init/lang/locale_keys.g.dart';
import '../text/locale_text.dart';

class NavigationNotFoundCard extends StatelessWidget {
  const NavigationNotFoundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: LocaleText(value: LocaleKeys.not_found)
    );
  }
}

