import 'package:flutter/material.dart';
import 'package:retopin_application/ui/common/ui_helpers.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final Widget? prefixIcon;
  final String labelText;
  final Function(String) onChanged;
  final String? label;

  CustomTextInput({
    required this.controller,
    required this.labelText,
    required this.onChanged,
    this.prefixIcon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(label!,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        verticalSpacing(6),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            border: const OutlineInputBorder(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: prefixIcon != null
                ? Container(
                    padding: const EdgeInsets.all(14.0), child: prefixIcon)
                : null,
            // prefixIcon: Container(
            //   child: prefixIcon,
            // ),
          ),
          onChanged: onChanged,
          // prefixIcon: prefixIcon,
        ),
      ],
    );
  }
}
