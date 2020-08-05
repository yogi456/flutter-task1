import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Video Player';

    var my_player = VideoPlayerController.asset('myvideos/iiec-python.MP4');
    var ch = ChewieController(
      videoPlayerController: my_player,
      aspectRatio: 1.5,
      autoPlay: true,
      looping: false,
    );

    var sec_player = VideoPlayerController.network(
        "https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/Paniyon+Sa+-+Satyameva+Jayate+(HD+720p).mp4");

    var cont1 = ChewieController(
      videoPlayerController: sec_player,
      aspectRatio: 1.5,
      autoPlay: true,
      looping: false,
    );

    var third_player = VideoPlayerController.network(
        "https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/Dil+Meri+Na+Sune+-+Genius+(HD+720p)(1).mp4");

    var cont2 = ChewieController(
      videoPlayerController: third_player,
      aspectRatio: 1.5,
      autoPlay: true,
      looping: false,
    );

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Video Player"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 300.0,
                //color: Colors.amber,
                child: Container(
                  //width: 400,
                  //height: 400,
                  //color: Colors.blue.shade100,
                  // margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://elasticbeanstalk-ap-south-1-204664381562.s3.ap-south-1.amazonaws.com/iuieecc.jpg'),
                      ),
                      //borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.amber.shade600),
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    width: 300,
                    child: Chewie(
                      controller: ch,
                    ),
                  ),
                ),
              ),
              Container(
                  width: 300.0,
                  //color: Colors.yellow,

                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://m.media-amazon.com/images/M/MV5BYzYxNGI3MmYtMWQyMi00NmViLWE0ZWQtNWM5ZTY3NTIxNzU0XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg'),
                          fit: BoxFit.cover),
                      //borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.amber.shade600),
                      borderRadius: BorderRadius.circular(12)),
                  child: Chewie(
                    controller: cont1,
                  )),
              Container(
                width: 300.0,
                color: Colors.orange,
                child: Chewie(
                  controller: cont2,
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
