import 'package:arunapp/config/app_theme.dart';
import 'package:arunapp/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final Size size;
  final SwiperLayout layout;
  final Axis scrollDirection;
  final double viewpointFraction;
  final double scale;
  final Widget child;
  final List list;
  final double padding;
  final double heightFraction;
  final Color color;
  final double borderRadius;

  const CardSwiper(
      {Key key,
      this.size,
      this.layout,
      this.scrollDirection,
      this.viewpointFraction,
      this.scale,
      this.child,
      this.list,
      this.padding = 8.0,
      this.heightFraction = 0.5,
      this.color,
      this.borderRadius = 8.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: size.width - (padding * 2),
      height: size.height * heightFraction - 32,
      child: Swiper(
        outer: true,
        itemHeight: (size.height * 0.6) - (padding * 6),
        itemWidth: size.width - (padding * 2),
        onIndexChanged: (int index) {
          print('${index}');
        },
        onTap: (int index) {},
        itemCount: list.length,
        layout: layout,
        scrollDirection: scrollDirection,
        viewportFraction: viewpointFraction,
        scale: scale,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              Container(
                // width: size.width,
                // height: size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: white54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: size.width - 32,
                  height: size.height - 32,
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
