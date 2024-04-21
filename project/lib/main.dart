import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   ThemeHelper().changeTheme('primary');

//   // Firebase.initializeApp();
//   // Firebase.initializeApp();

//   runApp(MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('primary');
  await Firebase.initializeApp(
    options: FirebaseOptions(
      appId: '1:240282301798:android:83d044874f088b974ac4a7',
      apiKey: 'AIzaSyAVDfQVQo1QsazA94FqkT6-3_xBRg4pZRs',
      messagingSenderId: 'your_messaging_sender_id', // ไม่มีข้อมูลใน Json ที่คุณแสดง
      projectId: 'moneymetang-1b9cd',
      storageBucket: 'moneymetang-1b9cd.appspot.com',
      databaseURL: 'your_database_url', // ไม่มีข้อมูลใน Json ที่คุณแสดง
    ),
  );
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'kantinunaundee_s_application1',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
