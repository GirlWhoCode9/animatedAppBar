import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  double height = 100;
  String barTitle;
  CustomAppBar(this.height, this.barTitle);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: this.height,
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(100)),
            child: Container(
              color: Colors.indigo, alignment: Alignment.center,
              child: Text(
                barTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    shadows: [
                      BoxShadow(
                          offset: Offset( 3 , 3),
                          color: Colors.pinkAccent,
                          blurRadius: 3.0)
                    ]),
              ),
            ),
          ),
        ),
        preferredSize: preferredSize);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(this.height);
}
