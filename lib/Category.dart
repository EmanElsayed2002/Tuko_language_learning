import 'package:flutter/material.dart';

void main() {}

class Category extends StatelessWidget {
  Category({this.color, this.Name, this.OnTap});
  String? Name;
  Color? color;
  VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5.0),
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(100)),
          width: double.infinity,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 80, top: 10),
            child: Text(
              Name!,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
