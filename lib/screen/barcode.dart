import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:io';
import 'package:qr_flutter/qr_flutter.dart';

class Barcode extends StatefulWidget {
  const Barcode({Key? key}) : super(key: key);

  @override
  State<Barcode> createState() => _BarcodeState();
}

class _BarcodeState extends State<Barcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black45,
            ),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 150, 20.0, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: QrImage(
                    data: 'testbro',
                    version: QrVersions.auto,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
