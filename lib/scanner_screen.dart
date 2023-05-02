import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
class ScannerScreen extends StatefulWidget{
  @override
  State <ScannerScreen>  createState() => ScannerScreenState();
   
  
}

class ScannerScreenState extends State<ScannerScreen> {
  final GlobalKey qrkey = GlobalKey(debugLabel:'QR');
  QRViewController? controller;
  String scannerCode = '';
  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        Expanded(
          flex:5,
          child: QRView(key: qrkey, onQRViewCreated: _onQRViewCreated)),
          Expanded(flex:1,child: Center(child:Text('Scanned Code: $scannerCode')))
      ],
      )
      

      

    );}
    void _onQRViewCreated(QRViewController controller){
        this.controller = controller;
        controller.scannedDataStream.listen((event) {
          setState(() {
            scannerCode = event.code!;
          });
        });
      }
  
}
 