// # equal_width_list
//
// Created by: dhruvam
// Date: 16/03/25
// Time: 8:06 pm

import 'package:equal_width_list/utils/measure_size.dart';
import 'package:flutter/material.dart';

class EqualWidthItemList extends StatefulWidget {
  const EqualWidthItemList({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  State<EqualWidthItemList> createState() => _EqualWidthItemListState();
}

class _EqualWidthItemListState extends State<EqualWidthItemList> {
  double _maxWidth = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.itemCount, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: MeasureSize(
              onChange: (size) {
                if (size.width > _maxWidth) {
                  setState(() {
                    _maxWidth = size.width;
                  });
                }
              },
              child: SizedBox(
                width: _maxWidth == 0 ? null : _maxWidth,
                child: widget.itemBuilder(context, index),
              ),
            ),
          );
        }),
      ),
    );
  }
}
