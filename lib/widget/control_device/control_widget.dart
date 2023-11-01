import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ControlDevice extends StatefulWidget {
  const ControlDevice({Key? key}) : super(key: key);

  @override
  State<ControlDevice> createState() => _ControlDeviceState();
}

class _ControlDeviceState extends State<ControlDevice> {
  bool stateLight = true;
  bool stateMotor = true;
  final refcontrol = FirebaseDatabase.instance.ref();

  controlLight() {
    setState(() {
      stateLight = !stateLight;
      refcontrol.child("state").update({
        "light": stateLight,
      });
    });
  }

  controlMotor() {
    setState(() {
      stateMotor = !stateMotor;
      refcontrol.child("state").update({
        "motor": stateMotor,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 227, 117, 117),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child: TextButton(
              onPressed: () {
                controlLight();
              },
              child: Text(
                stateLight ? "ON" : "OFF",
                style: const TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 20, 14, 14)),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30.0),
        Padding(
          padding: const EdgeInsets.only(left: 1),
          child: Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 227, 117, 117),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child: TextButton(
              onPressed: () {
                controlMotor();
              },
              child: Text(
                stateMotor ? "ON" : "OFF",
                style: const TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 20, 14, 14)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
