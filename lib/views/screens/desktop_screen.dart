import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hark_os/controllers/icon_controller.dart';
import 'package:hark_os/views/widgets/icon_widget.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer(
            builder: (context, ref, _) {
              final iconsProvider = ref.watch(iconControllerProvider);
              return Stack(
                children: iconsProvider
                    .asMap()
                    .entries
                    .map((entry) => IconWidget(index: entry.key))
                    .toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
