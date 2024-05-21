import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetPicture extends StatelessWidget {
  double height;
  String url;
  bool checkTop;
  GetPicture(
      {required this.height,
      required this.checkTop,
      required this.url,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
      ),
      child: checkTop
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 60,
                  color: const Color(0xff1EE1D7),
                  child: const Center(
                    child: Text(
                      "ТОП",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                )
              ],
            )
          : null,
    );
  }
}

class GetInformation extends StatelessWidget {
  String title;
  int price;
  bool checkStatus;
  String location;
  String time;
  GetInformation(
      {required this.title,
      required this.price,
      required this.checkStatus,
      required this.location,
      required this.time,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              IconButton(
                visualDensity: VisualDensity.compact,
                onPressed: () {},
                icon: const Icon(CupertinoIcons.heart),
              ),
            ],
          ),
          Text(
            "$price сум",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          checkStatus
              ? Chip(
                  side: BorderSide.none,
                  backgroundColor: Colors.grey.shade300,
                  visualDensity: VisualDensity.compact,
                  label: const Text(
                    "Новый",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                )
              : const SizedBox(
                  height: 15,
                ),
          Text(
            location,
            style: TextStyle(
                fontWeight: FontWeight.w400, color: Colors.grey.shade700),
          ),
          Text(
            time,
            style: TextStyle(
                fontWeight: FontWeight.w400, color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
