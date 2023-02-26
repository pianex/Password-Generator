import 'package:flutter/material.dart';

class SecurityLevelBox extends StatelessWidget {
  const SecurityLevelBox({
    super.key,
    required this.title,
    this.onChanged,
    required this.value,
  });
  final String title;
  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
