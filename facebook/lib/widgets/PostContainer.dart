import 'package:flutter/material.dart';
import 'package:facebook/widgets/ProfileAvatar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _title(),
          _content(),
          _information(),
          _iconBar(),
        ],
      ),
    );
  }

  Widget _title() {
    return Container(
      padding: EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                child: ProfileAvatar(),
              ),
              Column(
                children: [
                  Text(
                    'Mohammed Atef Hassan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '55m',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }

  Widget _content() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 11),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'lskdjfhlkhflegwrhgkje kewerfewmrng,ewg ewg jewkgewgklewjg newlkgjbwegkbgkejw   kjrgewrkj gewlrge',
            overflow: TextOverflow.clip,
          ),
        ),
        Image.asset(
          'assets/images/5.jpg',
        ),
      ],
    );
  }

  Widget _information() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt,
                    color: Colors.blue,
                  ),
                  Text(
                    '100',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '121 Comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '34 Shares',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          Divider(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget _iconBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,),
              onPressed: () {
                print('Like');
              }),
          IconButton(
              icon: Icon(MdiIcons.commentOutline,color: Colors.grey,),
              onPressed: () {
                print('Comment');
              }),
          IconButton(
              icon: Icon(MdiIcons.shareOutline,color: Colors.grey,),
              onPressed: () {
                print('Share');
              })
        ],
      ),
    );
  }
}
