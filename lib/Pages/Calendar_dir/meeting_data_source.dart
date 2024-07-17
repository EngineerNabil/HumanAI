import 'dart:ui';

import 'package:humanai_v2/Pages/Calendar_dir/meeting.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MeetingDataSource extends CalendarDataSource{

  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  DateTime getStartTime(int index){
    return appointments![index].from;
  }

  DateTime getEndTime(int index){
    return appointments![index].to;
  }

  String getSubject(int index){
    return appointments![index].eventName;
  }

  Color getColor(int index){
    return appointments![index].background;
  }

  bool isAllDay(int index){
    return appointments![index].isAllDay;
  }

}