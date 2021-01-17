import 'package:facebook/widgets/ProfileAvatar.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    width: 130,
                    color: Colors.red,
                    child: Image.asset(
                     index==0? 'assets/images/user.jpg':'assets/images/story.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    width: 50,
                    height: 50,
                    child: index == 0
                        ? IconButton(
                            icon: Icon(
                              Icons.add,
                            ),
                            onPressed: () {
                              print('addStory');
                            },
                            iconSize: 30,
                            padding: EdgeInsets.zero,
                            color: Colors.blue,
                          )
                        : ProfileAvatar(hasBorder: true,),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  child: Text(
                    'Mohammed Atef Hassan',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  bottom: 8.0,
                  left: 8.0,
                  right: 8.0,
                )
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
