%DoubleToJPG
%��double���ݴ�Ϊjpgͼ��
% load E:\��ҵ����\LTV\�����Իع�AB�޷�Χ\�ָ����\UafterRestoration;
% load E:\��ҵ����\LTV\lamda_0.75�ķֽ�ɷ�\UafterRestoration;
load E:\QuotientIamge\QuotientIm;
for person=1:10
    if person<10
        PersonString=sprintf('0%d',person);
    else
        PersonString=sprintf('%d',person);
    end
     for ithImage=1:64
        if ithImage<10
            ithImageString=sprintf('0%d.jpg',ithImage);           
         else
            ithImageString=sprintf('%d.jpg',ithImage);
        end
        close all;
        temp=reshape(QuotientIm(:,64*(person-1)+ithImage),100,100);
        savename=strcat('E:\QuotientIamge\YaleB_QuotientIm_JPG','\',PersonString,ithImageString);
        imwrite(mat2gray(temp),savename,'Quality',100);
%         h=figure;
%         imshow(mat2gray(reshape(UafterRestoration(:,65*(person-1)+ithImage),112,92)));
%         savename=strcat('E:\��ҵ����\LTV\�����Իع�AB�޷�Χ\�ָ����','\',PersonString,ithImageString);
%         saveas(h,savename,'jpg');
     end
end
clear QuotientIm;