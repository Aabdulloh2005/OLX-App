import 'package:flutter/material.dart';
import 'package:olx_app/models/card_models.dart';
import 'package:olx_app/widgets/picture_widget.dart';

class TileView extends StatelessWidget {
  List<ImageModel> searchList;

  TileView({required this.searchList, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: searchList.isEmpty
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 380,
                crossAxisSpacing: 5,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
              ),
              itemCount: items.length,
              itemBuilder: (context, i) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GetPicture(
                        height: 160,
                        url: items[i].url,
                        checkTop: items[i].checkTop,
                      ),
                      GetInformation(
                          title: items[i].title,
                          price: items[i].price,
                          checkStatus: items[i].checkStatus,
                          location: items[i].location,
                          time: items[i].time)
                    ],
                  ),
                );
              },
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 380,
                crossAxisSpacing: 5,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
              ),
              itemCount: searchList.length,
              itemBuilder: (context, i) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GetPicture(
                        height: 160,
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
