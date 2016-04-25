% Calculates parallel resistance

function rp = para(varargin)
    %rp = 1/((1/r1)+(1/r2))
    
    rp = 0;
    nVarargs = length(varargin);
    for k = 1:nVarargs
        rp = rp + 1/(varargin{k});
    end
    rp = 1/rp;
end


