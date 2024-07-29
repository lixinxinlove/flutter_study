import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study/pages/util/NotificationHelper.dart';

/// StreamDemoPage
class StreamDemoPage extends StatefulWidget {
  const StreamDemoPage({super.key});

  @override
  State<StreamDemoPage> createState() => _StreamDemoPageState();
}

class _StreamDemoPageState extends State<StreamDemoPage> {
  /// 创建一个周期性的流
  final stream = Stream.periodic(const Duration(seconds: 1), (_) => 10);

  final controller = StreamController();

  /// 创建一个广播流 可以有多个消费者监听
  final controller2 = StreamController.broadcast();

  @override
  void initState() {
    super.initState();
    // stream.listen((event) {
    //   print("stream:$event");
    // });

    controller.sink.add(11);

    controller.stream.listen((event) {
      print("controller:$event");
    });
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StreamDemo"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Text(
              "发送本地通知",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          const FlutterLogo(size: 100),
          StreamBuilder(
              stream: controller.stream,
              builder: (BuildContext context, AsyncSnapshot<dynamic> st) {
                switch (st.connectionState) {
                  case ConnectionState.none:
                    return const Text("没有连接");
                  case ConnectionState.waiting:
                    return const Text("等待中");
                  case ConnectionState.active:
                    if (st.hasError) {
                      return const Text("连接中");
                    } else {
                      return Text("连接中:${st.data}");
                    }
                  case ConnectionState.done:
                    return const Text("完成");
                }

                return Container();
              })
        ],
      ),
    );
  }
}
