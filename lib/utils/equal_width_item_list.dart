// # equal_width_list
//
// Created by: dhruvam
// Date: 16/03/25
// Time: 8:06 pm

import 'package:flutter/material.dart';

class EqualWidthItemList extends StatelessWidget {
  const EqualWidthItemList({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(itemCount, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: itemBuilder(context, index),
          );
        }),
      ),
    );
  }
}
