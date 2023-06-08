import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class SpeechToTextPage extends StatelessWidget {
  SpeechToTextPage({Key? key}) : super(key: key);
  final HomeController controller = Get.find();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Trò chuyện với Veronica", style: TextStyle(color: Colors.blueGrey),),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    controller.speechText.value,
                    style: TextStyle(fontSize: 30, color: Colors.blueGrey),
                  )),
              Obx(
                () => AvatarGlow(
                  animate: controller.isListen.value,
                  glowColor: Colors.blue,
                  endRadius: 90,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,

                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: MaterialButton(
                      onPressed: () {
                      },

                      child: SvgPicture.asset("assets/icons/voice.svg", height: 100, width: 100,)),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () {
              controller.listen();
            },
            child: SvgPicture.asset("assets/icons/Mic.svg"),
          ),
        )
        ,
      ),
    );
  }
}
