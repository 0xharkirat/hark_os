import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hark_os/controllers/clock_controller.dart';
import 'package:intl/intl.dart';

class BottomToolBar extends StatelessWidget {
  const BottomToolBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFc3c3c3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Consumer(
            builder: (BuildContext context, WidgetRef ref, _) {
              final clock = ref.watch(clockControllerProvider);
              final formattedClock = DateFormat('HH:mm:ss').format(clock);
              final formattedDate = DateFormat("yMMMMEEEEd").format(clock);
              return Tooltip(
                message: formattedDate,
                decoration: const BoxDecoration(
                  color: Color(0xFFc3c3c3),
                ),
                textStyle: const TextStyle(color: Colors.black),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    formattedClock,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
