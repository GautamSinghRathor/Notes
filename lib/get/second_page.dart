import 'package:best_flutter_ui_templates/get/controllers/home_page_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.find();
    controller.dispose();
    return Scaffold(
      body: Center(
        child: Text('Second page'),
      ),
    );
  }
}
