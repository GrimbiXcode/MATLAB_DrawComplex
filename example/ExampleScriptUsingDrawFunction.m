%******************************************************************************
% Project     : Example m-script using complex draw functions
% Autor       : David Grimbichler
% Filename    : ExampleScriptUsingDrawFunction.m
% Date        : 25.04.2016
% Version     : 1.0
%******************************************************************************
%% AETG2 Aufgabe 4-55
% Sternschaltung ohne Mittelpunktsleiter unsymetrisch belastet

% ************************************************************************
clc; close all; clear all; close all hidden;
% ************************************************************************

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
subplot(2,1,1)
zeigerplot_to_Origin(U1M,U2M,U3M);
zeigerplot_orig_linked(-U1M,U12,U23,U31);

subplot(2,1,2)
zeigerplot_linked(S1,S2,S3);
zeigerplot_linked(S);

% ************************************************************************
% End of Script
% ************************************************************************