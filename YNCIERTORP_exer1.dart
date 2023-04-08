Map<int, int> occurrences(List<int> list) {

  Map<int, int> counts = {}; // map to store key-value pair of a number and its occurrences in the list

  for (int i = 0; i < list.length; i++) { // iterate the list
    int current = list[i];
    counts[current] = (counts[current] ?? 0) + 1; // if the count number for that specific number is null, assign zero to it then add 1, if not null, add 1 to its current value
  }

  return counts;
}

void main() {
  List<int> list = [1, 3, 1, 4, 3, 1, 5, 5, 3, 2, 5, 6, 8];

  Map<int, int> counts = occurrences(list); // store the returned map from the occurrences function

  List<int> products = []; // list for products storage

  print("Input list: $list");

  print("Number of occurences:");
  counts.forEach((int1, int2) => print("\t$int1: $int2")); // iterate the counts map then print the key-value pair

  counts.forEach((int1, int2) => products.add(int1 * int2)); // iterate the counts map then add the product of key-value pairs to the products list
  print("Products: ${products.join(" ")}");
}
