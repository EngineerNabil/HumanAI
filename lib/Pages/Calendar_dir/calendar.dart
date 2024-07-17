  // List<Meeting> _getDataSource(){
  //   final List<Meeting> meetings = <Meeting>[];
  //   final DateTime today = DateTime.now();
  //   final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0,);
  //   final DateTime endTime = startTime.add(const Duration(hours: 2));
  //   meetings.add(Meeting('اليوم العالمى للأسرة',                DateTime(DateTime.now().year,1,1,),  DateTime(DateTime.now().year,1,1,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للسلام',                DateTime(DateTime.now().year,1,1,),  DateTime(DateTime.now().year,1,1,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للبرايل',              DateTime(DateTime.now().year,1,4,),  DateTime(DateTime.now().year,1,4,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للتعليم',               DateTime(DateTime.now().year,1,24,), DateTime(DateTime.now().year,1,24,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمكافحة مرض السرطان',  DateTime(DateTime.now().year,2,4,),  DateTime(DateTime.now().year,2,4,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الاذاعة العالمى',               DateTime(DateTime.now().year,2,13,), DateTime(DateTime.now().year,2,13,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للعدالة الأجتماعية',    DateTime(DateTime.now().year,2,20,), DateTime(DateTime.now().year,2,20,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للغة الأم',             DateTime(DateTime.now().year,2,21,), DateTime(DateTime.now().year,2,21,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للمرأة',                DateTime(DateTime.now().year,3,8,),  DateTime(DateTime.now().year,3,8,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للنوم',                DateTime(DateTime.now().year,3,16,), DateTime(DateTime.now().year,3,16,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للقضاء على الفقر',      DateTime(DateTime.now().year,3,17,), DateTime(DateTime.now().year,3,17,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للسعادة',               DateTime(DateTime.now().year,3,20,), DateTime(DateTime.now().year,3,20,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمتلازمة داون',         DateTime(DateTime.now().year,3,21,), DateTime(DateTime.now().year,3,21,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الأم',                          DateTime(DateTime.now().year,3,21,), DateTime(DateTime.now().year,3,21,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمكافحة مرض السل',     DateTime(DateTime.now().year,3,24,), DateTime(DateTime.now().year,3,24,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للتوحد',               DateTime(DateTime.now().year,4,2,),  DateTime(DateTime.now().year,4,2,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للصحة',                DateTime(DateTime.now().year,4,7,),  DateTime(DateTime.now().year,4,7,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للغجر',                DateTime(DateTime.now().year,4,8,),  DateTime(DateTime.now().year,4,8,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('يوم الأسير الفلسطينى',                DateTime(DateTime.now().year,4,17,), DateTime(DateTime.now().year,4,17,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('يوم التراث العالمى',                 DateTime(DateTime.now().year,4,18,), DateTime(DateTime.now().year,4,18,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للأرض',                 DateTime(DateTime.now().year,4,22,), DateTime(DateTime.now().year,4,22,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للغة الأنجليزية',       DateTime(DateTime.now().year,4,23,), DateTime(DateTime.now().year,4,23,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للأبداع و الأبتكار',     DateTime(DateTime.now().year,4,24,), DateTime(DateTime.now().year,4,24,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للملكية الفكرية',      DateTime(DateTime.now().year,4,26,), DateTime(DateTime.now().year,4,26,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لحرية الصحافة',        DateTime(DateTime.now().year,5,3,),  DateTime(DateTime.now().year,5,3,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى ليتامى الأيدز',         DateTime(DateTime.now().year,5,7,),  DateTime(DateTime.now().year,5,7,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للتمريض',              DateTime(DateTime.now().year,5,12,), DateTime(DateTime.now().year,5,12,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للأسرة',                DateTime(DateTime.now().year,5,15,), DateTime(DateTime.now().year,5,15,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للمتحف',               DateTime(DateTime.now().year,5,18,), DateTime(DateTime.now().year,5,18,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للسلحفاة',             DateTime(DateTime.now().year,5,23,), DateTime(DateTime.now().year,5,23,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للأطفال المختفيين',     DateTime(DateTime.now().year,5,25,), DateTime(DateTime.now().year,5,25,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('يوم أفريقيا',                        DateTime(DateTime.now().year,5,25,), DateTime(DateTime.now().year,5,25,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى من اجل تنمية صحة المرأة', DateTime(DateTime.now().year,5,28,), DateTime(DateTime.now().year,5,28,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى بدون تدخين',              DateTime(DateTime.now().year,5,31,), DateTime(DateTime.now().year,5,31,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للطفولة',                 DateTime(DateTime.now().year,6,1,),  DateTime(DateTime.now().year,6,1,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للبيئة',                  DateTime(DateTime.now().year,6,5,),  DateTime(DateTime.now().year,6,5,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للمحيطات',                DateTime(DateTime.now().year,6,8,),  DateTime(DateTime.now().year,6,8,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمحاربة تشغيل الطفل',     DateTime(DateTime.now().year,6,12,), DateTime(DateTime.now().year,6,12,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمحاربة المجاعة',         DateTime(DateTime.now().year,6,15,), DateTime(DateTime.now().year,6,15,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للاجئين',                  DateTime(DateTime.now().year,6,20,), DateTime(DateTime.now().year,6,20,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمحاربة تعاطى و المتاجرة بالمخدرات', DateTime(DateTime.now().year,6,26,), DateTime(DateTime.now().year,6,26,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم النوبى العالمى',                  DateTime(DateTime.now().year,7,7,), DateTime(DateTime.now().year,7,7,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للصداقة',                  DateTime(DateTime.now().year,7,30,), DateTime(DateTime.now().year,7,30,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمناهضة الاتجار بالبشر',   DateTime(DateTime.now().year,7,30,), DateTime(DateTime.now().year,7,30,23), const Color(0xff0497B0), false));
  //
  //   meetings.add(Meeting('اليوم العالمى للشباب',          DateTime(DateTime.now().year,8,12,), DateTime(DateTime.now().year,8,12,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى لمحو الأمية',       DateTime(DateTime.now().year,9,8,),  DateTime(DateTime.now().year,9,8,23),  const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمحاربة الأنتحار', DateTime(DateTime.now().year,9,10,), DateTime(DateTime.now().year,9,10,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للسلام',           DateTime(DateTime.now().year,9,21,), DateTime(DateTime.now().year,9,21,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للزهايمر',        DateTime(DateTime.now().year,9,21,), DateTime(DateTime.now().year,9,21,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للمسنيين',        DateTime(DateTime.now().year,10,1,), DateTime(DateTime.now().year,10,1,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للصحة العقلية',   DateTime(DateTime.now().year,10,10,),DateTime(DateTime.now().year,10,10,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للفتاة',          DateTime(DateTime.now().year,10,11,),DateTime(DateTime.now().year,10,11,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لمكافحة السمنة',  DateTime(DateTime.now().year,10,11,),DateTime(DateTime.now().year,10,11,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للحرية',          DateTime(DateTime.now().year,11,9,), DateTime(DateTime.now().year,11,9,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للسكرى',          DateTime(DateTime.now().year,11,14,),DateTime(DateTime.now().year,11,14,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للتسامح',          DateTime(DateTime.now().year,11,16,),DateTime(DateTime.now().year,11,16,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للرجال',          DateTime(DateTime.now().year,11,19,),DateTime(DateTime.now().year,11,19,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لحقوق الطفل',     DateTime(DateTime.now().year,11,20,),DateTime(DateTime.now().year,11,20,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للقضاء على العنف ضد المرأة',     DateTime(DateTime.now().year,11,25,),DateTime(DateTime.now().year,11,25,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى للتضامن مع الشعب الفلسطينى',     DateTime(DateTime.now().year,11,29,),DateTime(DateTime.now().year,11,29,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للايدز',                         DateTime(DateTime.now().year,12,1,), DateTime(DateTime.now().year,12,1,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لذوى الاحتياجات الخاصة',         DateTime(DateTime.now().year,12,3,), DateTime(DateTime.now().year,12,3,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم الدولى لمكافحة الفساد',                 DateTime(DateTime.now().year,12,9,), DateTime(DateTime.now().year,12,9,23), const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى لحقوق الأنسان',                  DateTime(DateTime.now().year,12,10,),DateTime(DateTime.now().year,12,10,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للغة العربية',                  DateTime(DateTime.now().year,12,18,),DateTime(DateTime.now().year,12,18,23),const Color(0xff0497B0), false));
  //   meetings.add(Meeting('اليوم العالمى للمهاجرين',                     DateTime(DateTime.now().year,12,18,),DateTime(DateTime.now().year,12,18,23),const Color(0xff0497B0), false));
  //   return meetings;
  // }


