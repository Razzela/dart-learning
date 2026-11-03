import 'device.dart';
import 'adjustable.dart';
import 'mixin.dart';

class SmartSpeaker extends Device with BatteryPowered implements Adjustable {
  int _volume;

  SmartSpeaker(String name, {int volume = 50}) : _volume = volume, super(name) {
    if (_volume < 0) _volume = 0;
    if (_volume > 100) _volume = 100;
  }

  int get volume => _volume;

  @override
  void decrease() {
    _volume -= 5;
    if (_volume < 0) {
      _volume = 0;
    }
  }

  @override
  void increase() {
    _volume += 5;
    if (_volume > 100) {
      _volume = 100;
    }
  }

  @override
  void turnOff() {
    print('Speaker $name is OFF');
  }

  @override
  void turnOn() {
    print('Speaker $name is ON');
  }

  @override
  void showInfo() {
    print('Speaker: $name, Volume: $volume%');
  }
}
