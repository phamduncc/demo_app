import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home/controller/home_controller.dart';
import 'package:flutter_demo_app/home/view/speech_to_text_page.dart';
import 'package:flutter_demo_app/home/view/video_page.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController c = Get.put(HomeController());

  Widget speechToTextPage = SpeechToTextPage();

  Widget videoPage = VideoPage();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera, size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.record_voice_over_outlined, size: 30, ),
            label: '',
          ),
        ],
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return videoPage;
    } else {
      return speechToTextPage;
    }
  }
}

