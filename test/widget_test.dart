import 'package:material_x/MxServices.dart';
import 'package:material_x/mxConvert.dart';
import 'package:http/http.dart' as http;

main() async {
  String uri =
      "https://raw.githubusercontent.com/zeeshux7860/json/master/sample.json";
  var res = await http.get(uri);
  print(res.body);
  var filename = "FlutterMap";
  var dartCode = await dartGenerate(filename, res.body);
  fileCreate('lib/json_to_dart', dartCode.code.toString(), filename+'.dart');
}
