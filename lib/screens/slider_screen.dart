import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _slisderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders && Checks'),
        ),
        body: Column(
          children: [
            Slider(
              min: 50,
              max: 800,
              activeColor: AppTheme.primary,
              // divisions: 10,
              value: _sliderValue,
              onChanged: _slisderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                      print(value);
                    }
                  : null,
            ),
            const SizedBox(
              height: 20,
            ),
            // Checkbox(
            //   value: _slisderEnable,
            //   onChanged: (value) {
            //     _slisderEnable = value ?? true;
            //     setState(() {});
            //   },
            // ),
            // Switch(
            //   activeColor: AppTheme.primary,
            //   value: _slisderEnable,
            //   onChanged: (value) => setState(() {
            //     _slisderEnable = value ?? true;
            //   }),
            // ),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _slisderEnable,
                onChanged: (value) => setState(() {
                      _slisderEnable = value ?? true;
                    })),
            SwitchListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _slisderEnable,
                onChanged: (value) => setState(() {
                      _slisderEnable = value ?? true;
                    })),
            const AboutListTile(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  fit: BoxFit.contain,
                  width: _sliderValue,
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
                ),
              ),
            ),
          ],
        ));
  }
}
