import 'device.dart';
import 'adjustable.dart';
import 'mixin.dart';

class SmartLamp extends Device with BatteryPowered implements Adjustable {
  int _brightness;

  SmartLamp(String name, {int brightness = 50})
    : _brightness = brightness,
      super(name) {
    if (_brightness < 0) _brightness = 0;
    if (_brightness > 100) _brightness = 100;
  }
  int get brightness => _brightness;

  @override
  void decrease() {
    _brightness -= 10;
    if (_brightness < 0) {
      _brightness = 0;
    }
  }

  @override
  void increase() {
    _brightness += 10;
    if (_brightness > 100) {
      _brightness = 100;
    }
  }

  @override
  void turnOff() {
    print('Lamp $name is OFF');
  }

  @override
  void turnOn() {
    print('Lamp $name is ON');
  }

  @override
  void showInfo() {
    print('Lamp: $name, Brightness: $brightness%');
  }
}
