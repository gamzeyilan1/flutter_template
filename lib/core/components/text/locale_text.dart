import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/extension/string_extension.dart';

// Text widget with localization
class LocaleText extends StatelessWidget {
  final String value;
  const LocaleText({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value.locale);
  }
}
