import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final bool hasBorder, isActive, hasMargin;
  ProfileAvatar(
      {this.hasBorder = false, this.isActive = false, this.hasMargin = false});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 50.0,
          height:50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: hasBorder ? 3.0 : 0.0,
              color: hasBorder ? Colors.blue : Colors.white,
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/user.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        isActive
            ? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      border: Border.all(color: Colors.white, width: 2.0)),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
