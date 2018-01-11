%%Loading complete data
completeTetanosCases = xlsread('../data/tetanosCases.xls');
completeVaccineCoverage = xlsread('../data/DTP1coverage.xls');

%%extracting sub-data for analysis

%Angola study
angolaTetanosCases = completeTetanosCases(4,:)
angolaVaccineCoverage = completeVaccineCoverage(4,:)
%display
%plot(2016:-1:2000,angolaTetanosCases,'-.or');
%plot(2016:-1:2000,angolaVaccineCoverage,'-.or');
plot(angolaVaccineCoverage,angolaTetanosCases,'or');