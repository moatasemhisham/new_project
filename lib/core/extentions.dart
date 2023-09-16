extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return "-";
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {

  int orZero() {
    return this ?? 0;
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return 0.0;
    } else {
      return this!;
    }
  }
}

extension NonNullList<T> on List<T>? {
  List<T> orEmptyList() {
    if (this == null) {
      return [];
    } else {
      return this!;
    }
  }
}
