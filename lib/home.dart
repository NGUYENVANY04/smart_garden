import 'package:flutter/material.dart';
import 'package:smart_garden/widget/soilMoisture/widget_soi.dart';
// import 'package:smart_garden/data/dataTempApi.dart';
import 'package:smart_garden/widget/temp_api_widget/widget_temp.dart';
import 'package:smart_garden/widget/mq135_sensor/widget_co2.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
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
                height: 150,
                child: const Center(
                  child: InfoWidgetTemp(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 154, 146, 207),
                    height: 150,
                    width: 200,
                    child: InfoWidgetCo2(),
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 154, 146, 207),
                    height: 150,
                    width: 200,
                    child: InfoWidgetSoi(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
