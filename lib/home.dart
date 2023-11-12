import 'package:flutter/material.dart';
import 'package:smart_garden/widget/control_device/control_widget.dart';
import 'package:smart_garden/widget/hiu_widget/widget_Hiu.dart';
// import 'package:smart_garden/data/dataTempApi.dart';
import 'package:smart_garden/widget/temp_widget/widget_temp.dart';
import 'package:smart_garden/widget/widget_ppm/widget_ppm.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool Log = true;
  controlLog() {
    setState(() {
      Log = !Log;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: BouncingScrollSimulation.maxSpringTransferVelocity,
        width: BouncingScrollSimulation.maxSpringTransferVelocity,
        color: const Color.fromARGB(255, 237, 234, 232),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 170,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/tree1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // child:
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 154, 146, 207),
              height: 130,
              child: const Center(
                child: InfoWidgetTemp(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 154, 146, 207),
              height: 130,
              child: const Center(
                child: InfoWidgetPpm(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 154, 146, 207),
              height: 130,
              child: const Center(
                child: InfoWidgetHiu(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ControlDevice(),
          ],
        ),
      ),
    );
  }
}
