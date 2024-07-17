import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:humanai_v2/Pages/Calendar_dir/calendar.dart';
import 'package:humanai_v2/Pages/Chat/ChatWithProvider.dart';
import 'package:humanai_v2/Pages/home.dart';
import 'package:humanai_v2/api/youtupe_api/youtupe_api.dart';
import 'package:provider/provider.dart';
import 'Calendar_dir/meeting_provider.dart';

void main() {
  runApp(const FullApp());
}

class FullApp extends StatefulWidget {
  const FullApp({super.key});
  @override
  State<FullApp> createState() => _ProviderTestState();
}

class _ProviderTestState extends State<FullApp>{

  String bar_title = "Humanai Home";
  int selected_index = 0;
  int page_index = 0;
  PageController pageController = PageController(initialPage: 0);
  ////////////////////////////////////////////////////////////////
  var _selectedTab = _SelectedTab.home;
  // ChatPageView c = ChatPageView();
    void _handleIndexChanged(int i) {
      setState(() {
        _selectedTab = _SelectedTab.values[i];
      });
    }
  ///////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
        return MeetingProvider();
    },
    child: MaterialApp(
      title: 'Humanai',
      home: Scaffold(
        appBar: AppBar(
          title:  Text(bar_title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: ""),),
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: DotNavigationBar(
              backgroundColor: Colors.black,
              duration: const Duration(milliseconds: 1400),
              splashColor: Colors.white12,
              boxShadow: const [
                BoxShadow(color: Colors.black26,spreadRadius: 2,blurRadius: 2)
              ],
              margin: const EdgeInsets.only(left: 10, right: 10),
              currentIndex: _SelectedTab.values.indexOf(_selectedTab),
              dotIndicatorColor: const Color(0xff3E5A96),
              unselectedItemColor: Colors.grey[400],
              selectedItemColor: const Color.fromRGBO(75, 37, 121, 0.9),
              splashBorderRadius: 50,
              onTap: (val) {
                pageController.jumpToPage(val);
              },
              items: [

                /// Home
                DotNavigationBarItem(
                  icon: const Icon(Icons.home),
                ),

                /// Likes
                DotNavigationBarItem(
                  icon: const Icon(Icons.calendar_month_rounded),
                ),

                /// ChatBot
                DotNavigationBarItem(
                  icon: const Icon(Icons.chat_rounded),
                ),

                // /// Profile
                DotNavigationBarItem(
                  icon: const Icon(Icons.newspaper_rounded),
                ),
              ],
            ),
          ),
        ),
        body:Container(
              child: PageView(
                controller: pageController,
                onPageChanged: (val) {
                  setState(() {
                    selected_index = val;
                    _handleIndexChanged(val);
                    val==0 ? bar_title = "Humanai Home": null;
                    val==1 ? bar_title = "Humanai Calendar": null;
                    val==2 ? bar_title = "Humanai ChatBot": null;
                    val==3 ? bar_title = "Humanai Trends": null;
                  });
                },
                children: [
                  const HomePage(),
                  CCalendar(),
                  // const ChatPageView(),
                  const ChatPageViewProvider(),
                  YouTubeApi(),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
enum _SelectedTab { home, favorite, search, person }