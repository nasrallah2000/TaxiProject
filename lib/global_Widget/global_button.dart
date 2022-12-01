import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GlobalButton extends StatelessWidget {
  final double? buttonHeight;
  final BorderRadius? borderRadius;
  final Widget? child;
  final String? textChild;
  final TextStyle? textChildStyle;
  final ButtonStyle? buttonStyle;
  final Function onPressed;
  final double? horizontalPadding;

  const GlobalButton(
      {Key? key,
      this.buttonHeight,
      this.borderRadius,
      this.child,
      this.textChild,
      this.textChildStyle,
      this.buttonStyle,
      required this.onPressed,
      this.horizontalPadding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 20.0),
      child: Container(
        width: double.infinity,
        height: buttonHeight ?? 50,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: borderRadius ?? BorderRadius.circular(20)),
        child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: buttonStyle ??
              ButtonStyle(
                backgroundColor: MaterialStateProperty.all(HexColor('#F7D140')),
              ),
          child: child ??
              Text(
                textChild ?? '',
                style: textChildStyle ??
                    const TextStyle(
                      fontSize: 20,
                    ),
              ),
        ),
      ),
    );
  }
}
