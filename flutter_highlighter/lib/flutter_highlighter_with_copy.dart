import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'flutter_highlighter.dart';

class HighlightViewWithCopy extends StatefulWidget {
  final HighlightView highlightView;
  final Icon buttonIcon;
  final VoidCallback? onPressed;

  const HighlightViewWithCopy({
    super.key,
    required this.highlightView,
    this.buttonIcon = const Icon(Icons.copy),
    this.onPressed,
  });

  @override
  State<HighlightViewWithCopy> createState() => _HighlightViewWithCopyState();
}

class _HighlightViewWithCopyState extends State<HighlightViewWithCopy> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: Stack(
        children: <Widget>[
          widget.highlightView,
          if (isHovered)
            Positioned(
                right: 0.0,
                top: 0.0,
                child: GestureDetector(
                  onTap: widget.onPressed ??
                      () {
                        // Copy to clipboard
                        Clipboard.setData(
                            ClipboardData(text: widget.highlightView.source));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Code copied to clipboard!'),
                          ),
                        );
                      },
                  child: widget.buttonIcon,
                )),
        ],
      ),
    );
  }
}
