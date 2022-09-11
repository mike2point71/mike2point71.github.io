```java

.sorted(Map.Entry.comparingByValue(Comparator.reverseOrder()))
  
.collect(Collectors.groupingBy(Function.identity(), Collectors.counting()));
