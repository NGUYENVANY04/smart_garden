import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ControlDevice extends ChangeNotifier {
  final ref = FirebaseDatabase.instance.ref();
  bool stateLight = true;
  bool stateWater = true;
  conTrolLight() {
    ref.child("/devide/light").update((event) {
      stateLight = event.snapshot.value as bool;
      notifyListeners();
    });
  }

  conTrolWater() {
    ref.child("device/water").onValue.listen((event) {
      stateWater = event.snapshot.value as bool;
      notifyListeners();
    });
  }
}
