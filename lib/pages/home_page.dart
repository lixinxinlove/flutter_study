import 'package:flutter/material.dart';
import 'package:flutter_study/pages/custom_painter_page.dart';
import 'package:flutter_study/pages/gl_se_image_page.dart';
import 'package:flutter_study/pages/stream_demo_page.dart';

import 'css_filter_page.dart';
import 'gl_se_page.dart';
import 'open_gl_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const OpenGLPage();
              }));
            },
            child: const Text(
              "OpenGL",
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const StreamDemoPage();
              }));
            },
            child: const Text(
              "Stream",
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const OpenGLPage();
              }));
            },
            child: const Text(
              "OpenGL",
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CssFilterPage();
              }));
            },
            child: const Text(
              "滤镜",
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CustomPainterPage();
              }));
            },
            child: const Text(
              "绘图",
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GLSEPage();
              }));
            },
            child: const Text(
              "GLSE",
              style: TextStyle(color: Colors.black),
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GLSEImagePage();
              }));
            },
            child: const Text(
              "GLSE_Image",
              style: TextStyle(color: Colors.black),
            )),
      ],
    );
  }
}
