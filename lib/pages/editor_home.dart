import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class EditorHome extends StatefulWidget {
  const EditorHome({super.key});

  @override
  State<EditorHome> createState() => _EditorHomeState();
}

class _EditorHomeState extends State<EditorHome> {
  final ScrollController _hCtrl = ScrollController();
  final ScrollController _vCtrl = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        key: Key("_vCtrl_Scrollbar"),
        thumbVisibility: true,
        controller: _vCtrl,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double boxWidth = 500;
            final double boxHeight = 2500;
            return Scrollbar(
                thumbVisibility: true,
                controller: _hCtrl,
                key: Key("_hCtrl_Scrollbar"),
                child: SingleChildScrollView(
                  controller: _hCtrl,
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: constraints.maxHeight,
                    width: max(boxWidth, constraints.maxWidth),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      controller: _vCtrl,
                      child: Container(
                        color: Colors.blue,
                        height: boxHeight,
                      ),
                    ),
                  ),
                ));
          },
        ));
  }
}
