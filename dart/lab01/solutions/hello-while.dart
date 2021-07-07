void main() {
  bool loopFlag = true;
  int i = 0;

  while (loopFlag) {
    if (i <= 4) {
      print('Hello $i');
      i++;
    } else {
      loopFlag = false;
    }
  }
}
