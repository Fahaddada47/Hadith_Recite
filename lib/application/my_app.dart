import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_task/view/screen/hadith_recite_screen.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HadithReciteScreen(),
    );
  }
}