import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isOutlined;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isOutlined = false,
    this.backgroundColor = const Color(0xFF0A0A80),
    this.borderColor = const Color(0xFF0A0A80),
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      backgroundColor: isOutlined ? Colors.transparent : backgroundColor,
      foregroundColor: textColor,
      minimumSize: const Size.fromHeight(50),
      side: BorderSide(color: borderColor, width: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: isOutlined ? 0 : 2,
    );

    return isOutlined
        ? OutlinedButton(
            onPressed: onPressed,
            style: style,
            child: Text(label, style: TextStyle(color: borderColor, fontSize: 16)),
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: style,
            child: Text(label, style: TextStyle(fontSize: 16)),
          );
  }
}
