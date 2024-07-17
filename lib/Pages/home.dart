import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:humanai_v2/Pages/gradient.dart';
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) , bottomRight: Radius.circular(30)),
                      image:DecorationImage(
                        image: AssetImage("Images/Team.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) , bottomRight: Radius.circular(30)),
                          ),
                        ),
                        const Center(
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(0.0),
                                child: Text("ABOUT US", style: TextStyle(color: Colors.white,fontSize: 30,decoration: TextDecoration.none , fontStyle: FontStyle.italic,),),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 10,
                          child: Container(
                            height: 95,
                              width: MediaQuery.of(context).size.width,
                              child:  DefaultTextStyle(
                                    style: const TextStyle(fontSize: 20,color: Colors.white),
                                    child:
                                    AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        RotateAnimatedText('WE ARE...', textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 30, ),alignment: Alignment.topCenter),
                                        RotateAnimatedText('HUMANAI CREATORS',  textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 25, ),alignment: Alignment.topCenter),
                                      ],
                                    ),
                                  ),
                            ),
                        ),
                      ],
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration:  BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: const BorderRadius.all(Radius.circular(30))
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const GradientText(
                          text: "What is HUMANAI ?",
                          gradient: LinearGradient(colors: [
                            Color(0xff4B2579),Color(0xff3E5A96), Color(0xff0497B0), Color(0xff00EDD0),
                          ]),
                          style: TextStyle(fontSize: 25.0, fontFamily: "ExpoArabic" , fontWeight: FontWeight.w800,decoration: TextDecoration.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                                children: [
                                  TextSpan(text: "HUMANAI", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff4B2579))),
                                  TextSpan(text: " is an awareness campaign within a graduation project created by 14 students at Mass Communication Cairo University English Section. The campaign launched on social media in February 2024 and talks about the relationship between humans and artificial intelligence (AI) and its various forms.", ),
                                ],
                              ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        const GradientText(
                          text: "Reason behind HUMANAI :",
                          gradient: LinearGradient(colors: [
                            Color(0xff4B2579),Color(0xff3E5A96), Color(0xff0497B0), Color(0xff00EDD0),
                          ]),
                          style: TextStyle(fontSize: 25.0, fontFamily: "ExpoArabic" , fontWeight: FontWeight.w800,decoration: TextDecoration.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "Lately, artificial intelligence (AI) has been very popular and is being utilised in both useful and harmful ways, and it will be a catastrophe if humans don’t know how to deal with and exploit it effectively. So, we decided to launch the ", ),
                                TextSpan(text: "HUMANAI ", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff4B2579))),
                                TextSpan(text: "campaign (AI) to decrease people's fears and raise their awareness about AI, which we are obliged to deal with shortly.", ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        const GradientText(
                          text: "Our Goals :",
                          gradient: LinearGradient(colors: [
                            Color(0xff4B2579),Color(0xff3E5A96), Color(0xff0497B0), Color(0xff00EDD0),
                          ]),
                          style: TextStyle(fontSize: 25.0, fontFamily: "ExpoArabic" , fontWeight: FontWeight.w800,decoration: TextDecoration.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)),
                                TextSpan(text: "Spreading awareness among youth about artificial intelligence.", ),
                                TextSpan(text: "\n \n•	", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)),
                                TextSpan(text: "Promote Benefits: We seek to highlight the positive impact of AI in various domains such as healthcare, transportation, education, and business.", ),
                                TextSpan(text: "\n \n•	", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)),
                                TextSpan(text: "Raise Awareness of Risks: It is equally important to educate individuals about the potential risks and challenges associated with AI.", ),
                                TextSpan(text: "\n \n•	", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)),
                                TextSpan(text: "Make our target audience differentiate between the real and fake content.", ),
                                TextSpan(text: "\n \n•	", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)),
                                TextSpan(text: "As we are a neutral campaign, we try to provide a balanced way of using AI that our audience should adapt.", ),
                              ],
                            ),
                          ),
                        ),


                        const GradientText(
                          text: "\n \n EVENTS AND \n PUBLIC RELATIONS \n",
                          gradient: LinearGradient(colors: [
                            Color(0xff4B2579),Color(0xff3E5A96), Color(0xff0497B0), Color(0xff00EDD0),
                          ]),
                          style: TextStyle(fontSize: 25.0, fontFamily: "ExpoArabic" , fontWeight: FontWeight.w800,decoration: TextDecoration.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "• the Department of Radio and Television : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/1.1.png", fit: BoxFit.cover,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/1.2.png", fit: BoxFit.fill,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/1.3.png", fit: BoxFit.cover,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We participated in the first home research forum for the Department of Radio and Television for the year 2023, under the patronage of His Eminence Professor Dr. Mohamed El-Khasht, President of Cairo University, and Dr. Soraya El-Badawi, Dean of the Faculty of Mass Communication in Cairo. This conference is the first of its kind to address the topic of artificial intelligence and future technology.\n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "• EDUGATE : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/2.2.png", fit: BoxFit.fill,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/2.1.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "Edugate is a leading educational service and consultancy firm that focuses on higher education and skills development in the Middle East and North Africa region. \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	National Council for Women : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/3.1.png", fit: BoxFit.cover,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/3.2.png", fit: BoxFit.fill,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/3.3.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We attended a workshop that was about the relationship between women and artificial intelligence organized by the National Council for Women. The workshop talks about using artificial intelligence techniques to confront violence against women and how women were affected by artificial intelligence and its risks to them. \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	Celebrating Ramadan : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/4.1.png", fit: BoxFit.fitHeight,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "During the holy month of Ramadan, Humanai celebrated with the community by distribuing Ramadan lanterns in exchange for following our social media pages and providing them with a summary of our project idea.We seized this opportunity to invite them to follow us on social media. \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	Share a Smile : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/5.1.png", fit: BoxFit.cover,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/5.2.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/5.3.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We participated in the Share a Smile Event, where we provided assistance to people who need support by distributing meals to people and helping in canning and preparing food, and distributing it to the poor and needy. During the event, we met with Kinda Alosh who supported the campaign.  \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	Orphan's Day at Resala Charitable Society : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/6.1.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/6.2.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We attended an event on Orphan Day affiliated with Resala Association, and we spent time with the orphan children and put a smile on their faces, and we distributed clothes and Ramadan meals to them.   \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	EduTech : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/7.1.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/7.2.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We attended the EduTech event, the international fair and forum for technical, which was organized by the Ministry of Communications and Information Technology, and we carried out many activities, including conducting interviews with the attendees, where we asked them a set of questions and played games with them related to artificial intelligence.  \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	Humanai : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/8.1.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/8.2.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "the first event for us at Cairo University in front of mass communication. We distibute promotional materials like pens,zmedals shaped like cute robots, as well as mugs, all are branded and there is also a photobooth where our audience can capture there photos.  \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	Contests : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2023", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/9.1.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/9.2.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/9.3.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/9.4.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We also create card games related to AI like Characters, information and Movies , and there was also a spinning wheel, and everyone who won in any of the games received a gift from the promotional materials  available as a kind of souvenir.  \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	The Second International Forum on Artificial Intelligence, under the auspices of the Presidency of the Council of Ministers : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2024", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/10.1.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/10.2.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/10.3.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/10.4.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We were pleased to be part of the Second Artificial Intelligence Forum for Youth, in the presence of Dr. Ashraf Sobhi, Minister of Youth and Sports. \n", ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "•	6th of October club : ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                TextSpan(text: "2024", style: TextStyle(fontSize: 10 ,)),
                              ],
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 240,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(30) ),
                          ),
                          child: Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/11.1.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/11.2.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/11.3.png", fit: BoxFit.scaleDown,),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width- 80,
                                      height: 200,
                                      child: Image.asset("Images/Events/11.4.png", fit: BoxFit.scaleDown,),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  right: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                              const Positioned(
                                  left: 5,
                                  top: 90,
                                  child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff0497B0), size: 40,)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 15, right: 10),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "ExpoArabic" ,decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(text: "We held an event at the 6th of October Club. In this event, we hosted a group of speakers and experts in the field of artificial intelligence, including: Eng. Mazen Hassan, Eng. Mohamed Abdo, Eng. Hassan Talal, and Eng. Mohamed Mosleh.  \n", ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              ////////////////
              //  Sponsers  //
              ////////////////

              // Container(
              //   decoration:  BoxDecoration(
              //       color: Colors.grey[100],
              //       borderRadius: const BorderRadius.all(Radius.circular(30))
              //   ),
              //   child: Padding(
              //     padding: EdgeInsets.all(10.0),
              //     child: SingleChildScrollView(
              //       scrollDirection: Axis.vertical,
              //       child: Column(
              //         children: [
              //
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              ////////////
              //  Rive  //
              ////////////

              // Container(
              //   height: 300,
              //   width: MediaQuery.of(context).size.width,
              //   child: const RiveAnimation.asset(
              //     'Images/robot_with_human.riv',
              //     alignment: Alignment.center,
              //     fit: BoxFit.fill,
              //   ),
              // ),
              // Container(
              //   height: 50,
              //   width: 50,
              //   child: const RiveAnimation.asset(
              //     'Images/loading.riv',
              //     alignment: Alignment.center,
              //     fit: BoxFit.fill,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}