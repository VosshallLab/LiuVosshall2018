path = 'F:\heatseeking-pilot\';
roman = {'20161007_orl0927-0',...
        '20161023_orl1011-2',...
        '20161028_orl1018-1',...
        '20161104_orl1025-1',...
        '20161107_orl1025-1',...
        '20161107_orl1025-2',...
        '20161111_orl1101-2',...
        '20161113_orl1101-1'};
dot = {'20161013_orl1004-0',...
      '20161023_orl1011-1',...
      '20161028_orl1018-0',...
      '20161104_orl1025-0',...
      '20161106_orl1025-0',...
      '20161107_orl1025-0',...
      '20161111_orl1101-1',...
      '20161113_orl1101-2'};
  
templabels = [400,26,28.5,31,33.5,36,38.5,40,45,50,55,60];
dotcmax = zeros(1,12);

[allpos,cdot,cdotn] = gather_all_pos(roman,path);
allpos_mat = [];
for i=1:12
    %dotcmax(i) = heatseeking_heatmap(allpos{i},'','',1);
    heatseeking_heatmap(allpos{i},path,['hm_blank_' num2str(templabels(i)) '.pdf'],0,360);
    title(['orl-' num2str(templabels(i)) '.pdf']);
    %close
end
[allpos,ddot,ddotn] = gather_all_pos(dot,path);
for i=1:12
    %dotcmax(i) = heatseeking_heatmap(allpos{i},'','',1);
    heatseeking_heatmap(allpos{i},path,['hm_dot_' num2str(templabels(i)) '.pdf'],1,360);
    title(['dot-' num2str(templabels(i)) '.pdf']);
    %close
end

save(fullfile(path,'original_dot'),'cdot','cdotn','ddot','ddotn');