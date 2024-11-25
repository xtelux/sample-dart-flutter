import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final int counter;
  final String? description;
  final Function()? onClick;

  const CounterWidget(
      {super.key, required this.counter, this.description, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick?.call();
      },
      child: Container(
        color: Colors.green,
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(description ?? 'StatelessWidget Nomor urut 1'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
