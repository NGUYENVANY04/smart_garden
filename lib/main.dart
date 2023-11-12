import 'dart:math';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_garden/data/dataTempApi.dart';
import 'package:smart_garden/data/datafirebase.dart';
import 'package:smart_garden/home.dart';
import 'package:smart_garden/widget/hiu_widget/widget_Hiu.dart';
import 'package:smart_garden/widget/temp_widget/widget_temp.dart';
import 'package:smart_garden/widget/widget_ppm/widget_ppm.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyBVFIPDBOlbDBrZOIwwukknrGNC4ldpGm0',
        appId: '1:685006939519:android:0ae3d0ac2f4953ec0fe64a',
        messagingSenderId: '685006939519',
        projectId: 'my-firebase-da1f1',
        databaseURL: 'https://my-firebase-da1f1-default-rtdb.firebaseio.com',
        storageBucket: 'my-firebase-da1f1.appspot.com',
      ),
    );
    print("Khoong cos ngoaij le ");
  } catch (e) {
    print(e.toString());
  }

  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Temperature>(
          create: (_) => Temperature(),
          child: const InfoWidgetTemp(),
        ),
        ChangeNotifierProvider<DataFirebase>(
          create: (_) => DataFirebase(),
          child: const InfoWidgetPpm(),
        ),
        ChangeNotifierProvider<DataFirebase>(
          create: (_) => DataFirebase(),
          child: const InfoWidgetHiu(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MyHome(),
        ),
      ),
    );
  }
}
