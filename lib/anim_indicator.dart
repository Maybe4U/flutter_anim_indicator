library anim_indicator;

import 'package:flutter/material.dart';

class AnimIndicator extends StatelessWidget {
  ///the position which is currently selected
  final int position;

  ///the length of the selected indicator
  final double inLength;

  ///the total number
  final int dotsCount;
  final Color color;

  const AnimIndicator({
    Key? key,
    required this.dotsCount,
    this.position = 0,
    this.inLength = 30,
    this.color = Colors.blue,
  })  : assert(dotsCount > 0),
        assert(position >= 0),
        assert(inLength >= 0),
        assert(
          position < dotsCount,
          "Position must be inferior than dotsCount",
        ),
        super(key: key);

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      width: isActive ? inLength : 8,
      margin: EdgeInsets.only(right: 5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < dotsCount; i++) {
      if (i == position) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildIndicator(),
    );
  }
}
