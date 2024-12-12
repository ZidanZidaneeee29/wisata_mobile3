import 'package:flutter/material.dart';

class LatihanModul4 extends StatelessWidget {
  const LatihanModul4({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pertemuan Empat',
      home: Scaffold(
        body: Center(
          child: BiggerText(text: 'Pertemuan 4'),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({super.key, required this.text});

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _textSize++;
              });
            },
            child: const Text('Perbesar'))
      ],
    );
  }
}
