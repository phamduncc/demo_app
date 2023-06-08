import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class VideoPage extends StatelessWidget {
  VideoPage({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: Container(
                width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)
                      ),

                      child: Center(child: Text("This is video", style: TextStyle(fontSize: 20),)),
              ),
                  )),
              Expanded(
                flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Mới đến", style: TextStyle(color: Colors.blueGrey),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(child: Column(
                                children: [
                                  SvgPicture.asset("assets/icons/diem_danh.svg", width: 40, height: 40,),
                                  Text("Chưa rõ"),
                                  Text("(Chữa xác định)"),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.black12
                                    ),
                                    child: Text("Chưa xác định", style: TextStyle(color: Colors.white),),
                                  )
                                ],
                              )),
                              Expanded(child: SvgPicture.asset("assets/icons/diem_danh.svg"))
                            ],
                          )
                        ],
                      ),
              ),
                  )),
              Expanded(
                flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Chưa có lượt điểm danh nào trong hôm nay", style: TextStyle(color: Colors.blueGrey),),
                          SizedBox(height: 10,),
                          SvgPicture.asset("assets/icons/diem_danh.svg")
                        ],
                      ),
              ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}