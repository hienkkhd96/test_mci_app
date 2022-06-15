import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class BuildIndicator extends StatefulWidget {
  final int count;
  final ValueNotifier<int> currentPageNotifier;
  const BuildIndicator(
      {Key? key, required this.count, required this.currentPageNotifier})
      : super(key: key);
  @override
  State<BuildIndicator> createState() => _BuildIndicatorState();
}

class _BuildIndicatorState extends State<BuildIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: widget.count,
          currentPageNotifier: widget.currentPageNotifier,
        ),
      ),
    );
  }
}
