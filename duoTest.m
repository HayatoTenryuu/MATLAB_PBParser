%% This file performs the second test.

function biggy = duoTest(contents, startyear) 

    % Initialize all return variables
    local_best1w = 0;
    local_best2w = 0;
    local_bestr = 0;
    lodds_best1w = 0;
    lodds_best2w = 0;
    lodds_bestr = 0;
    global_best1w = 0;
    global_best2w = 0;
    global_bestr = 0;
    godds_best1w = 0;
    godds_best2w = 0;
    godds_bestr = 0;

    %----------------------------------------------------------------------
    % Second test - find the winning schema for the past 5 years, then plot:
    %----------------------------------------------------------------------

    % Phase 1 - Get locations for yearly data %
    fprintf("Performing Baseline Analysis for Years leading up to " + num2str(startyear) + "." + newline)
    
    x = [1:69];
    x2 = [1:26];
    y = [];
    y2 = [];
    z = [];
    z2 = [];
    
    % Get rid of trailing empty cells:
    totlen = 0;
    for a = 1:length(table2array(contents(:, "Date:")))
        if cell2mat(table2array(contents(a, "Date:"))) == ""
            totlen = a-1;
            break;
        end
    end

    % Get the present year:
    datee = table2array(contents(totlen, "Date:"));
    presnt = str2double(datee{1}(1:4));

    range = presnt - startyear + 1;
    q = cell(range, 2);

    % Get the start of each year in the data
    for year = startyear:presnt
        for c = 1:totlen
            express = strcat(num2str(year),'-*');
            if regexp(cell2mat(table2array(contents(c, "Date:"))), express) == 1
                if year == startyear
                    q{1, 1} = c;
                    break;
                end

                r = year - (startyear - 1);
                q{r, 1} = c;
                q{r-1, 2} = c-1;
                break;
            end
        end
    end

    q{range, 2} = totlen;
    fprintf("Done." + newline);

    % Phase 2 - Get yearly schema data (total count of each schema per drawing)

    % All in one counts
    perma_500 = 0;
    perma_050 = 0;
    perma_005 = 0;

    % Outer set counts
    perma_104 = 0;
    perma_203 = 0;
    perma_302 = 0;
    perma_401 = 0;
    
    % Middle exchange counts
    perma_140 = 0;
    perma_041 = 0;

    perma_230 = 0;
    perma_032 = 0;

    perma_320 = 0;
    perma_023 = 0;

    perma_410 = 0;
    perma_014 = 0;
    
    % Triple convolution counts
    perma_311 = 0;
    perma_131 = 0;
    perma_113 = 0;
    
    perma_221 = 0;
    perma_212 = 0;
    perma_122 = 0;

    % Red ball schema count
    perma_r1 = 0;
    perma_r2 = 0;
    perma_r3 = 0;

    for d = 1:range
        fprintf("Performing Complicated Analysis for Year " + num2str((startyear - 1) + d) + "..." + newline);
        drawings_this_year = q{d, 2} - q{d, 1} + 1;

        % All in one counts
        count_schema_500 = 0;
        count_schema_050 = 0;
        count_schema_005 = 0;

        % Outer set counts
        count_schema_104 = 0;
        count_schema_203 = 0;
        count_schema_302 = 0;
        count_schema_401 = 0;
        
        % Middle exchange counts
        count_schema_140 = 0;
        count_schema_041 = 0;

        count_schema_230 = 0;
        count_schema_032 = 0;

        count_schema_320 = 0;
        count_schema_023 = 0;

        count_schema_410 = 0;
        count_schema_014 = 0;
        
        % Triple convolution counts
        count_schema_311 = 0;
        count_schema_131 = 0;
        count_schema_113 = 0;
        
        count_schema_221 = 0;
        count_schema_212 = 0;
        count_schema_122 = 0;

        % Red ball schema count
        count_schema_r1 = 0;
        count_schema_r2 = 0;
        count_schema_r3 = 0;
    
        %---------------------------------------------------------------
        % For info, this next section takes longer each year because it 
        % reruns the odds PER DRAWING. That means that the schemas are 
        % recalculated 150 times per year, the baseline data for each 
        % year gets 150 entires longer year over year, and therefore each
        % check for inclusion in a particular schema has to go over 150
        % more lines of data per year.
        %
        % Worse actually, because it all gets 1 longer per drawing, so
        % it's more like compound interest, compounding each drawing.
        % But instead of making more money, we end up taking more time.
        % The only way to make it faster is to decrease how often we
        % update the odds/schemas, or use a different language.
        %---------------------------------------------------------------

        for draw = 0:(drawings_this_year - 1)           % five drawings means go 0:4
            goodlen = q{d, 1} + draw - 1;               % gets the length of stats up to this drawing
    
            % Part 1 - get stats up to current drawing (for schema baseline)
            data1 = string(table2array(contents(1:goodlen, "First ball:")));    % Data is a cell, string frees it for comparison
            data2 = string(table2array(contents(1:goodlen, "Second ball:")));
            data3 = string(table2array(contents(1:goodlen, "Third ball:")));
            data4 = string(table2array(contents(1:goodlen, "Fourth ball:")));
            data5 = string(table2array(contents(1:goodlen, "Fifth ball:")));
            data6 = string(table2array(contents(1:goodlen, "Powerball:")));
            
            % White balls:
            for b = 1:69                                    % white ball number      
                count = 0;   
                for c = 1:goodlen
                    if ((str2double(data1(c)) == b) || (str2double(data2(c)) == b) || ...
                            (str2double(data3(c)) == b) || (str2double(data4(c)) == b) || ...
                            (str2double(data5(c)) == b))
                        count = count + 1;
                    end
                end
            
                y(b) = count;                       % Number of times b (the white ball) was drawn within this year.
                z(b) = y(b) / length(data1);        % The denominator is how many drawings there have been
            
            end
            
            % Red balls:
            for b = 1:26
                count = 0;
                for c = 1:goodlen
                    if str2double(data6(c)) == b
                        count = count + 1;
                    end
                end
            
                y2(b) = count;                        % Number of times b (the red ball) was drawn within this year.
                z2(b) = y2(b) / length(data6);        % The denominator is how many red balls have been pulled.
            end
    
            % What this gave us, (because it's not obvious),
                % x[] is ball numbers 1-69 (the white ball numbers)
                % y[] is how often this year each ball number (corresponding entry in x) was drawn
                % z[] is the odds of each ball number (corresponding entry in x) being drawn
    
                % x2[], y2[], z2[] are the same with the red balls
        
            % Part 2 - Organize the schemas:
            wbest_prestart = [x; y];
            wbest_prestart = sortrows(wbest_prestart', 2, "descend")';
        
            rbest_prestart = [x2; y2];
            rbest_prestart = sortrows(rbest_prestart', 2, "descend")';
    
            White = cell(ceil(length(x)/3) + 1, 3);
            Red = cell(ceil(length(x2)/3) + 1, 3);
    
            White{1, 1} = 'Most Likely:';
            White{1, 2} = 'Mid';
            White{1, 3} = 'Least Likely';
            for entry = 2:24
                White{entry, 1} = wbest_prestart(1, entry-1);
                White{entry, 2} = wbest_prestart(1, 23 + entry - 1);
                White{entry, 3} = wbest_prestart(1, 46 + entry - 1);
            end
        
            Red{1, 1} = 'Most Likely:';
            Red{1, 2} = 'Mid';
            Red{1, 3} = 'Least Likely';
            for entry = 2:9
                Red{entry, 1} = rbest_prestart(1, entry-1);
                Red{entry, 2} = rbest_prestart(1, 9 + entry - 1);
                Red{entry, 3} = rbest_prestart(1, 18 + entry - 1);
            end
    
            % What this gave us:
                % White{} is a 23x3 cell divided up by Most, Mid, and Least likely numbers
                % Red{} is also done the same way.
            
                % We can now search each row of contents() between YearStart and YearEnd
                % using q{} to see if the first 5 elements are in White{1, 2, or 3} and
                % searching for the 6th element in Red{1, 2, or 3}
        
            % Part 3 - For each drawing of this year, calculate the winning schema
    
            % Arrange schema categories and assign schemas based on them
            pain = table2array(contents(q{d, 1} + draw, 2:6));  % variable to hold white values per drawing, per year
            painr = table2array(contents(q{d, 1} + draw, 7));

            agony1 = cell2mat(White(2:24, 1))';         % Most likely
            agony2 = cell2mat(White(2:24, 2))';         % Mid likelihood
            % If a white ball doesn't belong to the first two, it must be in the third,
            % so we don't need to calculate it. Especially every single drawing for multiple years.

            ragony1 = cell2mat(Red(2:9, 1))';
            ragony2 = cell2mat(Red(2:9, 2))';
            % If a red ball doesn't belong to the first two, it must be in the third, 
            % so we don't need to calculate it. Especially every single drawing for multiple years.

            Most = sum(ismember(str2double(pain), agony1));
            Midd = sum(ismember(str2double(pain), agony2));
            % The sum of the balls between the three categories = 5,
            % so we don't actually need to calculate the third. Especially every single drawing for multiple years.

            switch Most
                case 0
                    switch Midd
                        case 0
                            count_schema_005 = count_schema_005 + 1;
                        case 1
                            count_schema_014 = count_schema_014 + 1;
                        case 2
                            count_schema_023 = count_schema_023 + 1;
                        case 3
                            count_schema_032 = count_schema_032 + 1;
                        case 4
                            count_schema_041 = count_schema_041 + 1;
                        case 5
                            count_schema_050 = count_schema_050 + 1;
                    end
                case 1
                    switch Midd
                        case 0
                            count_schema_104 = count_schema_104 + 1;
                        case 1
                            count_schema_113 = count_schema_113 + 1;
                        case 2
                            count_schema_122 = count_schema_122 + 1;
                        case 3
                            count_schema_131 = count_schema_131 + 1;
                        case 4
                            count_schema_140 = count_schema_140 + 1;
                    end
                case 2
                    switch Midd
                        case 0
                            count_schema_203 = count_schema_203 + 1;
                        case 1
                            count_schema_212 = count_schema_212 + 1;
                        case 2
                            count_schema_221 = count_schema_221 + 1;
                        case 3
                            count_schema_230 = count_schema_230 + 1;
                    end
                case 3
                    switch Midd
                        case 0
                            count_schema_302 = count_schema_302 + 1;
                        case 1
                            count_schema_311 = count_schema_311 + 1;
                        case 2
                            count_schema_320 = count_schema_320 + 1;
                    end
                case 4
                    switch Midd
                        case 0
                            count_schema_401 = count_schema_401 + 1;
                        case 1
                            count_schema_410 = count_schema_410 + 1;
                    end
                case 5
                    count_schema_500 = count_schema_500 + 1;
            end

            % Count red schema
            if ismember(str2double(painr), ragony1)
                count_schema_r1 = count_schema_r1 + 1;
            elseif ismember(str2double(painr), ragony2)
                count_schema_r2 = count_schema_r2 + 1;
            else
                count_schema_r3 = count_schema_r3 + 1;
            end
        end

        % Build figure for white
        fig1 = figure('Visible', 'off');

        k1 = subplot(1, 2, 1);
        title(k1, "White Ball Schemas");
        xaxW = [count_schema_500, 0, 0, 0, 0, count_schema_050, 0, 0, 0, 0, count_schema_005;
            0, 0, count_schema_401, 0, count_schema_302, 0, count_schema_203, 0, count_schema_104, 0, 0;
            0, count_schema_410, count_schema_320, count_schema_230, count_schema_140, 0, count_schema_041, count_schema_032, count_schema_023, count_schema_014, 0;
            0, 0, 0, count_schema_311, count_schema_221, count_schema_212, count_schema_122, count_schema_113, 0, 0, 0;
            0, 0, 0, 0, 0, count_schema_131, 0, 0, 0, 0, 0];
        bar3(xaxW); 
        
        % Set axes labels
        set(gca, 'yticklabel', {'All in One', ...
            'Outer Pair', ...
            'Middle Exchange', ...
            'Triple, Outer Heavy', ...
            'Triple, Inner Heavy'});
        set(gca, 'xticklabel', {'Top Heavy', ...
            'Top Weighted', ...
            'Top Leaning', ...
            'Mid but Top Weighted', ...
            'Mid Leaning Up', ...
            'Perfectly Centered', ...
            'Mid Leaning Down', ...
            'Mid but Bottom Weighted', ...
            'Bottom Leaning', ...
            'Bottom Weighted', ...
            'Bottom Heavy'});
        
        k2 = subplot(1, 2, 2);
        title(k2, "Red Ball Schemas");
        xaxR = [count_schema_r1; count_schema_r2; count_schema_r3];
        bar3(xaxR);
        set(gca, 'yticklabel', {'Top Range', 'Mid Range', 'Bottom Range'});

        sgtitle(fig1, 'Schema Comparison for ' + string(d + (startyear - 1)));

        % Save figure to file
        locale = dir;
        last = length(locale);
        aru = false;
    
        for que = 1:last
            finder = locale(que).name;
            if finder == "figure"
                aru = true;
            end
        end
        
        if aru == false
            mkdir figure;   
        end
        
        % Save Text as likely/middle/unlikely sets
        fig1.Visible = 'on';                 % The figure remembers its visibility later
        filename = "figure\Year " + num2str(d + (startyear - 1)) + " Schema Chart";
        if isfile(filename)
            delete(filename);
        end

        saveas(fig1, filename);

        fig1.Visible = 'off';
        drawnow;
        
        % Update permanent values prior to moving to the new year
        
        % All in one counts
        perma_500 = perma_500 + count_schema_500;
        perma_050 = perma_050 + count_schema_050;
        perma_005 = perma_005 + count_schema_005;
    
        % Outer set counts
        perma_104 = perma_104 + count_schema_104;
        perma_203 = perma_203 + count_schema_203;
        perma_302 = perma_302 + count_schema_302;
        perma_401 = perma_401 + count_schema_401;
        
        % Middle exchange counts
        perma_140 = perma_140 + count_schema_140;
        perma_041 = perma_041 + count_schema_041;
    
        perma_230 = perma_230 + count_schema_230;
        perma_032 = perma_032 + count_schema_032;
    
        perma_320 = perma_320 + count_schema_320;
        perma_023 = perma_023 + count_schema_023;
    
        perma_410 = perma_410 + count_schema_410;
        perma_014 = perma_014 + count_schema_014;
        
        % Triple convolution counts
        perma_311 = perma_311 + count_schema_311;
        perma_131 = perma_131 + count_schema_131;
        perma_113 = perma_113 + count_schema_113;
        
        perma_221 = perma_221 + count_schema_221;
        perma_212 = perma_212 + count_schema_212;
        perma_122 = perma_122 + count_schema_122;
    
        % Red ball schema count
        perma_r1 = perma_r1 + count_schema_r1;
        perma_r2 = perma_r2 + count_schema_r2;
        perma_r3 = perma_r3 + count_schema_r3;

        % Return the best schemas for the current year
        if d == range
            
            % Find the best 2 schemas to use based on the data
            countys = [count_schema_500, count_schema_050, count_schema_005, ...
                count_schema_410, count_schema_401, count_schema_104, count_schema_014, ...
                count_schema_140, count_schema_041, count_schema_203, count_schema_302, ...
                count_schema_230, count_schema_032, count_schema_320, count_schema_023, ...
                count_schema_311, count_schema_131, count_schema_113, count_schema_221, ...
                count_schema_122, count_schema_212];
        
            nameys = ["schema_500", "schema_050", "schema_005", "schema_410", "schema_401", "schema_104", "schema_014", ...
                "schema_140", "schema_041", "schema_203", "schema_302", "schema_230", "schema_032", "schema_320", ...
                "schema_023", "schema_311", "schema_131", "schema_113", "schema_221", "schema_122", "schema_212"];
        
            group = dictionary(nameys, countys);
            top = max(group.values);
            lodds_best1w = top/(sum(group.values));
            ind = group.keys;
        
            for x = 1:length(ind)
                if lookup(group, ind(x)) == top
                    local_best1w = ind(x);
                    break;
                end
            end
        
            group2 = remove(group, local_best1w);
            top2 = max(group2.values);
            lodds_best2w = top2/(sum(group2.values));
            ind2 = group2.keys;
        
            for x = 1:length(ind2)
                if lookup(group2, ind2(x)) == top2
                    local_best2w = ind2(x);
                    break;
                end
            end
        
            countrr = [count_schema_r1, count_schema_r2, count_schema_r3];
            namerr = ["count_schema_r1", "count_schema_r2", "count_schema_r3"];
        
            grouprr = dictionary(namerr, countrr);
            toprr = max(grouprr.values);
            lodds_bestr = toprr/(sum(grouprr.values));
            indrr = grouprr.keys;
        
            for x = 1:length(indrr)
                if lookup(grouprr, indrr(x)) == toprr
                    local_bestr = indrr(x);
                    break;
                end
            end
        end

        fprintf("Complete!" + newline);
    end 

    % Find the best 2 schemas to use based on the data
    countys = [perma_500, perma_050, perma_005, perma_410, perma_401, perma_104, perma_014, ...
        perma_140, perma_041, perma_203, perma_302, perma_230, perma_032, perma_320, ...
        perma_023, perma_311, perma_131, perma_113, perma_221, perma_122, perma_212];

    nameys = ["perma_500", "perma_050", "perma_005", "perma_410", "perma_401", "perma_104", "perma_014", ...
        "perma_140", "perma_041", "perma_203", "perma_302", "perma_230", "perma_032", "perma_320", ...
        "perma_023", "perma_311", "perma_131", "perma_113", "perma_221", "perma_122", "perma_212"];

    group = dictionary(nameys, countys);
    top = max(group.values);
    godds_best1w = top/(sum(group.values));
    ind = group.keys;

    for x = 1:length(ind)
        if lookup(group, ind(x)) == top
            global_best1w = ind(x);
            break;
        end
    end

    group2 = remove(group, global_best1w);
    top2 = max(group2.values);
    godds_best2w = top2/(sum(group2.values));
    ind2 = group2.keys;

    for x = 1:length(ind2)
        if lookup(group2, ind2(x)) == top2
            global_best2w = ind2(x);
            break;
        end
    end

    countrr = [perma_r1, perma_r2, perma_r3];
    namerr = ["perma_r1", "perma_r2", "perma_r3"];

    grouprr = dictionary(namerr, countrr);
    toprr = max(grouprr.values);
    godds_bestr = toprr/(sum(grouprr.values));
    indrr = grouprr.keys;

    for x = 1:length(indrr)
        if lookup(grouprr, indrr(x)) == toprr
            global_bestr = indrr(x);
            break;
        end
    end

    biggy = [local_best1w, local_best2w, local_bestr, lodds_best1w, lodds_best2w, lodds_bestr...
    global_best1w, global_best2w, global_bestr, godds_best1w, godds_best2w, godds_bestr];

    % Phase 3 - Bar plot the schemas across all years (single plot per schema)
    fprintf("Performing some final analysis." + newline)

    % Build figure for white
    fig2 = figure('Visible', 'off');
    
    k3 = subplot(1, 2, 1);
    title(k3, "White Ball Schemas")
    xaxW = [perma_500, 0, 0, 0, 0, perma_050, 0, 0, 0, 0, perma_005;
        0, 0, perma_401, 0, perma_302, 0, perma_203, 0, perma_104, 0, 0;
        0, perma_410, perma_320, perma_230, perma_140, 0, perma_041, perma_032, perma_023, perma_014, 0;
        0, 0, 0, perma_311, perma_221, perma_212, perma_122, perma_113, 0, 0, 0;
        0, 0, 0, 0, 0, perma_131, 0, 0, 0, 0, 0];
    bar3(xaxW); 
    
    % Set axes labels
    set(gca, 'yticklabel', {'All in One', ...
        'Outer Pair', ...
        'Middle Exchange', ...
        'Triple, Outer Heavy', ...
        'Triple, Inner Heavy'});
    set(gca, 'xticklabel', {'Top Heavy', ...
        'Top Weighted', ...
        'Top Leaning', ...
        'Mid but Top Weighted', ...
        'Mid Leaning Up', ...
        'Perfectly Centered', ...
        'Mid Leaning Down', ...
        'Mid but Bottom Weighted', ...
        'Bottom Leaning', ...
        'Bottom Weighted', ...
        'Bottom Heavy'});
    
    k4 = subplot(1, 2, 2);
    title(k4, "Red Ball Schemas");
    xaxR = [count_schema_r1; count_schema_r2; count_schema_r3];
    bar3(xaxR);
    set(gca, 'yticklabel', {'Top Range', 'Mid Range', 'Bottom Range'});

    sgtitle(fig2, 'Overall Schema Comparisons');

    % Save figure to file
    locale = dir;
    last = length(locale);
    aru = false;

    for que = 1:last
        finder = locale(que).name;
        if finder == "figure"
            aru = true;
        end
    end
    
    if aru == false
        mkdir figure;   
    end
    
    % Save Text as likely/middle/unlikely sets
    fig2.Visible = 'on';
    filename = "figure\Schema Performace Since " + string(startyear);
    if isfile(filename)
        delete(filename);
    end

    saveas(fig2, filename);
    fig2.Visible = 'off';
    drawnow;
    
end