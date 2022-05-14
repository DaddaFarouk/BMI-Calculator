import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.bottomTitle,
  }) : super(key: key);

  final VoidCallback onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            bottomTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
