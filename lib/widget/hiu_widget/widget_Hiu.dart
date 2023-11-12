import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_garden/data/dataTempApi.dart';
import 'package:smart_garden/data/datafirebase.dart';
import 'package:smart_garden/widget/hiu_widget/infocardHiu.dart';
import 'package:smart_garden/widget/temp_widget/infocardtemp.dart';

class InfoWidgetHiu extends StatelessWidget {
  const InfoWidgetHiu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DataFirebase>(builder: (context, view, child) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                child: infoCardHiu(
                    colorInfo: Colors.white,
                    // context: context,
                    iconInfo: "assets/soi1.png",
                    nameInfo: "Soil Misture",
                    contentInfo: view.tdsData.toString()),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: infoCardHiu(
                    colorInfo: Colors.white,
                    // context: context,
                    iconInfo: "assets/soi1.png",
                    nameInfo: "Humidity Indoor",
                    contentInfo: view.soilMoisture.toString()),
              )
            ],
          ),
        ),
      );
    });
  }
}
