import 'package:test/test.dart';
import 'package:my_project_name/calculator.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      //Arrange
      final counter = Counter();
      //Act
      counter.increment();
      //Assert 
      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      //Arrange
      final counter = Counter();
      //Act
      counter.decrement();
      //Assert 
      expect(counter.value, -1);
    });
  });
}