// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:twitter/controllers/home_controllers.dart';
import 'package:twitter/views/home/home_screen.dart';

import '../../utility/consts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBarItem = [
      BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: "home"),
      BottomNavigationBarItem(icon: Icon(Icons.search_sharp), label: "search"),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none), label: "nitification"),
      BottomNavigationBarItem(icon: Icon(Icons.message_sharp), label: "DM")
    ];

    var navBody = [
      const HomeScreen(),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.red,
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          items: navBarItem,
          type: BottomNavigationBarType.fixed,
          backgroundColor: TwitterColor.white,
          selectedItemColor: TwitterColor.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(fontFamily: font4),
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
