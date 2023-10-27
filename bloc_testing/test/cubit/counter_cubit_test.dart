import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_testing/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group("Countr Cubitt", () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown((){
      counterCubit.close();
    });

    test("the initial state for the CounterCubit", () {
      expect(counterCubit.state, CounterState(counterValue: 0, wasIncremented: false));
    });    

    blocTest("""The cubit should emit a CounterState(counterValue: 1, wasIncremented: true) 
      when cubit.increment() function is called""", 
      build: () => counterCubit,
      act: (cubit) => cubit.increment(),
      expect: () => [CounterState(counterValue: 1, wasIncremented: true)],
    );

  });
}