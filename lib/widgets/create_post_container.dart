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
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
            ),
            const SizedBox(width: 8,),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "What\'s on your mind?"),
              ),
            )
          ],
        ),
        const Divider(height: 10,thickness: 0.5,),
         Row(
          children: [
            FlatButton.icon(onPressed: (){}, icon:Icon(Icons.videocam,color: Colors.red,), label: Text('Live'))
          ],
        )
      ]),
    );
  }
}