import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/controllers/movie_bottom_bar_controller.dart';

class MovieBottomBar extends StatelessWidget {
  const MovieBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    MovieBottomBarController bottomBarController = Get.find();

    return Obx(() {
      return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Popular',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome_rounded),
              label: 'Top 10',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourites',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: bottomBarController.selectedIndex.value,
          //selectedItemColor: Colors.pink,
          onTap: bottomBarController.selectButton);
    });
  }
}
