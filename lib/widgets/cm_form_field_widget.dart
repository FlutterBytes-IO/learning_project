import 'package:flutter/material.dart';

class CMFormFieldWidget extends StatefulWidget {
  const CMFormFieldWidget({
    super.key,
    this.hintText,
    required this.title,
    required this.controller,
  });

  final TextEditingController controller;
  final String title;
  final String? hintText;

  @override
  State<CMFormFieldWidget> createState() => _CMFormFieldWidgetState();
}

class _CMFormFieldWidgetState extends State<CMFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ],
    );
  }
}
