import 'dart:ui';

import 'package:flutter/material.dart';

class GLSEPage extends StatefulWidget {
  const GLSEPage({super.key});

  @override
  State<GLSEPage> createState() => _GLSEPageState();
}

class _GLSEPageState extends State<GLSEPage> {
  FragmentShader? shader;

  String _activeTab = 'shaders/color.frag';

  @override
  void initState() {
    super.initState();
    _loadShader(_activeTab);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OpenGL SE"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (shader == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Center(
      child: CustomPaint(
        size: const Size(400, 200),
        painter: ShaderPainter(
          shader: shader!,
        ),
      ),
    );
  }

  void _loadShader(String path) async {
    FragmentProgram program = await FragmentProgram.fromAsset(path);
    shader = program.fragmentShader();
    setState(() {});
  }
}

class ShaderPainter extends CustomPainter {
  ShaderPainter({required this.shader});

  FragmentShader shader;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..shader = shader;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
