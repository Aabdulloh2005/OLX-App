import 'package:flutter/material.dart';
import 'package:olx_app/models/card_models.dart';
import 'package:olx_app/widgets/picture_widget.dart';

class TileView extends StatelessWidget {
  const TileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
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
      ),
    );
  }
}
