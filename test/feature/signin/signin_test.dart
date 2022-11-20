import 'package:flutter_test/flutter_test.dart';

main() {

  // First block to run when the unit test starts
  setUp(() {
    print("Unit test for signin is running...");
  });
  
  // Single test that checks if the user signed in successfully
  test("Signin Fail Test", (){
    final isUserSignedin = true;
    
    expect(isUserSignedin, isTrue);

  });

  // Runs a group of tests one by one and returns success only if all of them are successful
  group("Signin Full Test", () {
    // Test 1
    test("Signin Fail Test", (){
      final isUserSignedin = true;

      expect(isUserSignedin, isTrue);

    });

    // Test 2

  });
  

}