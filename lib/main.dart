// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:humanai_v2/Pages/splash_screen.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp>{
//   @override
//   Widget build(BuildContext context) {
//     return  const MaterialApp(
//         title: 'Humanai',
//         home:  SplashScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:humanai_v2/Pages/Calendar_dir/meeting_provider.dart';
import 'package:humanai_v2/Pages/Chat/message_provider.dart';
import 'package:humanai_v2/Pages/splash_screen.dart';
import 'package:humanai_v2/data/model/local_notification_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // mybox = await openHiveBox("MeetingBox");
  Gemini.init(apiKey: 'AIzaSyBcA0EIeVzMJqFxOZ9vng04MiwOslkVt6U');
  // Local Notification part
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!.requestNotificationsPermission();
  await LocalNotificationService.init();

  // Setting for setUp Notification to run in start
  var done = MeetingProvider.setUpNotificationToSend();
  print(done.toString());

  // await Permission.storage.request();
  LocalNotificationService.showBasicNotification(id: 0, title: "Humanai", body: "App is Started", payload: "payload", sound: 'default');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // normal app
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Gemini',
      home:  SplashScreen(),
    );
  }
}

////////////
// Gemini //
////////////

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   XFile? _imageFile;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text( 'Flutter Gemini'),
//       ),
//       body: Column(
//         children: [
//           IconButton(
//             onPressed: () {
//               final gemini = Gemini.instance;
//               gemini.text("who is mo salah ?")
//                   .then((value) => print( value?.output )) /// or value?.content?.parts?.last.text
//                   .catchError((e) => print(e));
//             },
//             icon: const Icon(Icons.send_rounded),
//           ),
//         ],
//       ),
//     );
//   }
// }

