import 'package:lottie/lottie.dart';

Future<LottieComposition?> customDecoder(List<int> bytes) {
  return LottieComposition.decodeZip(bytes, filePicker: (files) {
    return files.firstWhere((f) {
      return f.name.startsWith('animations/') && f.name.endsWith('.json');
    });
  });
}
