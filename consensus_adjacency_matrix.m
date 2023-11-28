function A = consensus_adjacency_matrix(y)
%{
Let "n" be the number of agents.

--- Inputs ---
y: n by 2 array holding output data for all agents
   e.g., y(j,2) is the second output for agent-j

--- Outputs ---
A:  n by n adjacency matrix - see notes for details on construction
%}
n = 5;
A = zeros(n, n);
i = 1;
while i <= n
    if mod(i-1, n) == 0
        A(i, n) = 1;
    else 
        A(i, i-1) = 1;
    end
    if mod(i+1, n) == 0
        A(i, n) = 1;
    else 
        A(i, mod(i+1, n)) = 1;
    end
    i = i + 1;
end
end