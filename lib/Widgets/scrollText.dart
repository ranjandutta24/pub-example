import 'dart:async';
import 'package:flutter/material.dart';

class ScrollText extends StatefulWidget {
  const ScrollText({super.key, required this.text});
  final text;
  @override
  State<ScrollText> createState() {
    return _ScroolTextState();
  }
}

class _ScroolTextState extends State<ScrollText> {
  double _scrollPosition = 0.0;
  late Timer _timer;
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 20), (timer) {
      setState(() {
        _scrollPosition += 2; // Adjust scroll speed here
        _scrollController.jumpTo(_scrollPosition);
        if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
          _scrollPosition = 0.0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        child: Row(
          children: [
            const SizedBox(width: 20), // Add some space at the beginning
            Text(
              widget.text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(width: 20), // Add some space at the end
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }
}
