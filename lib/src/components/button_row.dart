import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    required this.onSavePressed,
    required this.cancelButton,
    required this.okButton,
    super.key,
  });

  final void Function() onSavePressed;
  final Widget cancelButton;
  final Widget okButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop<DateTime>();
                },
                child: cancelButton)),
        const SizedBox(
          height: 20,
          child: VerticalDivider(),
        ),
        Expanded(
          child: GestureDetector(onTap: onSavePressed, child: okButton),
        ),
      ],
    );
  }
}
