import 'dart:ui';

class HarkIcon {
  final String name;
  final String imagePath;
  final Offset position;

  const HarkIcon({
    required this.position,
    required this.name,
    required this.imagePath,
  });

  HarkIcon copyWith({
    String? name,
    String? imagePath,
    Offset? position,
  }) {
    return HarkIcon(
      name: name ?? this.name,
      imagePath: imagePath ?? this.imagePath,
      position: position ?? this.position,
    );
  }

  factory HarkIcon.fromMap(Map<String, dynamic> map) {
    return HarkIcon(
      name: map['name'],
      imagePath: map['imagePath'],
      position: map['position'],
    );
  }
}
