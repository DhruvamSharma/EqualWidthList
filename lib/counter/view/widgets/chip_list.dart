// # equal_width_list
//
// Created by: dhruvam
// Date: 16/03/25
// Time: 6:53 pm

import 'package:equal_width_list/counter/cubit/counter_cubit.dart';
import 'package:equal_width_list/utils/topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChipList extends StatelessWidget {
  const ChipList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: Topics.values
          .map(
            (topic) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: _ChipListItem(topic: topic),
            ),
          )
          .toList(),
    );
  }
}

class _ChipListItem extends StatelessWidget {
  const _ChipListItem({required this.topic, super.key});

  final Topics topic;

  @override
  Widget build(BuildContext context) {
    final selectedTopic = context.select((CounterCubit cubit) => cubit.state);
    return GestureDetector(
      onTap: () {
        context.read<CounterCubit>().changeTopic(topic);
      },
      child: Chip(
        side: BorderSide(
          color: selectedTopic == topic
              ? Theme.of(context).primaryColor
              : Colors.transparent,
        ),
        avatar: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).primaryColor,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            topic.label[0].toUpperCase(),
          ),
        ),
        label: Text(topic.label),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
