import 'package:flutter/material.dart';
import 'package:weatherapp_starter_project/widgets/MusicList.dart';
import 'package:weatherapp_starter_project/widgets/PlaylistPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF303151).withOpacity(0.6),
            const Color(0xFF303151).withOpacity(0.9),
          ],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.sort_rounded,
                          color: Color(0xFF899CFF),
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_vert,
                          color: Color(0xFF899CCF),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Добро пожаловать",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Что будем слушать сегодня?",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 50,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xFF31314F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.search,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelStyle: TextStyle(),
                            hintText: "Поиск музыки",
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  indicator: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Color(0xFF899CCF),
                    width: 3,
                  ))),
                  tabs: [
                    Tab(text: "Музыка"),
                    Tab(text: "Плейлитсы"),
                    Tab(text: "Избранное"),
                    Tab(text: "Тренды"),
                    Tab(text: "Коллекции"),
                    Tab(text: "Новое"),
                  ],
                ),
                const Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        MusicList(),
                        PlayList(),
                        MusicList(),
                        MusicList(),
                        MusicList(),
                        MusicList(),
                      ],
                    ))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
