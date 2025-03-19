import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class WidgetVideos extends StatefulWidget {
  const WidgetVideos({super.key});

  @override
  State<WidgetVideos> createState() => _WidgetVideosState();
}

class _WidgetVideosState extends State<WidgetVideos> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: YoutubePlayerParams(
        mute: false,
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    _controller.loadVideoById(
        videoId: 'https://www.youtube.com/watch?v=OEKpspxZwmM');
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}
