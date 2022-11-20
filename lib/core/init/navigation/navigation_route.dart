import 'package:flutter/material.dart';
import 'package:flutter_template/core/components/card/navigation_notfound_card.dart';
import 'package:flutter_template/core/constants/navigation/navigation_constants.dart';
import 'package:flutter_template/view/example/view/example_view.dart';

class NavigationRoute {
  // takes view name from constants as argument and navigates to the matching view
  Route<dynamic> generateRoute(RouteSettings args) {
    switch(args.name) {
      case NavigationConstants.EXAMPLE_VIEW:
        return plainNavigate(ExampleView());
      default:
        return MaterialPageRoute(builder: (context) => NavigationNotFoundCard());
    }

}

// navigates the normal way
MaterialPageRoute plainNavigate(Widget widget) {
  return MaterialPageRoute(builder: (context) => widget);
}

//navigates with an animation or in some other custom way
MaterialPageRoute animatedNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }

}