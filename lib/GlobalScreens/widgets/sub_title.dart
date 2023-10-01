import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),);
  }
}