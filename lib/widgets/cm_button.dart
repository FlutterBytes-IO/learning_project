import 'package:flutter/material.dart';

class CMButton extends StatelessWidget {
  const CMButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        buttonTitle,
      ),
    );
  }
}
