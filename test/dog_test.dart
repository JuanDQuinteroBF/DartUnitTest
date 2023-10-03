import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:my_project_name/dog.dart';


class MockDog extends Mock implements Dog {}

void main() {
  group('Dog Tests', () {
    test('Dog should eat food', () {
      // Arrange
      var mockDog = MockDog();
      when(mockDog.eatFood(any)).thenReturn(true);

      // Act
      var result = mockDog.eatFood('meet');

      // Assert
      expect(result, true);
      verify(mockDog.eatFood('meet')).called(1);
    });

    test('Dog should make sound', () {
      // Arrange
      var dog = Dog();

      // Act
      var sound = dog.sound();

      // Assert
      expect(sound, 'bark');
    });
  });
}
