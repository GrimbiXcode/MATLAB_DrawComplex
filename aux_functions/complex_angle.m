% Returns a complex number with the given absolute value and angle in
% radiants
function z = complex_angle (a, phi)
    z = a*(cos(phi) + i*sin(phi));
end
