import 'package:facebook_ui/widgets/circle_button.dart';
import 'package:facebook_ui/widgets/create_post_container.dart';
import 'package:facebook_ui/widgets/rooms.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            centerTitle: false,
            floating: true,
            title: Text(
              'facebook',
              style: TextStyle(
                  fontSize: 28,
                  letterSpacing: -1.2,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30,
                onPressedbtn: () => print("Search"),
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30,
                onPressedbtn: () => print("Messenger"),
              )
            ],
          ),
          SliverToBoxAdapter(child: CreatePostContainer()),
          SliverPadding(
            padding:  const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(child: Room(),))
        ],
      ),
    );
  }
}
