function [] = func_plot_overlay(backimg,foreimg,cmap,limit,A)
% usage: func_plot_overlay(backimg,foreimg,cmap,limit,A)
% a function to display overlaid colored image on a
% gray-scale image, written by Chaowei Wu 
%   backimg: image show in the background
%   foreimg: image show in the front
%   cmap: 'inferno', 'jet',etc
%   limit: max value of map that display
%   A: colorbar distortor
if nargin<5
    A = @(x) x;
end
 h=figure;
 ax1=axes;imagesc(backimg);colormap(ax1,'gray');
 ax1.Visible='off';
ax2=axes;

imagesc(ax2,A(foreimg),'alphadata',foreimg>0,A([1e-12 limit]));colormap(ax2,cmap);
% caxis(ax2,[0,max(nonzeros(foreimg))]); 
caxis(ax2,A([1e-12,limit]));
ax2.Visible = 'off'; 
% linkprop([ax1 ax2],'Position');
originalSize2 = get(gca, 'Position');
[Ticks,TickLabels] = func_get_xticks(limit,A);
cb=colorbar('southoutside','Ticks',Ticks,'TickLabels',TickLabels);
newSize2 = get(ax2, 'Position');
set(ax2, 'Position', originalSize2,'FontSize',14); % Can also use gca instead of h2 if h2 is still active.
% set(h, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 0.6, 0.35]);
set(h, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 0.6, 0.8]);
end

