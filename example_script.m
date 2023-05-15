% add path to the display script
addpath('your/path/to/function');
addpath('your/path/to/function/colormap');

% load example data. (Nx x Ny x3), where the stacked images are ktrans (1/min),
% kep (1/min), ve maps 
load('example_data.mat');

% example1: 
func_plot_overlay(backimg,kv_map(:,:,1),jet(256),1)

% example2: 
func_plot_overlay(backimg,kv_map(:,:,2),inferno(256),5)

% example3: 
A = @(x) log10(x+1);
func_plot_overlay(backimg,kv_map(:,:,3),jet(256),0.7,A) %log scale axis
func_plot_overlay(backimg,kv_map(:,:,3),jet(256),0.7)