import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../state_holder/app_bar_controller.dart';
import 'app_bar_widget.dart';



class AppBarItem extends StatelessWidget {
  final AppBarController controller = Get.put(AppBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppBarController>(
      builder: (_) => AppBarWidget(
        bookTitle: controller.bookTitle.value,
        chapterTitle: controller.chapterTitle.value,
      ),
    );
  }
}
