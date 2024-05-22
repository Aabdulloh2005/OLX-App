import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:olx_app/models/card_models.dart';
import 'package:olx_app/screens/galery_view.dart';
import 'package:olx_app/screens/list_view.dart';
import 'package:olx_app/screens/tile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  String? word;
  int _currentIndex = 1;
  List<ImageModel> searchList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchList = items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.grey,
              ),
              label: "Избранное"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.grey,
              ),
              label: "Создать"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Сообщения"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: Colors.grey,
              ),
              label: "Профиль"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 35,
        width: 180,
        decoration: const BoxDecoration(color: Colors.blue),
        child: FloatingActionButton(
          shape: const RoundedRectangleBorder(),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.heart),
              Text(
                "Сохранить поиск",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                onChanged: (value) {
                  word = value;
                  print(_controller.text);

                  searchList = items.where(
                    (element) {
                      return element.title
                          .toLowerCase()
                          .contains(word!.toLowerCase());
                    },
                  ).toList();

                  setState(() {});
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(CupertinoIcons.heart)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "МЫ НАШЛИ БОЛЕЕ 100 ОБЪЯВЛЕНИЙ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          searchList = searchList.reversed.toList();

                          print("bosildi");
                          setState(() {});
                        },
                        icon: const Icon(
                          CupertinoIcons.arrow_up_arrow_down,
                          size: 20,
                        ),
                      ),
                      PopupMenuButton(
                        popUpAnimationStyle: AnimationStyle(
                            curve: const FlippedCurve(Curves.easeInCirc),
                            duration: const Duration(milliseconds: 500)),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 1;
                                });
                              },
                              value: 1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Галерея",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Gap(12),
                                  _currentIndex == 1
                                      ? Icon(
                                          Icons.done,
                                          color: Colors.greenAccent.shade400,
                                        )
                                      : const SizedBox()
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 2;
                                });
                              },
                              value: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Список",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Gap(12),
                                  _currentIndex == 2
                                      ? Icon(
                                          Icons.done,
                                          color: Colors.greenAccent.shade400,
                                        )
                                      : const SizedBox()
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 3;
                                });
                              },
                              value: 3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Плитка",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Gap(12),
                                  _currentIndex == 3
                                      ? Icon(
                                          Icons.done,
                                          color: Colors.greenAccent.shade400,
                                        )
                                      : const SizedBox()
                                ],
                              ),
                            ),
                          ];
                        },
                        child: _currentIndex == 1
                            ? const Icon(CupertinoIcons.cube)
                            : _currentIndex == 2
                                ? const Icon(Icons.menu)
                                : const Icon(Icons.grid_view_outlined),
                      ),
                    ],
                  ),
                ],
              ),
              _currentIndex == 1
                  ? GaleryView(
                      searchList: searchList,
                    )
                  : _currentIndex == 2
                      ? ListViewPage(
                          searchList: searchList,
                        )
                      : TileView(
                          searchList: searchList,
                        ),
            ],
          ),
        ),
      ),
    );
  }
}
