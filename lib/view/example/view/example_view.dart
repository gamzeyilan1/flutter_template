import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_template/core/base/state/base_state.dart';
import 'package:flutter_template/core/components/text/locale_text.dart';
import 'package:flutter_template/core/init/lang/locale_keys.g.dart';
import 'package:flutter_template/view/example/viewmodel/example_view_model.dart';
import '../../../core/base/view/base_view.dart';


class ExampleView extends StatefulWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  State<ExampleView> createState() => _ExampleViewState();
}

//example view that inherits from the Base View
class _ExampleViewState extends BaseState<ExampleView> {
  ExampleViewModel viewModel = new ExampleViewModel();

  @override
  Widget build(BuildContext context) {
    return BaseView<ExampleViewModel>(
        viewModel: ExampleViewModel(),
        onModelReady: (model) {
          viewModel = model;
        },
        onPagebuilder: (context,value) => LocaleText(value: LocaleKeys.home), // example use of translation keys & LocaleText widget
    ); //BaseView implementation example with relating model for state watch
  }

  // view body with theme and dynamic sizing example
  Widget get scaffoldBody => Scaffold(
    floatingActionButton: incrementButtonWidget, // how you call a function from within the viewmodel
    body: Container(
        height: dynamicHeight(0.1), // example height use
        color: themeData.backgroundColor, // example theme use
        child: textWidget
    ),
  );

  // atomic changing value widget work example
  Widget get textWidget {
    return Observer(
      builder: (context) => Text(viewModel.number.toString())
    );
  }

  // atomic stable widget work example
  FloatingActionButton get incrementButtonWidget {
    return FloatingActionButton(onPressed: () => viewModel.incrementNumber(),);
  }

  // NOTE: widgets with no parameters must be defined as getters instead of functions in order to optimize memory use
}