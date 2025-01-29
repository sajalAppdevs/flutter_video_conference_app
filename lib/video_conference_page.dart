import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

import 'package:flutter_video_conference_app/zego_config.dart';

class VideoConferencePage extends StatelessWidget {
  final String userName;
  final String conferenceID;

  const VideoConferencePage({
    super.key,
    required this.userName,
    required this.conferenceID,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: ZegoConfig
            .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: ZegoConfig
            .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: userName.replaceAll(' ', ''),
        userName: userName,
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(
          leaveConfirmDialogInfo: ZegoLeaveConfirmDialogInfo(
            title: 'Leave the room?',
            message: 'Are you sure you want to leave the room?',
            cancelButtonName: 'Cancel',
            confirmButtonName: 'OK',
          ),
          turnOnMicrophoneWhenJoining: false,
          avatarBuilder: (context, size, user, extraInfo) {
            return Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://i.pravatar.cc/150?u=$userName',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
