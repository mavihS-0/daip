import 'dart:convert';
import 'dart:io';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothUtil{

  BluetoothDevice? device;

  void connectToBot(String botID) async{
    try{
      if (Platform.isAndroid) {
        await FlutterBluePlus.turnOn();
      }
      FlutterBluePlus.scanResults.listen(
            (results)  {
          for (ScanResult r in results) {
            print(r.device.platformName);
            if(r.device.platformName ==  botID){
              device = r.device;
              FlutterBluePlus.stopScan();
            }
          }
        },
      ).onError((e){
        print(e.toString());
      });
      await FlutterBluePlus.startScan();
      await Future.delayed(Duration(seconds: 10), ()async{
        await FlutterBluePlus.stopScan();
      });
      await device!.connect();
      print('Connected to ${device?.platformName}');
    }catch(e){
      print(e.toString());
    }
  }

  Future<String> listenToResponses() async {
    String message = "";
    try {
      List<BluetoothService> services = await device!.discoverServices();

      // Find the characteristic for receiving serial data
      BluetoothCharacteristic? receiveCharacteristic;
      for (BluetoothService service in services) {
        for (BluetoothCharacteristic characteristic in service
            .characteristics) {
          if (characteristic.properties.notify) {
            receiveCharacteristic = characteristic;
            break;
          }
        }
        if (receiveCharacteristic != null) {
          break;
        }
      }

      if (receiveCharacteristic != null) {
        // Listen to notifications from the Arduino
        receiveCharacteristic.setNotifyValue(true);
        receiveCharacteristic.lastValueStream.listen((data) {
          message = utf8.decode(data);
        });
      }
    } catch (error) {
      print('Error: $error');
    }
    return message;
  }

  void sendCommand(String command) async{
    if (device != null) {
      try {
        // Find the characteristic for writing data
        BluetoothCharacteristic? writeCharacteristic;
        List<BluetoothService> services = await device!.discoverServices();
        for (BluetoothService service in services) {
          for (BluetoothCharacteristic characteristic in service.characteristics) {
            if (characteristic.properties.write) {
              writeCharacteristic = characteristic;
              break;
            }
          }
          if (writeCharacteristic != null) {
            break;
          }
        }

        if (writeCharacteristic != null) {
          // Send the string command to the Arduino
          await writeCharacteristic.write(utf8.encode(command));
        } else {
          print('Write characteristic not found.');
        }
      } catch (error) {
        print('Error: $error');
      }
    } else {
      print('Device not connected');
    }
  }
}