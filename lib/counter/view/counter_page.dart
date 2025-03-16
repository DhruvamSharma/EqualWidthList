import 'package:equal_width_list/counter/counter.dart';
import 'package:equal_width_list/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.counterAppBarTitle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_open),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'London, UK',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 20),
              const Text(
                'The capital of England and United Kingdom, is a 21st-century city with history stretching back to Roman times.',
              ),
              const SizedBox(height: 20),
              const Text(
                'The iconic London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city.',
              ),
              const SizedBox(height: 20),
              Text(
                'Top Listed',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              const _AvailableListItem(),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              const _AvailableListItem(),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              const _AvailableListItem(),
              const SizedBox(height: 20),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}

class _AvailableListItem extends StatelessWidget {
  const _AvailableListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

