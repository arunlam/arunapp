import 'package:flutter/material.dart';

class RoundedUserWidget extends StatelessWidget {
  final double imgSize;
  final String imgPath;
  final String username;
  final String fullname;
  final bool isOnline;
  final bool showOnline;

  const RoundedUserWidget(
      {Key key,
      this.imgSize,
      this.imgPath,
      this.username,
      this.fullname,
      this.isOnline,
      this.showOnline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(8),
      // height: imgSize + 16,
      child: Stack(
        children: <Widget>[
          CustomPaint(
            child: Container(
              width: imgSize,
              height: imgSize,
              child: ClipOval(
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
