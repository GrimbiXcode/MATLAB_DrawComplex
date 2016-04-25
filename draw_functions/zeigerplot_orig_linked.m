function zeigerplot_orig_linked(varargin)
%*************************************************************************
% Autor       : David Grimbichler
% Filename    : zeigerplot_orig_linked.m
% Date        : 25.04.2016
% Version     : 1.0
%*************************************************************************
% ZEIGERPLOT_ORIG_LINKED(vec_startpoint,vec1,vec2,...) plots the given 
% vectors with a startpoint.
%
% function ZEIGERPLOT_ORIG_LINKED(varargin)
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
        if k > 1
        quiver(real(refStart),imag(refStart),real(arrow),imag(arrow));
        end
    end

hAutoScale=findobj('-property','AutoScale');
set(hAutoScale,'AutoScale','off')

end
% ************************************************************************
% End of function
% ************************************************************************
