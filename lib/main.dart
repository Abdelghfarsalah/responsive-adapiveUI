import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const responsiveapp(), // Wrap your app
    ),
  );
}

class responsiveapp extends StatelessWidget {
  const responsiveapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Text(
          "ResopnviasjkdlfaS ASKJDLKASJ ASKDJKAS klaj kalsj",
          style: TextStyle(
            fontSize: getresponsivetext(context, 20),
          ),
        )),
      ),
    );
  }
}
//scale factor
//responsive text
// min, max font

double getresponsivetext(BuildContext context, double fontsize) {
  double scalefactor = getscalefactor(context, fontsize);
  double responsive = fontsize * scalefactor;
  return responsive.clamp(fontsize * 0.8, fontsize * 1.2);
}

double getscalefactor(BuildContext context, double fontsize) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
