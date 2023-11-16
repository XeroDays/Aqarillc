class Task2Viewmodel {
  Stream<int> generateAsync_Stream() async* {
    int i = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield i++;
    }
  }
}
