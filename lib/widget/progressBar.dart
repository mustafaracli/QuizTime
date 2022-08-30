import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final icons;
  final count;
  final total;

  const ProgressBar({
    Key? key,
    this.icons,
    this.count,
    this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 10.0,
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          const SizedBox(width: 40),
          ...icons,
        ],
      ),
    );
  }
}
