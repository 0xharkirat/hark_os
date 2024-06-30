import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClockController extends Notifier<DateTime> {
  @override
  DateTime build() {
    DateTime now = DateTime.now();
    _updateTime();
    return now;
  }

  void _updateTime() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      state = DateTime.now();
    });
    
  }

 
}

final clockControllerProvider = NotifierProvider<ClockController, DateTime>(() => ClockController());