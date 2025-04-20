import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final bool secondary;
  final String text;
  final VoidCallback onPressed;
  const ButtonComponent({super.key, this.secondary = false, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Color(0xff32A873),
          elevation: secondary ? 0 : 3,
          foregroundColor: secondary ? Color(0xff32A873) : Colors.black,
          backgroundColor: secondary ? Colors.transparent : Color(0xff32A873),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          side: BorderSide(
            color: Color(0xff32A873),
            width: 1,
          )
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}