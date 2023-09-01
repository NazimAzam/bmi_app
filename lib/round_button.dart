import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({Key? key, this.icon, this.onPressed}) : super(key: key);

  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
    );
  }
}
