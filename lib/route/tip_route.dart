import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  const TipRoute({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('提示'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              TextButton(
                  onPressed: () {
                    DateTime now = DateTime.now();
                    String formattedTime = "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
                    Navigator.pop(context, formattedTime);
                  },
                  child: const Text('點選返回'))
            ],
          ),
        ),
      ),
    );
  }
}
