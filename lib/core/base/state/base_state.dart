import 'package:flutter/material.dart';

// Creating abstract BaseState to inherit from when using StatefulWidgets
abstract class BaseState <T extends StatefulWidget> extends State <T> {
  // Function to initialize the Theme for  further use within stateful widgets
  ThemeData get themeData => Theme.of(context);

  // Functions to calculate widget size in proportion of screen size for responsive design
  double dynamicHeight(double value) => MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) => MediaQuery.of(context).size.width * value;

}