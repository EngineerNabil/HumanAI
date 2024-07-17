import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:humanai_v2/api/youtupe_api/video_page.dart';

class YouTubeApi extends StatefulWidget{
  YouTubeApi({super.key,});
  @override
  State<YouTubeApi> createState() => _CCalendarState();
}

class _CCalendarState extends State<YouTubeApi> {
  final YouTubeService _youtubeService = YouTubeService();
  Future<List<Video>>? _trendingVideos;

  @override
  void initState() {
    super.initState();
    _trendingVideos = _youtubeService.fetchTrendingVideos();
  }


  // fade page
  Route _createRoute({ required String image , required String title , required String desc} ) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => VideoPage(image: image, title: title, desc: desc,),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var fadeAnimation = animation.drive(tween);
        return FadeTransition(
          opacity: fadeAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder<List<Video>>(
              future: _trendingVideos,
              builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No trending videos found'));
            } else {
              final videos = snapshot.data!;
              return ListView.builder(
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  final video = videos[index];
                  return InkWell(
                    onTap: () => Navigator.of(context).push(_createRoute(image: video.thumbnailUrl , title: video.title , desc: video.description)) ,
                    child: Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
                      child: ListTile(
                        leading: Hero(
                          transitionOnUserGestures: true,
                          tag: video.thumbnailUrl,
                          child: Image(
                            image: NetworkImage(video.thumbnailUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(video.title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        trailing: Text("#${index+1}"),
                        // subtitle: Text(video.description),
                      ),
                    ),
                  );
                },
              );
            }},
            ),
      );
  }
}


class YouTubeService {
  final String _apiKey = 'AIzaSyCWBkyEorpJl-Mci13TzZ775DeROAxldTI';
  Future<List<Video>> fetchTrendingVideos() async {
    final url = Uri.https(
      'www.googleapis.com',
      '/youtube/v3/videos',
      {
        'part': 'snippet',
        'chart': 'mostPopular',
        'regionCode': 'EG',
        'maxResults': '100',
        'key': _apiKey,
      },
    );

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> items = data['items'];
      return items.map((item) => Video.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load trending videos');
    }
  }
}

class Video {
  final String title;
  final String description;
  final String thumbnailUrl;

  Video({
    required this.title,
    required this.description,
    required this.thumbnailUrl,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      title: json['snippet']['title'],
      description: json['snippet']['description'],
      thumbnailUrl: json['snippet']['thumbnails']['default']['url'],
    );
  }
}