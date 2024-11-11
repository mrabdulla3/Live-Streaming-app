import 'package:flutter/material.dart';
import 'package:live_streaming/constant.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage extends StatelessWidget {
  final String userId;
  final String userName;
  final bool isHost;
  final String liveId;
  const LivePage(
      {super.key,
      required this.userName,
      required this.userId,
      this.isHost = false,
      required this.liveId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: Constants.appId,
        appSign: Constants.appSign,
        userID: userId,
        userName: userName,
        liveID: liveId,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    ));
  }
}
