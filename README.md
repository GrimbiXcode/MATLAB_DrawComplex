### Complex pointer drawing function 
--
### How to use
- download the [draw_functions](/draw_functions)
 - additionaly, download auxiliary functions [here!](/aux_functions)
- add them to our working directory
- use them like this

```matlab
% ************************************************************************
% Parameter
% ************************************************************************
U12=complex_angled(400,0);
U23=complex_angled(400,-120);
U31=complex_angled(400,-240);

Z1=10+i*17.32;
Z2=0+40*i;
Z3=8.66-5*i;

% ************************************************************************
% Calculations
% ************************************************************************
U1M=complex_angled(abs(U12)/sqrt(3),-30);
U2M=complex_angled(abs(U12)/sqrt(3),90);
U3M=complex_angled(abs(U12)/sqrt(3),-150);

I1=U1M/Z1;
I2=U2M/Z2;
I3=U3M/Z3;

S1=U1M*conj(I1);
S2=U2M*conj(I2);
S3=U3M*conj(I3);

S=S1+S2+S3;

% ************************************************************************
% Output
% ************************************************************************
disp('Stroeme')
complex_printangled(I1);
complex_printangled(I2);
complex_printangled(I3);

disp('Leistungen')
complex_printangled(S1);
complex_printangled(S2);
complex_printangled(S3);

complex_printangled(S);

% ************************************************************************
% Print vectors
% ************************************************************************
figure ('Name','Example script using draw function','NumberTitle','off',...
    'Units','normalized','Position',[0.1 0.1 0.4 0.8]);

subplot(2,1,1)
zeigerplot_to_Origin(U1M,U2M,U3M);
zeigerplot_orig_linked(-U1M,U12,U23,U31);
title('Voltage U');
xlabel('real(U) [V]');
ylabel('imag(U) [V]');

subplot(2,1,2)
zeigerplot_linked(S1,S2,S3);
zeigerplot_linked(S);
title('Power S');
xlabel('real(S) [W]');
ylabel('imag(S) [var]');

% ************************************************************************
% End of Script
% ************************************************************************
```

#### Output:
![Image of output from example](/images/PrintedComplexPointer.jpg)

### Have fun!
and please let me know about bugs or any suggestions,, thanks!