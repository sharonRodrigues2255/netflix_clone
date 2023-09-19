import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newValue, _) {
          return BottomNavigationBar(
            currentIndex: newValue,
            onTap: (value) {
              indexChangeNotifier.value = value;
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            backgroundColor: backgroundColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: "New & Hot",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: "Fast Laughs",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.arrow_downward_rounded,
                ),
                label: "Downloads",
              )
            ],
          );
        });
  }
}
