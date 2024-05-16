import 'package:flutter/material.dart';
import 'package:olx_app/models/card_models.dart';
import 'package:olx_app/widgets/picture_widget.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
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
      ),
    );
  }
}
