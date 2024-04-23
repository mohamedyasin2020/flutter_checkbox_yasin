import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Check Box'),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Text('please tick the box')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
