import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_garden/data/datafirebase.dart';
import 'package:smart_garden/widget/soilMoisture/infocardsoi.dart';

class InfoWidgetSoi extends StatelessWidget {
  const InfoWidgetSoi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DataFirebase>(builder: (context, view, child) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                child: infoCard(
                    colorInfo: Colors.white,
                    // context: context,
                    iconInfo: "assets/soi1.png",
                    nameInfo: "Soil Soisture ",
                    contentInfo: view.soilMoisture.toString()),
              ),
            ],
          ),
        ),
      );
    });
  }
}
