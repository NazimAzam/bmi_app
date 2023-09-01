import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  Color color = Colors.green;
  final Widget? cardChild;
  final Function? onPress;

  ReuseableCard({required this.color, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      // height: 200,
      // width: 170,

      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
