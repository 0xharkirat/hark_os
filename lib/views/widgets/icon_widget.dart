import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hark_os/controllers/icon_controller.dart';
import 'package:hark_os/models/hark_icon.dart';

class IconWidget extends ConsumerWidget {
  const IconWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconsProvider = ref.watch(iconControllerProvider);
    return Positioned(
      left: iconsProvider[index].position.dx,
      top: iconsProvider[index].position.dy,
      child: Draggable(
        feedback: _buildIcon(iconsProvider[index]),
        child: _buildIcon(iconsProvider[index]),
        onDragEnd: (details) {
          ref.read(iconControllerProvider.notifier).updatePosition(
                index,
                details.offset,
              );
        },
      ),
    );
  }

  Widget _buildIcon(HarkIcon icon) {
    return Material(
      color: Colors.transparent,
      elevation: 8.0,
      shadowColor: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(icon.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            icon.name,
            style: const TextStyle(color: Colors.white, fontSize: 12, shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 4,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
