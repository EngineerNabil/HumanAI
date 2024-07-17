import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:humanai_v2/Pages/AppWithPageView.dart';
import 'package:humanai_v2/Pages/Chat/message_provider.dart';
import 'package:humanai_v2/Pages/gradient.dart';
import 'package:humanai_v2/api/google_trends_api/google_trends_api.dart';
import 'package:humanai_v2/api/youtupe_api/youtupe_api.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), (){
      // for test chat page with provider
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => ChangeNotifierProvider(
            create: (context) {
              return MessageProvider();
            },
            child: const FullApp())
            // child: YouTubeApi())    // for youTube Api
            // child: TrendsScreen())  // for google trends Api
        )
      );
    }
    );
  }

  @override
  void dispose(){
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Humanai',
      home: Scaffold(
        body: Container(
          width: screenWidth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white,Colors.white],
                // [Color(0xff4B2579),Color(0xff3E5A96), Color(0xff0497B0)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40.0, left: 40.0 , bottom: 10),
                child: Image.asset(
                  "Images/HumanAiWithoutSlogan.png",
                  alignment: Alignment.center,
                ),
              ),
              const GradientText(
                text: "Creators",
                gradient: LinearGradient(colors: [
                  Color(0xff4B2579),Color(0xff3E5A96), Color(0xff0497B0), Color(0xff00EDD0),
                ]),
                style: TextStyle(fontSize: 40.0, fontFamily: "ExpoArabic" , fontWeight: FontWeight.w800),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 40)),
              Image.asset("Images/icons8-loading.gif")
            ],
          ),
        ),
      ),
    );



  }

}