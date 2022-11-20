import 'package:flutter_test/flutter_test.dart';

main() {

  // First block to run when the unit test starts
  setUp(() {
    print("Unit test for signup is running...");
  });

  // Single test that checks if the user signed in successfully
  test("Signup Fail Test", (){
    final isUserSignedup = true;

    expect(isUserSignedup, isTrue);

  });

  // Runs a group of tests one by one and returns success only if all of them are successful
  group("Signup Full Test", () {
    // Test 1
    test("Signup Fail Test", (){
      final isUserSignedup = true;

      expect(isUserSignedup, isTrue);

    });

    // Test 2

  });


}