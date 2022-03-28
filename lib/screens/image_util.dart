import 'dart:io';
// import 'dart:isolate';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:image/image.dart';
import 'package:path_provider/path_provider.dart';

class ImageUtil {
  Future<XFile> giveTimestamp(XFile captured) async {
    Uint8List img = File(captured.path).readAsBytesSync();
    Image image = decodeImage(img);
    var currentUnix = DateTime.now();
    Image result = drawString(image, arial_24, 50, 50, currentUnix.toString());
    File output = await File(captured.path).writeAsBytes(encodeJpg(result));
    return XFile(output.path);
  }
}

// Decode and process an image file in a separate thread (isolate) to avoid
// stalling the main UI thread.
// void main() async {
//   var receivePort = ReceivePort();

//   await Isolate.spawn(
//       decodeIsolate, ImageUtil(File('test.webp'), receivePort.sendPort));

//   // Get the processed image from the isolate.
//   var image = await receivePort.first as Image;

//   await File('thumbnail.png').writeAsBytes(encodePng(image));
// }
