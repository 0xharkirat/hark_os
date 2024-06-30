import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hark_os/data/icons_data.dart';
import 'package:hark_os/models/hark_icon.dart';

class IconController extends Notifier<List<HarkIcon>> {
  @override
  List<HarkIcon> build() {
    return kIconList;
    // return updatedList;
    
  }

  void updatePosition(int index, Offset newPosition) {
    var tempIcon = state[index];
    var tempState = [...state];

    tempState[index] = tempIcon.copyWith(position: newPosition);
    state = tempState;
  }
}

final iconControllerProvider = NotifierProvider<IconController, List<HarkIcon>>(() => IconController());
