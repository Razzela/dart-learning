import 'device.dart';

class SmartThermostat extends Device {
  int temperature;
  SmartThermostat(String name, {this.temperature = 22}) : super(name);

  @override
  void turnOff() {
    print('Thermostat $name is OFF');
  }

  @override
  void turnOn() {
    print('Thermostat $name is ON');
  }

  @override
  void showInfo() {
    print('Thermostat: $name, Temperature: $temperature°C');
  }
}
