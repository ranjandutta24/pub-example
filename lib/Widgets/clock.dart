import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  late DateTime currentTime;
  late Timer _timer;
  late String t;

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer in the dispose method.
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    currentTime = DateTime.now();
    // clockTime = _formatTime(DateTime.now());
    _timer = Timer.periodic(const Duration(seconds: 1), _updateTime);
  }

  void _updateTime(Timer timer) {
    setState(() {
      currentTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    String clockTime = _formatTime(currentTime);
    return Text(
      clockTime,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontSize: 28, fontWeight: FontWeight.w200),
    );
  }

  String _formatTime(DateTime time) {
    // Your time formatting logic here
    t = DateFormat('h:mm:ss a').format(time);
    return t;
  }
}
