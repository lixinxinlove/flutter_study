import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GLSEImagePage extends StatefulWidget {
  const GLSEImagePage({super.key});

  @override
  State<GLSEImagePage> createState() => _GLSEImagePageState();
}

class _GLSEImagePageState extends State<GLSEImagePage> {
  FragmentShader? shader;
  ui.Image? image;

  double mValue = 1.0;

  @override
  void initState() {
    super.initState();
    loadShader();
    loadImage();
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
    if (shader == null || image == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Center(
        child: Column(
      children: [
        Slider(
            min: 0,
            max: 1,
            value: mValue,
            onChanged: (changed) {
              setState(() {
                mValue = changed;
              });
            }),
        CustomPaint(
          size: const Size(1280 * 0.25, 1706 * 0.25),
          painter:
              ShaderPainter(shader: shader!, image: image!, mAValue: mValue),
        ),
      ],
    ));
  }

  void loadShader() async {
    FragmentProgram program =
        await FragmentProgram.fromAsset('shaders/image.frag');
    shader = program.fragmentShader();
    setState(() {});
  }

  void loadImage() async {
    image = await loadImageFromAssets('assets/images/mi.jpg');
    setState(() {});
  }

  //读取 assets 中的图片
  Future<ui.Image> loadImageFromAssets(String path) async {
    ByteData data = await rootBundle.load(path);
    return decodeImageFromList(data.buffer.asUint8List());
  }
}

class ShaderPainter extends CustomPainter {
  ShaderPainter(
      {required this.shader, required this.image, required this.mAValue});

  FragmentShader shader;
  ui.Image image;

  double mAValue;

  @override
  void paint(Canvas canvas, Size size) {
    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);
    shader.setFloat(2, mAValue);
    shader.setImageSampler(0, image);

    final paint = Paint()..shader = shader;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
