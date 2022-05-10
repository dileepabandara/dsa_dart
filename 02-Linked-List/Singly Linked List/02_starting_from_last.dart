class Node {
  int? data;
  Node? next;

  Node(int? d, Node? t) {
    data = d;
    next = t;
  }
}

void main() {
  Node? node3 = Node(1, null);
  Node? node2 = Node(2, node3);
  Node? head = Node(3, node2);

  display(head);
}

void display(Node? currentNode) {
  try {
    while (currentNode != null) {
      print("Data ${currentNode.data}");
      currentNode = currentNode.next;
    }
  } catch (e) {
    print("Exception: $e");
  }
}
