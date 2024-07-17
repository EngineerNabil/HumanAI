import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class VideoPage extends StatefulWidget{
  String image;
  String title;
  String desc;
  VideoPage({super.key, required this.image , required this.title , required this.desc ,});
  @override
  State<VideoPage> createState() => _VideoPage();
}
class _VideoPage extends State<VideoPage> {
  List menu = [
    {
      "title" : "title1",
      "desc"  : "desc1"
    },
    {
      "title" : "title2",
      "desc"  : "desc2"
    },
    {
      "title" : "title3",
      "desc"  : "desc4"
    },
    {
      "title" : "title4",
      "desc"  : "desc4"
    }
    ,{
      "title" : "title1",
      "desc"  : "desc1"
    },
    {
      "title" : "title2",
      "desc"  : "desc2"
    },
    {
      "title" : "title3",
      "desc"  : "desc4"
    },
    {
      "title" : "title4",
      "desc"  : "desc4"
    }
    ,{
      "title" : "title1",
      "desc"  : "desc1"
    },
    {
      "title" : "title2",
      "desc"  : "desc2"
    },
    {
      "title" : "title3",
      "desc"  : "desc4"
    },
    {
      "title" : "title4",
      "desc"  : "desc4"
    }
];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: screenHeight * 0.6,
            elevation: 0,
            snap: true,
            floating: true,
            stretch: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
              ],
              background: Hero(
                transitionOnUserGestures: true,
                tag: widget.image,
                child: Image(
                  image: NetworkImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(screenHeight * 0.01),
              child: Container(
                height: screenHeight*0.06,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Container(
                    height: screenHeight*0.011,
                    width: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
            Container(
            color: Colors.white,
            padding:  EdgeInsets.all(screenWidth * 0.04),
            child:
            ListTile(
              title: Text(widget.title, style: const TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
              subtitle: Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.08),
                child: Text(widget.desc),
              ),
            ),
           ),
            ]),
          ),
        ],
      )
    );
  }
}