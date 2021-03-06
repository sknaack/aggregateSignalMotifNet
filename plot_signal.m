function plot_signal(infile, outprefix, mytitle, filetype)
% infile: input signal filename
% outprefix: output name prefix
% mytitle: title for plots
% filetype: 'pdf','png'
% Plot signal profiles
%close all;
%addpath('/mnt/ws/sysbio/roygroup/shared/thirdparty/matlab_additionals/sc');

% make sure title has no _ (makes subscripts)
mytitle=strrep(mytitle,'_','-');
mytitle

Purples=[1.0000    1.0000    1.0000;
    0.9973    0.9968    0.9984;
    0.9945    0.9935    0.9969;
    0.9918    0.9903    0.9953;
    0.9890    0.9871    0.9937;
    0.9863    0.9839    0.9921;
    0.9835    0.9806    0.9906;
    0.9808    0.9774    0.9890;
    0.9780    0.9742    0.9874;
    0.9753    0.9710    0.9858;
    0.9725    0.9677    0.9843;
    0.9698    0.9645    0.9827;
    0.9670    0.9613    0.9811;
    0.9643    0.9581    0.9795;
    0.9615    0.9548    0.9780;
    0.9588    0.9516    0.9764;
    0.9560    0.9484    0.9748;
    0.9533    0.9451    0.9732;
    0.9505    0.9419    0.9717;
    0.9478    0.9387    0.9701;
    0.9450    0.9355    0.9685;
    0.9423    0.9322    0.9669;
    0.9395    0.9290    0.9654;
    0.9368    0.9258    0.9638;
    0.9340    0.9226    0.9622;
    0.9313    0.9193    0.9606;
    0.9285    0.9161    0.9591;
    0.9258    0.9129    0.9575;
    0.9231    0.9096    0.9559;
    0.9203    0.9064    0.9543;
    0.9176    0.9032    0.9528;
    0.9148    0.9000    0.9512;
    0.9121    0.8967    0.9496;
    0.9093    0.8935    0.9480;
    0.9066    0.8903    0.9465;
    0.9038    0.8871    0.9449;
    0.9011    0.8838    0.9433;
    0.8983    0.8806    0.9417;
    0.8956    0.8774    0.9402;
    0.8928    0.8742    0.9386;
    0.8901    0.8709    0.9370;
    0.8873    0.8677    0.9354;
    0.8846    0.8645    0.9339;
    0.8818    0.8612    0.9323;
    0.8791    0.8580    0.9307;
    0.8763    0.8548    0.9291;
    0.8736    0.8516    0.9276;
    0.8708    0.8483    0.9260;
    0.8681    0.8451    0.9244;
    0.8653    0.8419    0.9228;
    0.8626    0.8387    0.9213;
    0.8598    0.8354    0.9197;
    0.8571    0.8322    0.9181;
    0.8543    0.8290    0.9165;
    0.8516    0.8258    0.9150;
    0.8488    0.8225    0.9134;
    0.8461    0.8193    0.9118;
    0.8434    0.8161    0.9102;
    0.8406    0.8128    0.9087;
    0.8379    0.8096    0.9071;
    0.8351    0.8064    0.9055;
    0.8324    0.8032    0.9039;
    0.8296    0.7999    0.9024;
    0.8269    0.7967    0.9008;
    0.8241    0.7935    0.8992;
    0.8214    0.7903    0.8976;
    0.8186    0.7870    0.8961;
    0.8159    0.7838    0.8945;
    0.8131    0.7806    0.8929;
    0.8104    0.7774    0.8913;
    0.8076    0.7741    0.8898;
    0.8049    0.7709    0.8882;
    0.8021    0.7677    0.8866;
    0.7994    0.7644    0.8850;
    0.7966    0.7612    0.8835;
    0.7939    0.7580    0.8819;
    0.7911    0.7548    0.8803;
    0.7884    0.7515    0.8787;
    0.7856    0.7483    0.8772;
    0.7829    0.7451    0.8756;
    0.7801    0.7419    0.8740;
    0.7774    0.7386    0.8724;
    0.7746    0.7354    0.8709;
    0.7719    0.7322    0.8693;
    0.7692    0.7289    0.8677;
    0.7664    0.7257    0.8661;
    0.7637    0.7225    0.8646;
    0.7609    0.7193    0.8630;
    0.7582    0.7160    0.8614;
    0.7554    0.7128    0.8598;
    0.7527    0.7096    0.8583;
    0.7499    0.7064    0.8567;
    0.7472    0.7031    0.8551;
    0.7444    0.6999    0.8535;
    0.7417    0.6967    0.8520;
    0.7389    0.6935    0.8504;
    0.7362    0.6902    0.8488;
    0.7334    0.6870    0.8472;
    0.7307    0.6838    0.8457;
    0.7279    0.6805    0.8441;
    0.7252    0.6773    0.8425;
    0.7224    0.6741    0.8409;
    0.7197    0.6709    0.8394;
    0.7169    0.6676    0.8378;
    0.7142    0.6644    0.8362;
    0.7114    0.6612    0.8346;
    0.7087    0.6580    0.8331;
    0.7059    0.6547    0.8315;
    0.7032    0.6515    0.8299;
    0.7004    0.6483    0.8283;
    0.6977    0.6451    0.8268;
    0.6950    0.6418    0.8252;
    0.6922    0.6386    0.8236;
    0.6895    0.6354    0.8220;
    0.6867    0.6321    0.8205;
    0.6840    0.6289    0.8189;
    0.6812    0.6257    0.8173;
    0.6785    0.6225    0.8157;
    0.6757    0.6192    0.8142;
    0.6730    0.6160    0.8126;
    0.6702    0.6128    0.8110;
    0.6675    0.6096    0.8094;
    0.6647    0.6063    0.8079;
    0.6620    0.6031    0.8063;
    0.6592    0.5999    0.8047;
    0.6565    0.5966    0.8031;
    0.6537    0.5934    0.8016;
    0.6510    0.5902    0.8000;
    0.6482    0.5870    0.7984;
    0.6455    0.5837    0.7969;
    0.6427    0.5805    0.7953;
    0.6400    0.5773    0.7937;
    0.6372    0.5741    0.7921;
    0.6345    0.5708    0.7906;
    0.6317    0.5676    0.7890;
    0.6290    0.5644    0.7874;
    0.6262    0.5612    0.7858;
    0.6235    0.5579    0.7843;
    0.6208    0.5547    0.7827;
    0.6180    0.5515    0.7811;
    0.6153    0.5482    0.7795;
    0.6125    0.5450    0.7780;
    0.6098    0.5418    0.7764;
    0.6070    0.5386    0.7748;
    0.6043    0.5353    0.7732;
    0.6015    0.5321    0.7717;
    0.5988    0.5289    0.7701;
    0.5960    0.5257    0.7685;
    0.5933    0.5224    0.7669;
    0.5905    0.5192    0.7654;
    0.5878    0.5160    0.7638;
    0.5850    0.5128    0.7622;
    0.5823    0.5095    0.7606;
    0.5795    0.5063    0.7591;
    0.5768    0.5031    0.7575;
    0.5740    0.4998    0.7559;
    0.5713    0.4966    0.7543;
    0.5685    0.4934    0.7528;
    0.5658    0.4902    0.7512;
    0.5630    0.4869    0.7496;
    0.5603    0.4837    0.7480;
    0.5575    0.4805    0.7465;
    0.5548    0.4773    0.7449;
    0.5520    0.4740    0.7433;
    0.5493    0.4708    0.7417;
    0.5465    0.4676    0.7402;
    0.5438    0.4644    0.7386;
    0.5411    0.4611    0.7370;
    0.5383    0.4579    0.7354;
    0.5356    0.4547    0.7339;
    0.5328    0.4514    0.7323;
    0.5301    0.4482    0.7307;
    0.5273    0.4450    0.7291;
    0.5246    0.4418    0.7276;
    0.5218    0.4385    0.7260;
    0.5191    0.4353    0.7244;
    0.5163    0.4321    0.7228;
    0.5136    0.4289    0.7213;
    0.5108    0.4256    0.7197;
    0.5081    0.4224    0.7181;
    0.5053    0.4192    0.7165;
    0.5026    0.4159    0.7150;
    0.4998    0.4127    0.7134;
    0.4971    0.4095    0.7118;
    0.4943    0.4063    0.7102;
    0.4916    0.4030    0.7087;
    0.4888    0.3998    0.7071;
    0.4861    0.3966    0.7055;
    0.4833    0.3934    0.7039;
    0.4806    0.3901    0.7024;
    0.4778    0.3869    0.7008;
    0.4751    0.3837    0.6992;
    0.4723    0.3805    0.6976;
    0.4696    0.3772    0.6961;
    0.4669    0.3740    0.6945;
    0.4641    0.3708    0.6929;
    0.4614    0.3675    0.6913;
    0.4586    0.3643    0.6898;
    0.4559    0.3611    0.6882;
    0.4531    0.3579    0.6866;
    0.4504    0.3546    0.6850;
    0.4476    0.3514    0.6835;
    0.4449    0.3482    0.6819;
    0.4421    0.3450    0.6803;
    0.4394    0.3417    0.6787;
    0.4366    0.3385    0.6772;
    0.4339    0.3353    0.6756;
    0.4311    0.3321    0.6740;
    0.4284    0.3288    0.6724;
    0.4256    0.3256    0.6709;
    0.4229    0.3224    0.6693;
    0.4201    0.3191    0.6677;
    0.4174    0.3159    0.6661;
    0.4146    0.3127    0.6646;
    0.4119    0.3095    0.6630;
    0.4091    0.3062    0.6614;
    0.4064    0.3030    0.6598;
    0.4036    0.2998    0.6583;
    0.4009    0.2966    0.6567;
    0.3981    0.2933    0.6551;
    0.3954    0.2901    0.6535;
    0.3927    0.2869    0.6520;
    0.3899    0.2836    0.6504;
    0.3872    0.2804    0.6488;
    0.3844    0.2772    0.6472;
    0.3817    0.2740    0.6457;
    0.3789    0.2707    0.6441;
    0.3762    0.2675    0.6425;
    0.3734    0.2643    0.6409;
    0.3707    0.2611    0.6394;
    0.3679    0.2578    0.6378;
    0.3652    0.2546    0.6362;
    0.3624    0.2514    0.6346;
    0.3597    0.2482    0.6331;
    0.3569    0.2449    0.6315;
    0.3542    0.2417    0.6299;
    0.3514    0.2385    0.6283;
    0.3487    0.2352    0.6268;
    0.3459    0.2320    0.6252;
    0.3432    0.2288    0.6236;
    0.3404    0.2256    0.6220;
    0.3377    0.2223    0.6205;
    0.3349    0.2191    0.6189;
    0.3322    0.2159    0.6173;
    0.3294    0.2127    0.6157;
    0.3267    0.2094    0.6142;
    0.3239    0.2062    0.6126;
    0.3212    0.2030    0.6110;
    0.3184    0.1998    0.6094;
    0.3157    0.1965    0.6079;
    0.3130    0.1933    0.6063;
    0.3102    0.1901    0.6047;
    0.3075    0.1868    0.6031;
    0.3047    0.1836    0.6016;
    0.3020    0.1804    0.6000;
    0.3020    0.1804    0.6000];

