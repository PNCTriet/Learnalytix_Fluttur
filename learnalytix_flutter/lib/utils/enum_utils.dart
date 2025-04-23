String enumToString(dynamic enumValue) {
  if (enumValue == null) return '';
  return enumValue.toString().split('.').last;
}

T? stringToEnum<T>(String? value, List<T> enumValues) {
  if (value == null) return null;
  try {
    return enumValues.firstWhere(
      (e) => e.toString().split('.').last.toLowerCase() == value.toLowerCase(),
    );
  } catch (e) {
    return null;
  }
} 