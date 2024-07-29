import 'package:flutter/material.dart';
import 'package:flutter_study/pages/painter/painter_box.dart';

class CustomPainterPage extends StatefulWidget {
  const CustomPainterPage({super.key});

  @override
  State<CustomPainterPage> createState() => _CustomPainterPageState();
}

class _CustomPainterPageState extends State<CustomPainterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("绘图"),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Center(
      child: SizedBox(
        child: CustomPaint(
          size: const Size(400, 400),
          painter: PainterBox(),
        ),
      ),
    );
  }
}
