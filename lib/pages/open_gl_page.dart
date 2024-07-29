import 'dart:math';

import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:flutter_image_filters/flutter_image_filters.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class OpenGLPage extends StatefulWidget {
  const OpenGLPage({super.key});

  @override
  State<OpenGLPage> createState() => _OpenGLPageState();
}

class _OpenGLPageState extends State<OpenGLPage> {
  bool textureLoaded = false;

  var texture;
  var configuration;
  var image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      _demo2();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "滤镜",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: [
        const Text("原图", style: TextStyle(fontSize: 18, color: Colors.black)),
        Image.asset("assets/images/mi.jpg", width: 200),
        const SizedBox(height: 16),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                _demo1();
              },
              child: const Text("处理的图片",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
            GestureDetector(
              onTap: () {
                _saveImage();
              },
              child: const Text("保存图片",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
          ],
        ),
        if (textureLoaded)
          SizedBox(
            width: 200,
            child: ImageShaderPreview(
              texture: texture,
              configuration: configuration,
            ),
          )
      ],
    );
  }

  _demo1() async {
    configuration = BrightnessShaderConfiguration();
    configuration.brightness =Random(1);
    texture = await TextureSource.fromAsset('assets/images/mi.jpg');
    // image = await configuration.export(texture, texture.size);
    setState(() {
      textureLoaded = true;
    });

    // TextureSource.fromAsset('assets/images/mi.jpg')
    //     .then((value) => texture = value)
    //     .whenComplete(
    //       () => setState(() {
    //     textureLoaded = true;
    //   }),
    // );
  }

  _demo2() async {
    texture = await TextureSource.fromAsset('assets/images/mi.jpg');

    configuration = GroupShaderConfiguration();
    configuration.add(BrightnessShaderConfiguration()..brightness = 0.1);
    //configuration.add(SaturationShaderConfiguration()..saturation = 0.1);

    final image = await configuration.export(texture, texture.size);

    setState(() {
      textureLoaded = true;
    });
  }

  //保存图片
  _saveImage() async {
    final bytes = await image.toByteData();

    final persistedImage = img.Image.fromBytes(
      width: image.width,
      height: image.height,
      bytes: bytes!.buffer,
    );
    img.JpegEncoder encoder = img.JpegEncoder();
    final data = encoder.encode(persistedImage);

    var result = await ImageGallerySaver.saveImage(data,
        quality: 100, name: "ai_image_${DateTime.now().millisecond}");

    if (result != null) {
      print(result);

      print("Saved To Album");
    } else {
      print("download fail");
    }
  }
}
