import 'package:flutter/cupertino.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:humanai_v2/Pages/Calendar_dir/meeting.dart';
import 'package:humanai_v2/data/model/local_notification_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class MeetingProvider with ChangeNotifier{
  List<Meeting> meetings = [
  Meeting('test3',                DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1,DateTime.now().hour,DateTime.now().minute,DateTime.now().second+30),  DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day+1,23,DateTime.now().minute,DateTime.now().second+30), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للأسرة',                DateTime(DateTime.now().year,1,1,),  DateTime(DateTime.now().year,1,1,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للسلام',                DateTime(DateTime.now().year,1,1,),  DateTime(DateTime.now().year,1,1,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للبرايل',              DateTime(DateTime.now().year,1,4,),  DateTime(DateTime.now().year,1,4,23), const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للتعليم',               DateTime(DateTime.now().year,1,24,), DateTime(DateTime.now().year,1,24,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمكافحة مرض السرطان',  DateTime(DateTime.now().year,2,4,),  DateTime(DateTime.now().year,2,4,23), const Color(0xff0497B0), false),
  Meeting('اليوم الاذاعة العالمى',               DateTime(DateTime.now().year,2,13,), DateTime(DateTime.now().year,2,13,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للعدالة الأجتماعية',    DateTime(DateTime.now().year,2,20,), DateTime(DateTime.now().year,2,20,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للغة الأم',             DateTime(DateTime.now().year,2,21,), DateTime(DateTime.now().year,2,21,23), const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للمرأة',                DateTime(DateTime.now().year,3,8,),  DateTime(DateTime.now().year,3,8,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للنوم',                DateTime(DateTime.now().year,3,16,), DateTime(DateTime.now().year,3,16,23), const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للقضاء على الفقر',      DateTime(DateTime.now().year,3,17,), DateTime(DateTime.now().year,3,17,23), const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للسعادة',               DateTime(DateTime.now().year,3,20,), DateTime(DateTime.now().year,3,20,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمتلازمة داون',         DateTime(DateTime.now().year,3,21,), DateTime(DateTime.now().year,3,21,23), const Color(0xff0497B0), false),
  Meeting('اليوم الأم',                          DateTime(DateTime.now().year,3,21,), DateTime(DateTime.now().year,3,21,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمكافحة مرض السل',     DateTime(DateTime.now().year,3,24,), DateTime(DateTime.now().year,3,24,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للتوحد',               DateTime(DateTime.now().year,4,2,),  DateTime(DateTime.now().year,4,2,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للصحة',                DateTime(DateTime.now().year,4,7,),  DateTime(DateTime.now().year,4,7,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للغجر',                DateTime(DateTime.now().year,4,8,),  DateTime(DateTime.now().year,4,8,23), const Color(0xff0497B0), false),
  Meeting('يوم الأسير الفلسطينى',                DateTime(DateTime.now().year,4,17,), DateTime(DateTime.now().year,4,17,23), const Color(0xff0497B0), false),
  Meeting('يوم التراث العالمى',                 DateTime(DateTime.now().year,4,18,), DateTime(DateTime.now().year,4,18,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للأرض',                 DateTime(DateTime.now().year,4,22,), DateTime(DateTime.now().year,4,22,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للغة الأنجليزية',       DateTime(DateTime.now().year,4,23,), DateTime(DateTime.now().year,4,23,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للأبداع و الأبتكار',     DateTime(DateTime.now().year,4,24,), DateTime(DateTime.now().year,4,24,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للملكية الفكرية',      DateTime(DateTime.now().year,4,26,), DateTime(DateTime.now().year,4,26,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لحرية الصحافة',        DateTime(DateTime.now().year,5,3,),  DateTime(DateTime.now().year,5,3,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى ليتامى الأيدز',         DateTime(DateTime.now().year,5,7,),  DateTime(DateTime.now().year,5,7,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للتمريض',              DateTime(DateTime.now().year,5,12,), DateTime(DateTime.now().year,5,12,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للأسرة',                DateTime(DateTime.now().year,5,15,), DateTime(DateTime.now().year,5,15,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للمتحف',               DateTime(DateTime.now().year,5,18,), DateTime(DateTime.now().year,5,18,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للسلحفاة',             DateTime(DateTime.now().year,5,23,), DateTime(DateTime.now().year,5,23,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للأطفال المختفيين',     DateTime(DateTime.now().year,5,25,), DateTime(DateTime.now().year,5,25,23), const Color(0xff0497B0), false),
  Meeting('يوم أفريقيا',                        DateTime(DateTime.now().year,5,25,), DateTime(DateTime.now().year,5,25,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى من اجل تنمية صحة المرأة', DateTime(DateTime.now().year,5,28,), DateTime(DateTime.now().year,5,28,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى بدون تدخين',              DateTime(DateTime.now().year,5,31,), DateTime(DateTime.now().year,5,31,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للطفولة',                 DateTime(DateTime.now().year,6,1,),  DateTime(DateTime.now().year,6,1,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للبيئة',                  DateTime(DateTime.now().year,6,5,),  DateTime(DateTime.now().year,6,5,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للمحيطات',                DateTime(DateTime.now().year,6,8,),  DateTime(DateTime.now().year,6,8,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمحاربة تشغيل الطفل',     DateTime(DateTime.now().year,6,12,), DateTime(DateTime.now().year,6,12,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمحاربة المجاعة',         DateTime(DateTime.now().year,6,15,), DateTime(DateTime.now().year,6,15,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للاجئين',                  DateTime(DateTime.now().year,6,20,), DateTime(DateTime.now().year,6,20,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمحاربة تعاطى و المتاجرة بالمخدرات', DateTime(DateTime.now().year,6,26,), DateTime(DateTime.now().year,6,26,23), const Color(0xff0497B0), false),
  Meeting('اليوم النوبى العالمى',                  DateTime(DateTime.now().year,7,7,), DateTime(DateTime.now().year,7,7,23), const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للصداقة',                  DateTime(DateTime.now().year,7,30,), DateTime(DateTime.now().year,7,30,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمناهضة الاتجار بالبشر',   DateTime(DateTime.now().year,7,30,), DateTime(DateTime.now().year,7,30,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للشباب',          DateTime(DateTime.now().year,8,12,), DateTime(DateTime.now().year,8,12,23), const Color(0xff0497B0), false),
  Meeting('اليوم الدولى لمحو الأمية',       DateTime(DateTime.now().year,9,8,),  DateTime(DateTime.now().year,9,8,23),  const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمحاربة الأنتحار', DateTime(DateTime.now().year,9,10,), DateTime(DateTime.now().year,9,10,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للسلام',           DateTime(DateTime.now().year,9,21,), DateTime(DateTime.now().year,9,21,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للزهايمر',        DateTime(DateTime.now().year,9,21,), DateTime(DateTime.now().year,9,21,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للمسنيين',        DateTime(DateTime.now().year,10,1,), DateTime(DateTime.now().year,10,1,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للصحة العقلية',   DateTime(DateTime.now().year,10,10,),DateTime(DateTime.now().year,10,10,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للفتاة',          DateTime(DateTime.now().year,10,11,),DateTime(DateTime.now().year,10,11,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لمكافحة السمنة',  DateTime(DateTime.now().year,10,11,),DateTime(DateTime.now().year,10,11,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للحرية',          DateTime(DateTime.now().year,11,9,), DateTime(DateTime.now().year,11,9,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للسكرى',          DateTime(DateTime.now().year,11,14,),DateTime(DateTime.now().year,11,14,23),const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للتسامح',          DateTime(DateTime.now().year,11,16,),DateTime(DateTime.now().year,11,16,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للرجال',          DateTime(DateTime.now().year,11,19,),DateTime(DateTime.now().year,11,19,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لحقوق الطفل',     DateTime(DateTime.now().year,11,20,),DateTime(DateTime.now().year,11,20,23),const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للقضاء على العنف ضد المرأة',     DateTime(DateTime.now().year,11,25,),DateTime(DateTime.now().year,11,25,23),const Color(0xff0497B0), false),
  Meeting('اليوم الدولى للتضامن مع الشعب الفلسطينى',     DateTime(DateTime.now().year,11,29,),DateTime(DateTime.now().year,11,29,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للايدز',                         DateTime(DateTime.now().year,12,1,), DateTime(DateTime.now().year,12,1,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لذوى الاحتياجات الخاصة',         DateTime(DateTime.now().year,12,3,), DateTime(DateTime.now().year,12,3,23), const Color(0xff0497B0), false),
  Meeting('اليوم الدولى لمكافحة الفساد',                 DateTime(DateTime.now().year,12,9,), DateTime(DateTime.now().year,12,9,23), const Color(0xff0497B0), false),
  Meeting('اليوم العالمى لحقوق الأنسان',                  DateTime(DateTime.now().year,12,10,),DateTime(DateTime.now().year,12,10,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للغة العربية',                  DateTime(DateTime.now().year,12,18,),DateTime(DateTime.now().year,12,18,23),const Color(0xff0497B0), false),
  Meeting('اليوم العالمى للمهاجرين',                     DateTime(DateTime.now().year,12,18,),DateTime(DateTime.now().year,12,18,23),const Color(0xff0497B0), false),
  ];

  static Future<void> _saveSetup() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('setUp', true);
  }

  static Future<bool> _isSetup() async {
    final prefs = await SharedPreferences.getInstance();
    bool isSend = false;
    prefs.getBool('setUp') == false ? isSend=false : isSend=true;
    return isSend;
  }

  static Future<bool> setUpNotificationToSend() async {
    if(_isSetup()!= false) {
      tz.initializeTimeZones();
      String currentTimeZone = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(currentTimeZone));
      for (int i = 0; i < MeetingProvider().meetings.length; i++) {
        if(MeetingProvider().meetings[i].from.isAfter(DateTime.now())){
          LocalNotificationService.showSchduledNotification(
            id: i,
            title: "Humanai Team",
            body: "Please note that this international day \"${MeetingProvider().meetings[i].eventName}\" will be tomorrow",
            scheduleDate: tz.TZDateTime(
              tz.local,
              MeetingProvider().meetings[i].from.year,
              MeetingProvider().meetings[i].from.month,
              MeetingProvider().meetings[i].from.day - 1,
              MeetingProvider().meetings[i].from.hour,
              MeetingProvider().meetings[i].from.minute,
              MeetingProvider().meetings[i].from.second,
            ),
            payload: "payload",
            sound: 'sound_notification.wav',
          );
        }
        _saveSetup();
        }
      return true;
    }else{
      LocalNotificationService.showBasicNotification(
          id: 100,
          title: "Humanai Team",
          body: "Please note that messages that alert you about international days have been configured",
          payload: "payload",
          sound: 'default'
      );
      return false;
    }
  }

  // Method to add a new meeting to the list
  void addMeeting(String eventName, DateTime from, DateTime to, Color background, bool isAllDay) {
  meetings.add(Meeting(eventName, from, to, background, isAllDay));
  notifyListeners();
  }




}