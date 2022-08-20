import 'package:flutter_application_1/dependencies/dependencies.dart';

class WidgetPageInfo extends StatefulWidget {
  WidgetPageInfo({Key? key
  })  : super(key: key);

  @override
  State<WidgetPageInfo> createState() => _WidgetPageInfoState();
}

class _WidgetPageInfoState extends State<WidgetPageInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Veterinary info",style: TextStyle(color: Colors.black),),
      ),
      body:CardInfoVeterinary()
        
    );
  }
}