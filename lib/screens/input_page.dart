import 'package:flutter/material.dart';

const buttonContainerHeight = 80.0;
const darkBlue = Color(0xff1d1e33);
const pink = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(color: darkBlue),
                    ),
                    Expanded(
                      child: ReusableCard(color: darkBlue),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(color: darkBlue),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(color: darkBlue),
                    ),
                    Expanded(
                      child: ReusableCard(color: darkBlue),
                    ),
                  ],
                ),
              ),
              Container(
                height: buttonContainerHeight,
                child: ReusableCard(color: pink),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? child;

  ReusableCard({required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
    );
  }
}
