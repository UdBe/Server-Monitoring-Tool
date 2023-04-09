class ramData {
  final int? usedMem;
  final int? totalMem;
  // final int totalSwap;
  // final int usedSwap;

  ramData(
    this.usedMem,
    this.totalMem,
    // this.totalSwap,
    // this.usedSwap,
  );

  // factory ramData.fromMap(Map<String, dynamic> json) {
  //   return ramData(
  //       json['usedMem'], json['totalMem'], json['totalSwap'], json['usedSwap']);
  // }
  // factory ramData.fromJson(Map<String, dynamic> json) {
  //   return ramData(
  //       json['usedMem'], json['totalMem'], json['totalSwap'], json['usedSwap']);
  // }
}
