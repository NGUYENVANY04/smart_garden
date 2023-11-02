import 'package:flutter/material.dart';

infoCard({
  // required BuildContext context,
  required String nameInfo,
  required String contentInfo,
  required String iconInfo,
  required Color colorInfo,
}) {
  return Expanded(
      child: Container(
    padding: const EdgeInsets.only(left: 40, top: 30),
    // width: MediaQuery.of(context).size.width*0.4,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: colorInfo,
    ),
    // constraints: BoxConstraints.expand(),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            nameInfo,
            style: const TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Image.asset(
                iconInfo,
                height: 30,
              ),
              const SizedBox(width: 10),
              Text(
                // "450",
                contentInfo,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Ppm",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    ),
  ));
}
