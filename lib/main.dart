import 'package:linkden_clone_ui/src/util/exports.dart';


void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      title: AppConstants.appName,
      home: Homepage(),
    )
  );
}