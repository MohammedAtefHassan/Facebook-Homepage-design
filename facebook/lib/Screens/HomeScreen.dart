import 'package:facebook/widgets/PostContainer.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/Story.dart';
import 'package:facebook/widgets/ProfileAvatar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  letterSpacing: -1),
            ),
            actions: [
              _iconTab(Icons.search, () => print('Search')),
              _iconTab(MdiIcons.facebookMessenger, () => print('Message'))
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(6),
                        child: ProfileAvatar(
                          hasMargin: true,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                            border: InputBorder.none,
                            hintText: 'What\'s in your mind?',
                            hintStyle:
                                TextStyle(color: Colors.grey[500], shadows: [
                              Shadow(color: Colors.grey[300], blurRadius: 3.0)
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 0.5,
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton.icon(
                        icon: Icon(
                          Icons.videocam,
                          color: Colors.red,
                        ),
                        label: Text('Live'),
                        onPressed: () {
                          print('Live');
                        },
                      ),
                      VerticalDivider(
                        thickness: 5.0,
                        color: Colors.red,
                        width: 10,
                      ),
                      FlatButton.icon(
                        icon: Icon(
                          Icons.photo_library,
                          color: Colors.green,
                        ),
                        label: Text('Photo'),
                        onPressed: () {
                          print('Photo');
                        },
                      ),
                      VerticalDivider(
                        thickness: 5.0,
                        color: Colors.red,
                        width: 10,
                      ),
                      FlatButton.icon(
                        icon: Icon(
                          Icons.video_call,
                          color: Colors.purple[300],
                        ),
                        label: Text('Room'),
                        onPressed: () {
                          print('Room');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 70,
                margin: EdgeInsets.symmetric(vertical: 6),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        margin: EdgeInsets.all(6),
                        child: OutlineButton(
                          onPressed: () {
                            print('Create Room');
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          borderSide: BorderSide(
                            width: 3.0,
                            color: Colors.blueAccent[100],
                          ),
                          textColor: Colors.blue,
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                size: 35.0,
                                color: Colors.purple,
                              ),
                              const SizedBox(width: 4.0),
                              Text('Create\nRoom'),
                            ],
                          ),
                        ),
                      );
                    }
                    return Container(
                      margin: EdgeInsets.all(8),
                      child: ProfileAvatar(
                        hasMargin: true,
                        isActive: true,
                      ),
                    );
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
                color: Colors.white,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Story(),
              margin: EdgeInsets.symmetric(vertical: 6),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 3),
                  color: Colors.white,
                  child: PostContainer(),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconTab(IconData icon, Function onTab) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.all(5),
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
        ),
        child: Icon(
          icon,
          size: 35,
        ),
      ),
    );
  }
}
