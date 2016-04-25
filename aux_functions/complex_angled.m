% Returns a complex number with the given absolute value and angle in
% degree
function z = complex_angled (a, phi)
    z = a*(cosd(phi) + i*sind(phi));
end
