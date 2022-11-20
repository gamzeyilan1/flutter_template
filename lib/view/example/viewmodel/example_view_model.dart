import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter_template/core/base/view/base_view.dart';
import 'package:flutter_template/core/constants/enums/app_theme_enum.dart';
import 'package:flutter_template/core/init/notifier/theme_notifier.dart';
part 'example_view_model.g.dart';

//generated via mobx_codegen plugin's mobx snippet, do use for models
//run build_runner_watch to generate the model once and watch the changes
class ExampleViewModel = ExampleViewModelBase with _$ExampleViewModel;

/* viewModel helps perform state management for tasks like taking an action or computing a value and listening to the changes on values &
 reflecting the mentioned changes after mentioned tasks complete */
abstract class ExampleViewModelBase with Store{

  // example variable to be watched
  @observable
  int number = 0;

  // example action
  @action
  void incrementNumber() {
    number++;
  }

  // example calculation
  @computed
  bool get isEven => number % 2 == 0;

  //how you can change app theme dynamically
  void changeTheme() {
    Provider.of<ThemeNotifier>(context, listen: false).changeValue(AppThemes.DARK);
  }

}