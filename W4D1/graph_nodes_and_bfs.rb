class GraphNode
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        visited = Set.new()
        starting_node.neighbors.each do |graphnode|
            if graphnode.value == target_value
                return graphnode
            end
            visited << graphnode
        end
    end
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
