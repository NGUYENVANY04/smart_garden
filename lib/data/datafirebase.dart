import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class DataFirebase extends ChangeNotifier {
  DataFirebase() : super() {
    readDataMq135();
    readSoilMoisture();
    readDataHp();
  }
  final refData = FirebaseDatabase.instance.ref(); // call firebase
  int mq135Data = 1;
  int soilMoisture = 1;
  int tempObject = 1;
  int firstTwoDigits = 1;
  int tdsData = 1;
  int ph = 1;
  readDataMq135() {
    refData.child("mq135_data").onValue.listen((event) {
      mq135Data = event.snapshot.value as int;
      notifyListeners();
    });
  }

  readDataTds() {
    refData.child("tdsdata").onValue.listen((event) {
      tdsData = event.snapshot.value as int;
      notifyListeners();
    });
  }

  readDataHp() {
    refData.child("ph").onValue.listen((event) {
      ph = event.snapshot.value as int;
      notifyListeners();
    });
  }

  readSoilMoisture() {
    refData.child("soil_moisture").onValue.listen((event) {
      soilMoisture = event.snapshot.value as int;
      notifyListeners();
    });
  }
}
