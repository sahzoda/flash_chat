import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/app/routes/app_pages.dart';
import 'package:flash_chat/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// import 'package:get/get.dart';

// import 'app/routes/app_pages.dart';
//  import 'package:firebase_core/firebase_core.dart';

// import 'firebase_options.dart';


void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
