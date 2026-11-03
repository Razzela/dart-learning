import 'device.dart';
import 'smart_lamp.dart';
import 'smart_speaker.dart';
import 'smart_thermostat.dart';
import 'adjustable.dart';
import 'mixin.dart';

void main() {
  List<Device> devices = [
    SmartLamp('Living Room', brightness: 70),
    SmartSpeaker('Kitchen', volume: 40),
    SmartThermostat('Bedroom', temperature: 22),
  ];

  for (var device in devices) {
    device.turnOn();
    device.showInfo();

    if (device is Adjustable) {
      (device as Adjustable).increase();
    }
    if (device is BatteryPowered) {
      print('Battery Level: ${(device as BatteryPowered).batteryLevel}%');
    }
  }
  print('All devices processed.');
}
