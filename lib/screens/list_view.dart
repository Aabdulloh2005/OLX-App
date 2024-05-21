import 'package:flutter/material.dart';
import 'package:olx_app/models/card_models.dart';
import 'package:olx_app/widgets/picture_widget.dart';

class ListViewPage extends StatelessWidget {
  List<ImageModel> searchList;

  ListViewPage({required this.searchList, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: searchList.isEmpty
          ? ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: GetPicture(
                          height: 180,
                          url: items[i].url,
                          checkTop: items[i].checkTop,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: GetInformation(
                            title: items[i].title,
                            price: items[i].price,
                            checkStatus: items[i].checkStatus,
                            location: items[i].location,
                            time: items[i].time),
                      )
                    ],
                  ),
                );
              },
            )
          : ListView.builder(
              itemCount: searchList.length,
              itemBuilder: (context, i) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: GetPicture(
                          height: 180,
                          url: searchList[i].url,
                          checkTop: searchList[i].checkTop,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: GetInformation(
                            title: searchList[i].title,
                            price: searchList[i].price,
                            checkStatus: searchList[i].checkStatus,
                            location: searchList[i].location,
                            time: searchList[i].time),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
