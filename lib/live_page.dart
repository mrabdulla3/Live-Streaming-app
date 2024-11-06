import 'package:flutter/material.dart';
import 'package:live_streaming/constant.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage extends StatefulWidget {
  final String userId;
  final String userName;
  final bool isHost;
  final String liveId;
  const LivePage(
      {super.key,
      required this.userName,
      required this.userId,
      required this.isHost,
      required this.liveId});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: Constants.appId,
        appSign: Constants.appSign,
        userID: widget.userId,
        userName: widget.userName,
        liveID: widget.liveId,
        config: widget.isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    ));
  }
}
