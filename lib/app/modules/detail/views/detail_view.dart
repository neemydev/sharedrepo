import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';
import '../controllers/my_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: GetBuilder<MyController>(
          init: MyController(),
          initState: (state) => print(state.toString()),
          builder: (controller) {
            controller.increment();
            return Text(
              controller.count.toString(),
              style: TextStyle(fontSize: 20),
            );
          },
        ),
      ),
    );
  }
}
