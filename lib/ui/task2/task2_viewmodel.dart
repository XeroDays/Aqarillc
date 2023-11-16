class Task2Viewmodel {
  // this is asynchronous generator method which yeilds the value after every second
  // this yeild value is in While loop so it will keep on yeilding the value
  Stream<int> generateAsync_Stream() async* {
    int i = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield i++;
    }
  }
}
