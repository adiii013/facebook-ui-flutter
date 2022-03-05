import 'package:facebook_ui/data/data.dart';
import 'package:facebook_ui/widgets/profile.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            ProfileAvatar(imageUrl: currentUser.imageUrl),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "What\'s on your mind?"),
              ),
            )
          ],
        ),
        const Divider(
          height: 10,
          thickness: 0.5,
        ),
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                  onPressed: () {},
                  icon:const  Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label:const Text('Live')),
             const VerticalDivider(
                indent: 5,
              endIndent: 5,
                thickness: 0.8,
                color: Colors.grey,
              ),
              FlatButton.icon(
                  onPressed: () {},
                  icon:const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label:const Text('Photo')),
             const VerticalDivider(
                indent: 5,
                endIndent: 5,
                thickness: 0.5,
                color: Colors.grey,
              ),
              FlatButton.icon(
                  onPressed: () {},
                  icon:const Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  label:const Text('Room')),
            ],
          ),
        )
      ]),
    );
  }
}
