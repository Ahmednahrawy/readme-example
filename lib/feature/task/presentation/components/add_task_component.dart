import 'package:flutter/material.dart';

class AddTaskComponent extends StatelessWidget {
  const AddTaskComponent({
    super.key,
    required this.tilte,
    required this.hintText,
    this.controller,
    this.suffixIcon,
    this.readOnly = false,
  });
  final String tilte;
  final String hintText;
  final TextEditingController? controller;
  final IconButton? suffixIcon;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tilte,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 8),
        TextFormField(
          readOnly: readOnly,
          controller: controller,
          decoration: InputDecoration(
            //hint
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
