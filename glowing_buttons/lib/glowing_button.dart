// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GlowingButton extends StatefulWidget {
  final Color color1;
  final Color color2;
  final String text;

  const GlowingButton(
      {super.key,
      required this.color1,
      required this.color2,
      required this.text});
  @override
  State<GlowingButton> createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton> {
  var glowing = false;
  var scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (val) {
        setState(() {
          glowing = false;
          scale = 1.0;
        });
      },
      onTapDown: (val) {
        setState(() {
          glowing = true;
          scale = 1.1;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.identity()..scale(scale),
          duration: Duration(milliseconds: 200),
          height: 48,
          width: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [widget.color1, widget.color2]),
              boxShadow: glowing
                  ? [
                      BoxShadow(
                        color: widget.color1.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 32,
                        offset: Offset(-8, 0),
                      ),
                      BoxShadow(
                        color: widget.color1.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 32,
                        offset: Offset(8, 0),
                      ),
                    ]
                  : []),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                 
                ),
              )
            ],
          )),
    );
  }
}
