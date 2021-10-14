
import 'package:amedia_ui/Basic.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;
  const VideoPlayerWidget({
    Key key,
    @required this.controller,
  }): super(key:key);
  @override
  Widget build(BuildContext context) {
    return  controller != null && controller.value.initialized ?
    Container(alignment:Alignment.topCenter,child:buildVideo() ,)
        :Container(
            height: 200.0,
          child: Center(child: CircularProgressIndicator()),
    );
  }
  Widget buildVideo()=> Stack(
    children: [
      buildVideoPlayer(),
      Positioned.fill(child: Basic(controller: controller))
    ],
  );
  Widget buildVideoPlayer()=> AspectRatio(
    aspectRatio: controller.value.aspectRatio,
    child: VideoPlayer(controller),
  );
}
