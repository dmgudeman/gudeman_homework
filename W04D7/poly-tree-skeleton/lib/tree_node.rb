class PolyTreeNode
    attr_reader :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
     if @parent != nil
        old_parent = @parent
        old_parent.children.delete(self)
     end
        @parent = node
        if node && node.children
            node.children << self
        end
    end

    def add_child(child_node)
        child_node.parent=(self)
    end
    
    def remove_child(child_node)
      raise "not a child"   if child_node.parent.nil?
      raise "not a child" unless child_node.parent.children.include?(child_node)
        child_node.parent.children.delete(child_node)
        child_node.parent = nil
    end

    def dfs(target_value)
        return self if @value == target_value
        self.children.each do |el|
            result = el.dfs(target_value)
            return result unless result.nil?
        end
        nil
    end

    def bfs(target_value)
        queue = [self]  
        until queue.empty?
            el =  queue.shift
            return el  if el.value == target_value
            el.children.each do | child |
                queue << child
            end
        end 
        nil
    end
          


  
end
n1 = PolyTreeNode.new("root1")
n2 = PolyTreeNode.new("root2")
n3 = PolyTreeNode.new("root3")

n3.parent = n1
p n3

