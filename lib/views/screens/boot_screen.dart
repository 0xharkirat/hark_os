import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hark_os/views/screens/desktop_screen.dart';

class BootScreen extends StatefulWidget {
  const BootScreen({super.key});

  @override
  State<BootScreen> createState() => _BootScreenState();
}

class _BootScreenState extends State<BootScreen> {
  final List<bool> _progressBars = List.filled(15, false);
  late Timer _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const duration = Duration(milliseconds: 500); // 0.5 seconds
    _timer = Timer.periodic(duration, (timer) {
      setState(() {
        if (_currentIndex < _progressBars.length) {
          _progressBars[_currentIndex] = true;
          _currentIndex++;
        } else {
          _timer.cancel();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const DesktopScreen(),
            ),
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when screen is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF008080),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/1276.png',
            width: 400,
            height: 400,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          const Text(
            'Hark OS Loading...',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _progressBars
                  .map((active) => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: active
                                ? const Color(0xFF010081)
                                : Colors.transparent,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