import 'package:flutter/material.dart';
import 'package:humanai_v2/Pages/Calendar_dir/meeting_data_source.dart';
import 'package:humanai_v2/Pages/Calendar_dir/meeting_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CCalendar extends StatefulWidget{
  CCalendar({super.key});
  @override
  State<CCalendar> createState() => _CCalendarState();
}

class _CCalendarState extends State<CCalendar> {
  CalendarView calendarView = CalendarView.month;
  CalendarController  calendarController = CalendarController();
  Set<String> selected = {"month"};
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MeetingProvider>(context);
    return ChangeNotifierProvider(
      create: (context) {
        return MeetingProvider();
      },
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SegmentedButton(
                      segments: const [
                        ButtonSegment(
                            value: 'month',
                            label: Text("MonthView"),
                            icon: Icon(Icons.calendar_view_month)
                        ),
                        ButtonSegment(
                            value: 'week',
                            label: Text("WeekView"),
                            icon: Icon(Icons.calendar_view_week)
                        ),
                        ButtonSegment(
                            value: 'day',
                            label: Text("DayView"),
                            icon: Icon(Icons.calendar_view_day)
                        ),
                      ],
                      onSelectionChanged: (Set<String> newSelected) {
                        setState(() {
                          selected = newSelected;
                        });
                        if(selected.first == 'month'){
                          calendarView = CalendarView.month;
                          calendarController.view = calendarView;
                        }else if(selected.first == 'week'){
                          calendarView = CalendarView.week;
                          calendarController.view = calendarView;
                        }else {
                          calendarView = CalendarView.day;
                          calendarController.view = calendarView;
                        }
                      },
                      selected: selected,
                    ),
                    // OutlinedButton(
                    //   onPressed: () {
                    //     calendarView = CalendarView.month;
                    //     calendarController.view = calendarView;
                    //   },
                    //   child: const Text("Months View"),
                    // ),
                    // OutlinedButton(
                    //   onPressed: () {
                    //     calendarView = CalendarView.week;
                    //     calendarController.view = calendarView;
                    //   },
                    //   child: const Text("Weeks View"),
                    // ),
                    // OutlinedButton(
                    //   clipBehavior: const ClipRect().clipBehavior,
                    //   onPressed: () {
                    //     calendarView = CalendarView.day;
                    //     calendarController.view = calendarView;
                    //   },
                    //   child: const Text("Days View"),
                    // ),
                    // OutlinedButton(
                    //   clipBehavior: const ClipRect().clipBehavior,
                    //   onPressed: () {
                    //     provider.addMeeting('Mica', DateTime.now(), DateTime.now().add(const Duration(hours: 10)),const  Color(0xff3E5A96), false);
                    //   },
                    //   child: const Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text("Add Event"),
                    //       Icon(Icons.add,size: 25, color:  Color.fromRGBO(75, 37, 121, 0.9), ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height- 254,
                      child: SfCalendar(
                        backgroundColor: Colors.white,
                        headerStyle: const CalendarHeaderStyle(backgroundColor: Colors.black45,textAlign: TextAlign.center, textStyle: TextStyle(color:  Color(0xff3E5A96)) ),
                        view: calendarView,
                        initialSelectedDate: DateTime.now(),
                        controller: calendarController,
                        cellBorderColor: Colors.transparent,
                        dataSource: MeetingDataSource(provider.meetings),
                        viewHeaderHeight: 50,
                        viewHeaderStyle: const ViewHeaderStyle(dayTextStyle: TextStyle(fontWeight: FontWeight.bold)),
                        selectionDecoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: const Color(0xff3E5A96), width: 2),
                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                        ),
                        monthViewSettings: const MonthViewSettings(
                          appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
                          showAgenda: true,
                        ),
                        blackoutDates: [
                          DateTime.now().subtract(const Duration(hours: 48)),
                          DateTime.now().subtract(const Duration(hours: 24)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}