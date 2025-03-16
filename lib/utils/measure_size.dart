// # equal_width_list
// 
// Created by: Dhruvam
// Date: 16/03/25
// Time: 7:30 pm

import 'package:flutter/widgets.dart';

class MeasureSize extends StatefulWidget {

  const MeasureSize({required this.child, required this.onChange, super.key});
  final Widget child;
  final void Function(Size size) onChange;

  @override
  MeasureSizeState createState() => MeasureSizeState();
}

class MeasureSizeState extends State<MeasureSize> {
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    // Wait for the widget to build.
    WidgetsBinding.instance.addPostFrameCallback((_) => _notifySize());
    super.initState();
  }

  void _notifySize() {
    // find the context of this widget in the widget tree
    final context = _key.currentContext;
    if (context == null) return;
    // get the size of the widget after it has been built
    final size = context.size;
    // call the onChange function with the size
    // notifies the parent widget of the size of this widget
    if (size != null) widget.onChange(size);
  }

  @override
  Widget build(BuildContext context) {
    return Container(key: _key, child: widget.child);
  }
}