%%Loading complete data
completeTetanosCases = xlsread('../data/tetanosCases.xls');
completeVaccineCoverage = xlsread('../data/DTP1coverage.xls');

%%extracting sub-data for analysis

%%Angola study
angolaTetanosCases = completeTetanosCases(4,:);
angolaVaccineCoverage = completeVaccineCoverage(4,:);
%display
%plot(2016:-1:2000,angolaTetanosCases,'-.or');
%plot(2016:-1:2000,angolaVaccineCoverage,'-.or');
%plot(angolaVaccineCoverage,angolaTetanosCases,'or');

%%30 country group study
% figure(1);
% for i = 1:30
%    hold on;
%    plot(completeVaccineCoverage(i,:),completeTetanosCases(i,:),'or');
% end

%%Only diseased countries study
figure(1);
for i = 1:30
   for j = 1:17
       if completeTetanosCases(i,j)>100
           plot(completeVaccineCoverage(i,:),completeTetanosCases(i,:),'or');
           hold on;
       end
   end
end

