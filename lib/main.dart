import 'package:tirandaj_app/controller/auth_controller.dart';
import 'package:tirandaj_app/screens/SplashScreen.dart';
import 'package:tirandaj_app/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tirandaj_app/screens/login_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'notificationservice/local_notification_service.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}


Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  LocalNotificationService.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final authController = AuthController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return GetMaterialApp(
      title: 'Tirandaj',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      // theme: ThemeData.dark(),
      home: LoginScreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}
