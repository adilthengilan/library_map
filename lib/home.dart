import 'package:flutter/material.dart';
import 'package:library_1/first_floor.dart';
import 'package:library_1/main.dart';
import 'package:library_1/map.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            TextField(
              controller: controller,
            ),
            ElevatedButton(
                onPressed: () {
                  print(controller.text);
                  for (int i = 0; i < pathway.length; i++) {
                    if (pathway[i]['rackId'] == controller.text) {
                      final List<Map<String, dynamic>> _directions =
                          pathway[i]['${controller.text}'];
                      if (controller.text == '47A' ||
                          controller.text == '97A' ||
                          controller.text == '100B' ||
                          controller.text == '100A' ||
                          controller.text == '103B' ||
                          controller.text == '102B' ||
                          controller.text == '103A' ||
                          controller.text == '102A' ||
                          controller.text == '34B' ||
                          controller.text == '34A' ||
                          controller.text == '96A') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstFloor(
                                bookId: '',
                                rackId: controller.text,
                                array: _directions,
                              ),
                            ));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavigationLineScreen(
                                bookId: '',
                                rackId: controller.text,
                                array: _directions,
                              ),
                            ));
                      }
                    }
                  }
                },
                child: Text('Enter'))
          ],
        ),
      ),
    );
  }
}
