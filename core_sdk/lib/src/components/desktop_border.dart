// ignore_for_file: public_member_api_docs

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class DesktopBorder extends StatelessWidget {
  const DesktopBorder({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return WindowBorder(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          WindowTitleBarBox(
            child: Row(
              children: [
                Expanded(
                  child: MoveWindow(
                    child: Material(
                      color: color,
                      child: Container(),
                    ),
                  ),
                ),
                Material(child: WindowButtons(color: color))
              ],
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}

class WindowButtons extends StatefulWidget {
  const WindowButtons({super.key, this.color});

  final Color? color;

  @override
  _WindowButtonsState createState() => _WindowButtonsState();
}

class _WindowButtonsState extends State<WindowButtons> {
  void maximizeOrRestore() {
    setState(() {
      appWindow.maximizeOrRestore();
    });
  }

  @override
  Widget build(BuildContext context) {
    final buttonColors = WindowButtonColors(
      normal: widget.color,
      iconNormal: const Color(0xFFf2f2f2),
      mouseOver: const Color(0xFFF6A00C),
      mouseDown: const Color(0xFFf2f2f2),
      iconMouseOver: const Color(0xFFf2f2f2),
      iconMouseDown: const Color(0xFFFFD500),
    );

    final closeButtonColors = WindowButtonColors(
      normal: widget.color,
      mouseOver: const Color(0xFFD32F2F),
      mouseDown: const Color(0xFFB71C1C),
      iconNormal: const Color(0xFFf2f2f2),
      iconMouseOver: const Color(0xFFf2f2f2),
    );
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        if (appWindow.isMaximized)
          RestoreWindowButton(
            colors: buttonColors,
            onPressed: maximizeOrRestore,
          )
        else
          MaximizeWindowButton(
            colors: buttonColors,
            onPressed: maximizeOrRestore,
          ),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
