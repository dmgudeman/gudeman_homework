require "set"
class GraphNode
    attr_accessor :neighbors, :val
    def initialize(val)
        @val = val
        @neighbors = []
      
    end
    def add_neighbor(node)
        neighbors << node
    end

   


end

def depth_first(node, graph, visited = Set.new())
    return nil if (visited.include?(node.to_sym))
    visited.add(node.to_sym)
   
    graph[node.to_sym].each do | neighbor |
        depth_first(neighbor, graph, visited)
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()
  
    until queue.empty?
      node = queue.shift
      unless visited.include?(node)
        return node.val if node.val == target_value
        visited.add(node)
        queue += node.neighbors
        queue.each do | node |
            p node.val
        end
      end
    end
    
    return nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

graph = {
    'a': ['b', 'c', 'e'],
    'b': [],
    'c': ['b', 'd'],
    'd': [],
    'e': ['a'],
    'f': ['e']
  }

depth_first('f', graph)

bfs(a, "b")



