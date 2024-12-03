import 'package:flutter/material.dart';

class FieldEmail extends StatefulWidget {
  const FieldEmail({super.key});

  @override
  State<FieldEmail> createState() => _FieldEmailState();
}

class _FieldEmailState extends State<FieldEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'contohemail@gmail.com',
        hintStyle: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 15,
            fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Colors.grey.shade500,
                width: 1,
                style: BorderStyle.solid)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Colors.grey.shade500,
                width: 1,
                style: BorderStyle.solid)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Colors.grey.shade500,
                width: 1,
                style: BorderStyle.solid)),
      ),
    );
  }
}
