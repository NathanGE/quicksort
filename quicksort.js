var swap = function(array, firstIndex, secondIndex) {
  var temp = array[firstIndex];
  array[firstIndex] = array[secondIndex];
  array[secondIndex] = temp;
};

var partition = function(array, p, r) {
  var q = p;
  for(var j = p; j < r; j++){
    if(array[j] <= array[r]){
      swap(array, j, q);
      q++;
    }
  }
  swap(array, r, q);
  return q;
};

var quickSort = function(array, p, r) {
  if(p < r){
    var q = partition(array, p, r);
    quickSort(array, p, q - 1);
    quickSort(array, q + 1, r);
  }
  return array;
}

var array = [9, 7, 5, 11, 12, 2, 14, 3, 10, 4, 6];
var q = partition(array, 0, array.length - 1);
console.log(q);
// 4
console.log(quickSort(array, 0, array.length - 1));
// [ 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 14 ]
