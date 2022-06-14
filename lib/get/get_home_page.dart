import 'dart:math';

import 'package:best_flutter_ui_templates/get/controllers/home_page_controller.dart';
import 'package:best_flutter_ui_templates/get/second_page.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHomePage extends StatelessWidget {
  GetHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageController());

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          "Y : ${controller.getY}",
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        SizedBox(height: 10),
                        GetBuilder<HomePageController>(
                          id: "xvalue",
                          builder: (_) => Text(
                            "X : ${controller.getXValue}",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                controller.increaseX();
              },
              child: Text(
                'Increase X',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                controller.increaseY();
              },
              child: Text(
                'Increase Y',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Get.to(() => SecondPage());
              },
              child: Text(
                'Go to second page',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
