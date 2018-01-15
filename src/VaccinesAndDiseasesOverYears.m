%%Loading complete data
completeTetanosCases = xlsread('../data/tetanosCases.xls');
completeVaccineCoverage = xlsread('../data/DTP1coverage.xls');

%%extracting sub-data for analysis

%%Angola study
angolaTetanosCases = completeTetanosCases(4,:);
angolaVaccineCoverage = completeVaccineCoverage(4,:);
%display

%plot(2016:-1:2000,angolaTetanosCases,'-.sr','LineWidth',2);
%plot(2016:-1:2000,angolaVaccineCoverage,'-.sr','LineWidth',2);
%plot(angolaVaccineCoverage,angolaTetanosCases,'sr','LineWidth',8);


%%30 country group study
% figure(1);
% for i = 1:30
%    hold on;
%    plot(completeVaccineCoverage(i,:),completeTetanosCases(i,:),'sr','LineWidth',3);
% end

%%Only diseased countries study
% figure(1);
% for i = 1:30
%    for j = 1:17
%        if completeTetanosCases(i,j)>100 
%             plot(completeVaccineCoverage(i,:),completeTetanosCases(i,:),'sr','LineWidth',3);
%             hold on;
%        end
%    end
% end
% 
%%Only diseased unvaccinated countries study
figure(1);
for i = 1:30
   for j = 1:17
       if completeTetanosCases(i,j)>100 
           if completeVaccineCoverage(i,17) < 95
               plot(completeVaccineCoverage(i,:),completeTetanosCases(i,:),'sr','LineWidth',3);
               hold on;
           end
       end
   end
end

%%Only unvaccianted countries study
% figure(1);
% for i = 1:30
%    for j = 1:17
%        if completeVaccineCoverage(i,17) < 95
%            plot(completeVaccineCoverage(i,:),completeTetanosCases(i,:),'sr','LineWidth',3);
%            hold on;
%        end
%    end
% end

