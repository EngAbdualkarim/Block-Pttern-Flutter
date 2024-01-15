


abstract class CounterSates {
  const CounterSates();
}

class IntialCounterStates extends CounterSates{
}

class SuccessCounterStates extends CounterSates{
}

class ErrorCounterStates extends CounterSates{
final String error;
ErrorCounterStates(this.error);
}