%infile
mytable=readtable(infile, 'Delimiter','\t','ReadVariableNames',0);
mymatrix=table2array(mytable(:,2:end));

% cluster with kmeans
[ cid centroid ]=kmeans(mymatrix,2,'Replicates',5);

% sort clusters by mean of mean signals
cmeans=[];
for r=1:size(centroid,1)
    cmeans(r)=mean(centroid(r,:));
end
[ sortmeanvals csort ]=sort(cmeans,'descend');

sortmat=[];
for r=1:numel(csort)
    clustmat=mymatrix(find(cid==csort(r)),:);
    % sort decreasing by total
    rowsums=sum(clustmat')';
    [order six]=sort(rowsums,'descend');
    sortmat=[ sortmat; clustmat(six,:)];
end

% how wide is the window?
numbins=size(mymatrix,2);
lowX=0-numbins/2+1;
hiX=0+numbins/2;

% plot heatmap
% what are my quantiles?
highval=quantile(sortmat(:), 0.9999);
%highval=maxes(c);

f=figure;
imagesc(sortmat, [0 highval]);
colormap(Purples);
title(sprintf('%s', strrep(infile,'_','-')));
ylabel('Regions')
set(gca,'XTick',[1 numbins/2 numbins]);
set(gca,'XTickLabel',[lowX 0 hiX-1]);
cb=colorbar;
%ylabel(cb);
title(mytitle);
set(f,'PaperPositionMode','auto');
set(f,'Units','inches');
set(f,'PaperSize', [3 10]);
fpos=get(f,'Position');
set(f, 'Position', [fpos(1) fpos(2) 3 10]);
saveas(f,sprintf('%s_heatmap.%s',outprefix,filetype),filetype);

% plot profile with 'lines' colormap
f=figure;
legnames={};
%linecolors=[ 0 0 0.5; 0 1 0.5];



for r=csort
    plot(lowX:hiX,centroid(r,:),'LineWidth',2); %'Color', linecolors(csort(r),:));
    hold on;
    legnames=[legnames sprintf('C%d (%d regions)', r, numel(find(cid==r)))];
end
grid on;
legend(legnames,'Location','southoutside','Orientation','vertical');
%title(sprintf('%s', strrep(infile,'_','-')));
title(mytitle);
xlim([lowX,hiX])
ylabel('Counts');
xlabel('Motif center');

set(f,'PaperPositionMode','auto');
set(f,'Units','inches');
set(f,'PaperSize', [3 3.5]);
fpos=get(f,'Position');
set(f, 'Position', [fpos(1) fpos(2) 3 3.5]);
saveas(f,sprintf('%s_profile.%s',outprefix,filetype),filetype);
return
