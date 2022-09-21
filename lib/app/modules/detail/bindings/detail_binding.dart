import 'package:get/get.dart';

import 'package:myapp/app/modules/detail/controllers/my_controller.dart';

import '../controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(
      () => MyController(),
    );
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
  }
}
