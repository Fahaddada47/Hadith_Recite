
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holder/header_data_controller.dart';
import 'card_widget.dart';

class HeaderCardItem extends StatelessWidget {
  final HeaderCardController controller = Get.put(HeaderCardController());

   HeaderCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Obx(
            () => ListView.builder(
          itemCount: controller.sectionData.length,
          itemBuilder: (BuildContext context, int index) {
            String sectionNumber = controller.sectionData[index]['number'];
            String sectionTitle = controller.sectionData[index]['title'];
            String sectionContent = controller.sectionData[index]['preface'];

            return CardWidget(
              chapterNumber: sectionNumber,
              chapterTitle: sectionTitle,
              chapterContent: sectionContent,
            );
          },
        ),
      ),
    );
  }
}
