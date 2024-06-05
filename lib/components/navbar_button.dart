import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData icon;
  final bool isSelected;

  const NavButton({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.red : Colors.grey,
          ),
          Text(title,
          style: TextStyle(color: isSelected ? Colors.black : Colors.grey),),
        ],
      ),
    );
  }
}
