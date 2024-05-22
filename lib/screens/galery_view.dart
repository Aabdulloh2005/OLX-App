import 'package:flutter/material.dart';
import 'package:olx_app/models/card_models.dart';
import 'package:olx_app/widgets/picture_widget.dart';

class GaleryView extends StatelessWidget {
  List<ImageModel> searchList;

  GaleryView({required this.searchList, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: searchList.length,
        itemBuilder: (context, i) {
          return Card(
            clipBehavior: Clip.hardEdge,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetPicture(
                  height: searchList[i].height,
                  url: searchList[i].url,
                  checkTop: searchList[i].checkTop,
                ),
                GetInformation(
                    title: searchList[i].title,
                    price: searchList[i].price,
                    checkStatus: searchList[i].checkStatus,
                    location: searchList[i].location,
                    time: searchList[i].time)
              ],
            ),
          );
        },
      ),
    );
  }
}
