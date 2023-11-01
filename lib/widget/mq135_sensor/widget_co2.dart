import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_garden/data/datafirebase.dart';
import 'package:smart_garden/widget/mq135_sensor/infocad.dart';

class InfoWidgetCo2 extends StatelessWidget {
  const InfoWidgetCo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DataFirebase>(builder: (context, view, child) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: infoCard(
                colorInfo: Colors.white,
                // context: context,
                iconInfo: "assets/co2.jpg",
                nameInfo: "C02 Concentration ",
                contentInfo: view.mq135Data.toString()),
          ),
        ),
      );
    });
  }
}
