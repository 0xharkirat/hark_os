import 'package:flutter/material.dart';
import 'package:hark_os/models/hark_icon.dart';

const space = 80.0;

const kIconList = <HarkIcon>[
  HarkIcon(position: Offset(0, 0), name: "My PC", imagePath: "icons/my_pc.png"),
  HarkIcon(
      position: Offset(space, 0),
      name: "Folder 1",
      imagePath: "icons/folder.png"),
  HarkIcon(
      position: Offset(0, space),
      name: "Folder 2",
      imagePath: "icons/folder.png"),
  HarkIcon(
      position: Offset(space, space), name: "Folder 2", imagePath: "icons/folder.png"),
  // HarkIcon(
  //     position: Offset(0, 0), name: "Folder", imagePath: "icons/folder.png"),
  // HarkIcon(
  //     position: Offset(0, 0), name: "Folder", imagePath: "icons/folder.png"),
  // HarkIcon(
  //     position: Offset(0, 0), name: "Folder", imagePath: "icons/folder.png"),
  // HarkIcon(
  //     position: Offset(0, 0), name: "Folder", imagePath: "icons/folder.png"),
  // HarkIcon(
  //     position: Offset(0, 0), name: "Folder", imagePath: "icons/folder.png"),
  // HarkIcon(
  //     position: Offset(0, 0), name: "Folder", imagePath: "icons/folder.png"),
  // HarkIcon(
  //     position: Offset(0, 0), name: "Folder", imagePath: "icons/folder.png"),
];
