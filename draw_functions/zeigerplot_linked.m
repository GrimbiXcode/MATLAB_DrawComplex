function zeigerplot_linked(varargin)
%*************************************************************************
% Autor       : David Grimbichler
% Filename    : zeigerplot_linked.m
% Date        : 25.04.2016
% Version     : 1.0
%*************************************************************************
% ZEIGERPLOT_LINKED(vec1,vec2,vec3,vec4,...) plots the given 
% vectors from origin.
%
% function ZEIGERPLOT_LINKED(varargin)
%   varargin  =   variable input arguments
% 
% plotsetups:   axis equal;
%               grid on;
%               hold on;
%*************************************************************************
% used functions:     - quiver()
%                     - set
%                     - findobj
%*************************************************************************
nVarargs = length(varargin);

grid on, axis equal;
hold on;
arrow=0;
refStart=0;
    for k = 1:nVarargs
    refStart=refStart + arrow; arrow=(varargin{k});
    quiver(real(refStart),imag(refStart),real(arrow),imag(arrow));
    end

hAutoScale=findobj('-property','AutoScale');
set(hAutoScale,'AutoScale','off')

end

