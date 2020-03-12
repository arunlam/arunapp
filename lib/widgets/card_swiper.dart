import 'package:arunapp/config/app_theme.dart';
import 'package:arunapp/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final Size screenSize;

  const CardSwiper({
    Key key,
    this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _padding = 16.0;
    return SizedBox(
      // width: size.width - (padding * 2),
      height: (screenSize.height * 0.6) - (_padding * 2),
      child: Swiper(
        outer: true,
        itemHeight: (screenSize.height * 0.6) - (_padding * 6),
        itemWidth: screenSize.width - (_padding * 2),
        onIndexChanged: (int index) {
          print('$index');
        },
        onTap: (int index) {
          print('$index');
        },
        itemCount: Menus.menuList.length,
        layout: SwiperLayout.STACK,
        scrollDirection: Axis.vertical,
        viewportFraction: 0.7,
        scale: 0.5,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: white54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: screenSize.width - (_padding * 2),
                  height: (screenSize.height * 0.6) - (_padding * 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Menus.menuList[index].color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(Menus.menuList[index].title),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
