
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holder/desc_controller.dart';
import 'description_item.dart';

class DescCardItem extends StatelessWidget {
  final DescCardController controller = Get.put(DescCardController());

   DescCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DescCardController>(
      builder: (_) => Container(
        height: 400,
        child: Obx(
              () => ListView.builder(
            itemCount: controller.bookData.length,
            itemBuilder: (BuildContext context, int index) {
              String bookAbvrCode = controller.bookData[index]['abvr_code'] ?? '';
              String bookTitle = controller.bookData[index]['title'] ?? '';
              String hadithGrade = controller.hadithData[index]['grade'] ?? '';
              String hadithArDiacless = controller.hadithData[index]['ar_diacless'] ?? '';
              int hadithId = controller.hadithData[index]['hadith_id'] ?? 0;

              return DynamicCardWidget(
                title: bookTitle,
                title2: hadithGrade,
                subtitleText: hadithId.toString(),
                subtitleNumber: index + 1,
                itemCount: bookAbvrCode,
                iconData: Icons.ac_unit,
                description: hadithArDiacless,
              );
            },
          ),
        ),
      ),
    );
  }
}

