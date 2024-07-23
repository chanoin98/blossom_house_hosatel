import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:ShapeDecoration(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
topRight: Radius.circular(30),
bottomLeft: Radius.circular(30),
bottomRight: Radius.circular(30),
          ),
        ),
        shadows:[
          BoxShadow(
            color:Color(0x7f2e8b57),
            blurRadius:4,
            offset:Offset(1,4),
            spreadRadius:0,
          ),
        ],
      ),
    );
  }
}