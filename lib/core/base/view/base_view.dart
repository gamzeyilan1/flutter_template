import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// view extends from Store for state management via Mobx
class BaseView<T extends Store> extends StatefulWidget {
  //preparing callback
  final Widget Function(BuildContext context, T value) onPagebuilder; //returning the screen context and the entered T model to the caller
  final T? viewModel; //dart can't read the type of T during runtime so we require is as an instance as well as a value to build with
  final Function(T model)? onModelReady;
  final VoidCallback? onModelDispose;

  const BaseView({Key? key, this.viewModel, required this.onPagebuilder, this.onModelReady, this.onModelDispose}) : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

// Run functions and generate widgets on all screens that inherit from this view app-wise
class _BaseViewState extends State<BaseView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.onModelReady != null) widget.onModelReady!(widget.viewModel!); //returns the model within the widget if the the model is being called
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if(widget.onModelDispose != null) widget.onModelDispose!(); //runs disposal methods if the model is being disposed
  }


  @override
  Widget build(BuildContext context) {
    return widget.onPagebuilder(context, widget.viewModel!);
  }
}
