import 'dart:math' as math;


bool? checkContain(
  List<int>? idList,
  List<int>? id,
) {
  // check contain id from idList
  if (idList == null || id == null) {
    return null;
  }
  for (final i in id) {
    if (idList.contains(i)) {
      return true;
    }
  }
  return false;
}

int? generateId() {
  // generate random 4 figure numbers, dont convert to string
  final random = math.Random();
  return random.nextInt(10000);
}
