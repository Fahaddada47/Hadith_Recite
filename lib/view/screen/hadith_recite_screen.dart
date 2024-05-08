import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/description/desc_card_item.dart';
import '../widget/description/description_item.dart';
import '../widget/header_widget/card_item.dart';
 // Corrected import path for DynamicCardWidget
import '../widget/app_bar/app_bar_item.dart';

class HadithReciteScreen extends StatelessWidget {
  const HadithReciteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1AA483),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBarItem(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
          color: Color(0xFFF4F4F4),
        ),
        child:   Column(
                children: [
                  HeaderCardItem(),
                  DescCardItem(),
                  // Use HeaderCardItem widget here
                ],
              ),

      ),
    );
  }
}
