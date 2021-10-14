import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class Basic extends StatelessWidget {
  final VideoPlayerController controller;
  const Basic({
    Key key,
    @required this.controller,
  }): super(key:key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: ()=> controller.value.isPlaying ?controller.pause():controller.play(),
      child: Stack(
        children: <Widget>[
          buildPlay(),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: buildIndikator())
        ],
      ),
    );
  }
  Widget buildIndikator()=> VideoProgressIndicator(
    controller,
    colors: VideoProgressColors(
      backgroundColor:Colors.white70,
      playedColor: Colors.orange,
      bufferedColor: Color(0xFF818181),
    ),
    allowScrubbing: true,);
  Widget buildPlay()=>controller.value.isPlaying
      ?  Container()
      :Container(
      alignment: Alignment.center,
      color: Colors.black26,
      child: Icon(
        Icons.play_arrow,color: Colors.white,size: 88.0,));
}

