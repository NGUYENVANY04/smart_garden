import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_garden/data/dataTempApi.dart';
import 'package:smart_garden/widget/temp_widget/infocardtemp.dart';

class InfoWidgetTemp extends StatelessWidget {
  const InfoWidgetTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Temperature>(builder: (context, view, child) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                child: infoCard(
                    colorInfo: Colors.white,
                    // context: context,
                    iconInfo: "assets/images/in_temp.jpg",
                    nameInfo: "Temprate Indoor",
                    contentInfo: view.roomTemp.toString()),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: infoCard(
                    colorInfo: Colors.white,
                    // context: context,
                    iconInfo: "assets/images/out_temp.png",
                    nameInfo: "Temprate Outdoor",
                    contentInfo: view.temp.toString()),
              )
            ],
          ),
        ),
      );
    });
  }
}
