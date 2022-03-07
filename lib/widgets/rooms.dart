import 'package:facebook_ui/config/palette.dart';
import 'package:facebook_ui/data/data.dart';
import 'package:facebook_ui/widgets/profile.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;

  const Room({
    Key? key,
    required this.onlineUsers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: onlineUsers.length,
        itemBuilder: (BuildContext cxt, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _CreateRoomButton(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Padding(padding: EdgeInsets.symmetric(horizontal: 8),
          child: ProfileAvatar(imageUrl: user.imageUrl,isActive: true,),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 3,
        color: Colors.blueAccent,
      ),
      onPressed: () {
        print('Create Room');
      },
      child: Row(
        children: [
          ShaderMask(
              shaderCallback: (rect) =>
                  Palette.createRoomGradient.createShader(rect),
              child: Icon(
                Icons.video_call,
                size: 35,
                color: Colors.white,
              )),
          const SizedBox(
            width: 4,
          ),
          Text('Create\nRoom')
        ],
      ),
    );
  }
}
