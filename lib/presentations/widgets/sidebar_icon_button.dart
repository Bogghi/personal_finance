import 'package:flutter/material.dart';

class SidebarIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final bool selected;

  const SidebarIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.selected = false
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: selected ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.surface
      ),
      style: IconButton.styleFrom(
        backgroundColor: selected ? Theme.of(context).colorScheme.primary : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
