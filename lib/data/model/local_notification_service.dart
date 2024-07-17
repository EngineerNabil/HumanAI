
import 'dart:async';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/timezone.dart';
class LocalNotificationService{
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static StreamController<NotificationResponse> streamController = StreamController();
  static onTap (NotificationResponse notificationResponse){
    streamController.add(notificationResponse);
  }
  static Future init() async{
    InitializationSettings settings = const InitializationSettings(
      android:  AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),);
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  //Basic Notification part
  static void showBasicNotification({required int id, required String title, required String body, required String payload, required String sound}) async{

    AndroidNotificationDetails android = AndroidNotificationDetails(
      "id 1",
      "basic notification",
      //there are used for showing notification floating ----> importance: & priority:
      importance: Importance.max,
      priority: Priority.high,
      sound: sound=='default' ? null : RawResourceAndroidNotificationSound(sound.split(".").first ),
    );
    NotificationDetails details = NotificationDetails(
      android: android,
    );
    await flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        details,
      payload: payload

    );
  }
  //Repeated Notification part
  static void showRepeatedNotification({required int id, required String title, required String body, required String payload,required String sound}) async{
     AndroidNotificationDetails android = AndroidNotificationDetails(
      "id 2",
      "repeated notification",
      //there are used for showing notification floating ----> importance: & priority:
      importance: Importance.max,
      priority: Priority.high,
      sound: sound=='default' ? null  : RawResourceAndroidNotificationSound(sound.split(".").first ),
    );
    NotificationDetails details =  NotificationDetails(
      android: android,
    );
    await flutterLocalNotificationsPlugin.periodicallyShow(
        id,
        title,
        body,
        RepeatInterval.everyMinute,
        details,
        payload: payload
    );
  }
  //Schduled Notification part
  static void showSchduledNotification({required int id, required String title, required String body, required TZDateTime scheduleDate,required String payload,required String sound}) async{
     AndroidNotificationDetails android = AndroidNotificationDetails(
      "id 3",
      "schduled notification",
      //there are used for showing notification floating ----> importance: & priority:
      importance: Importance.max,
      priority: Priority.high,
      sound: sound=='default' ? null  : RawResourceAndroidNotificationSound(sound.split(".").first ),
    );
    NotificationDetails details =  NotificationDetails(
      android: android,
    );
    tz.initializeTimeZones();
    String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
    await flutterLocalNotificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        scheduleDate,
        // << scheduleDate Example  >>
        // tz.TZDateTime(
        //   tz.local,
        //   DateTime.now().year,
        //     DateTime.now().month,
        //     DateTime.now().day,
        //     DateTime.now().hour,
        //     DateTime.now().minute,
        //     DateTime.now().second+20,
        // ),
        details,
        payload: payload,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime
    );
  }

  //Cancel Notification part
  static void cancelNotification(int id) async{
    await flutterLocalNotificationsPlugin.cancel(id);
  }

  //CancelAll Notification part
  static void cancelAllNotification() async{
    await flutterLocalNotificationsPlugin.cancelAll();
  }
}