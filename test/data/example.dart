import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

main() {
  // First block to run when the unit test starts
  setUp(() {
    print("Hive stored data test for signin is running...");
  });

  // Single test that checks if a certain key matches a value within stored Hive data files
  test("Hive Stored Data Expectation Test", () async {
    final box = Hive.box<String>("boxName");
    await box.add("value 1");

    expect(box.values.first, "value 1"); // checks if the first value within the box matches the given string

  });

}