%% This file performs the first test.

function [bestw, bestr, fig] = firstTest(contents) 

    %-----------------------------------------------------------------
    % First test - find the count and odds of each number, then plot:
    %-----------------------------------------------------------------
    x = [1:69];
    x2 = [1:26];
    y = [];
    y2 = [];
    z = [];
    z2 = [];
    
    goodlen = 0;
    
    % Get rid of empty cells:
    for a = 1:length(table2array(contents(:, "Date:")))
        if cell2mat(table2array(contents(a, "Date:"))) == ""
            goodlen = a-1;
            break;
        end
    end
    
    data1 = string(table2array(contents(1:goodlen, "First ball:")));
    data2 = string(table2array(contents(1:goodlen, "Second ball:")));
    data3 = string(table2array(contents(1:goodlen, "Third ball:")));
    data4 = string(table2array(contents(1:goodlen, "Fourth ball:")));
    data5 = string(table2array(contents(1:goodlen, "Fifth ball:")));
    data6 = string(table2array(contents(1:goodlen, "Powerball:")));
    
    % Give people something to look at while analysis occurs:
    fprintf("The time remaining is:")
    
    % White balls:
    for b = 1:69
    
        count = 0;
        
        fprintf("The time remaining on white is: " + (69-b) + newline);
        
        for c = 1:goodlen
            if str2double(data1(c)) == b
                count = count + 1;
            end
            if str2double(data2(c)) == b
                count = count + 1;
            end
            if str2double(data3(c)) == b
                count = count + 1;
            end
            if str2double(data4(c)) == b
                count = count + 1;
            end
            if str2double(data5(c)) == b
                count = count + 1;
            end
        end
    
        y(b) = count;
        z(b) = y(b) / (5*length(data1));        % The denominator is how many white balls have been pulled.
    
    end
    
    % Red balls:
    for b = 1:26
    
        count = 0;
        
        fprintf("The time remaining on red is: " + (26-b) + newline);
        
        for c = 1:goodlen
            if str2double(data6(c)) == b
                count = count + 1;
            end
        end
    
        y2(b) = count;
        z2(b) = y2(b) / length(data6);        % The denominator is how many red balls have been pulled.
    end
    
    % Frequency plot as a show of how many times each WHITE number has been pulled:
    figure(1);
    subplot(2, 2, 1)
    bar(x, y, FaceColor="blue", EdgeColor="black");
    title("Frequency of each white number")
    xlabel("Ball Numbers")
    ylabel("Count")
    set(0,'DefaultFigureVisible','off')
    
    % Odds plot as a show of how many times each WHITE number has been pulled,
    % relative to the number of WHITE balls that have been pulled.
    figure(1);
    subplot(2, 2, 2)
    bar(x, z, FaceColor="blue", EdgeColor="black");
    title("Odds of each white number being drawn")
    xlabel("Numbers")
    ylabel("Percentage of times pulled")
    ylim([0 1])
    set(0,'DefaultFigureVisible','off')
    
    % Frequency plot as a show of how many times each RED number has been pulled
    figure(1);
    subplot(2, 2, 3)
    bar(x2, y2, FaceColor="red", EdgeColor="black");
    title("Frequency of each red number")
    xlabel("Ball Numbers")
    ylabel("Count")
    set(0,'DefaultFigureVisible','off')
    
    % Odds plot as a show of how many times each RED number has been pulled, 
    % relative to the number of RED balls that have been pulled.
    figure(1);
    subplot(2, 2, 4)
    bar(x2, z2, FaceColor="red", EdgeColor="black");
    title("Odds of each red number being drawn")
    xlabel("Numbers")
    ylabel("Percentage of times pulled")
    ylim([0 1])
    set(0,'DefaultFigureVisible','off')
    
    
    % Return the ordered white group and ordered red group:
    fig = figure(1);
    
    bestw = [x; y];
    bestw = sortrows(bestw', 2, "descend")';
    bestw = bestw(1, :);

    bestr = [x2; y2];
    bestr = sortrows(bestr', 2, "descend")';
    bestr = bestr(1, :);

end