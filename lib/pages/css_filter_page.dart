import 'package:css_filter/css_filter.dart';
import 'package:flutter/material.dart';

class CssFilterPage extends StatefulWidget {
  const CssFilterPage({super.key});

  @override
  State<CssFilterPage> createState() => _CssFilterPageState();
}

class _CssFilterPageState extends State<CssFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/shan.jpg",
                height: 200, width: double.infinity),
            CSSFilterPresets.origin(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.ins1977(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.ins1977V2(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.insAden(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.insAmaro(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.insAshby(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.insBrannan(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.insBrooklyn(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),
            CSSFilterPresets.insXpro2(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity)),

            SizedBox(height: 30),

            CSSFilter.apply(
                child: Image.asset("assets/images/shan.jpg",
                    height: 200, width: double.infinity),
                value: CSSFilterMatrix()
                    .contrast(1.2)
                    .sepia(0.8)
                    .hueRotate(90.0)
                    .invert(0.9)
                    .opacity(0.9))
          ],
        ),
      ),
    );
  }
}
