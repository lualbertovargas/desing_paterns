import 'package:flutter_test/flutter_test.dart';
import 'package:desing_paterns/singleton_example.dart';

void main() {
  group('SingletonExample Tests', () {
    test('Singleton should return the same instance', () {
      final instance1 = SingletonExample();
      final instance2 = SingletonExample();
      expect(identical(instance1, instance2), true);
    });

    test('Singleton getInfo method should return correct string', () {
      final singleton = SingletonExample();
      expect(singleton.getInfo(), 'Este es un ejemplo de Singleton en Flutter');
    });
  });
}
