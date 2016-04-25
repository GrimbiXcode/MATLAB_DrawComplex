function complex_printangled (zin)
% Prints the complex numer formatted as absolute and angle
    string = sprintf('betrag: %.6f winkel: %.6f grad',abs(zin), angle(zin)*180/pi);
    disp(string)
    string = sprintf('betrag: %.6f winkel: %.6f rad',abs(zin), angle(zin));
    disp(string)
    
    S.Betrag=abs(zin);
    S.Winkel_GRAD=angle(zin)*180/pi;
    S.Winkel_RAD=angle(zin);
    
    S
end
