%% Applies the schema and returns the results
function [ball_set1, ball_set2, ball_setR] = schema(bestw, bestr, schem1, schem2, schemR)

    % Create categories for white ball selection based on likelihood:
    likelyw = bestw(1:(floor(end/3)));
    middlew = bestw((floor(end/3) + 1): (floor(2*end/3)));
    unlikelyw = bestw((floor(2*end/3) + 1):end);

    % Apply the First Schema
    switch schem1
        case 500
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(likelyw)) * rand(1));
            r4 = floor((length(likelyw)) * rand(1));
            r5 = floor((length(likelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = likelyw(r3);
            b4 = likelyw(r4);
            b5 = likelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(likelyw)) * rand(1));
                r4 = floor((length(likelyw)) * rand(1));
                r5 = floor((length(likelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = likelyw(r3);
                b4 = likelyw(r4);
                b5 = likelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 050
            r1 = floor((length(middlew)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = middlew(r1);
            b2 = middlew(r2);
            b3 = middlew(r3);
            b4 = middlew(r4);
            b5 = middlew(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(middlew)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = middlew(r1);
                b2 = middlew(r2);
                b3 = middlew(r3);
                b4 = middlew(r4);
                b5 = middlew(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 005
            r1 = floor((length(unlikelyw)) * rand(1));
            r2 = floor((length(unlikelyw)) * rand(1));
            r3 = floor((length(unlikelyw)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = unlikelyw(r1);
            b2 = unlikelyw(r2);
            b3 = unlikelyw(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(unlikelyw)) * rand(1));
                r2 = floor((length(unlikelyw)) * rand(1));
                r3 = floor((length(unlikelyw)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = unlikelyw(r1);
                b2 = unlikelyw(r2);
                b3 = unlikelyw(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 401
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(likelyw)) * rand(1));
            r4 = floor((length(likelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = likelyw(r3);
            b4 = likelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(likelyw)) * rand(1));
                r4 = floor((length(likelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = likelyw(r3);
                b4 = likelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 410
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(likelyw)) * rand(1));
            r4 = floor((length(likelyw)) * rand(1));
            r5 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = likelyw(r3);
            b4 = likelyw(r4);
            b5 = middlew(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(likelyw)) * rand(1));
                r4 = floor((length(likelyw)) * rand(1));
                r5 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = likelyw(r3);
                b4 = likelyw(r4);
                b5 = middlew(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 140
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = middlew(r2);
            b3 = middlew(r3);
            b4 = middlew(r4);
            b5 = middlew(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = middlew(r2);
                b3 = middlew(r3);
                b4 = middlew(r4);
                b5 = middlew(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 041
            r1 = floor((length(middlew)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = middlew(r1);
            b2 = middlew(r2);
            b3 = middlew(r3);
            b4 = middlew(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(middlew)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = middlew(r1);
                b2 = middlew(r2);
                b3 = middlew(r3);
                b4 = middlew(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 104
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(unlikelyw)) * rand(1));
            r3 = floor((length(unlikelyw)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = unlikelyw(r2);
            b3 = unlikelyw(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(unlikelyw)) * rand(1));
                r3 = floor((length(unlikelyw)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = unlikelyw(r2);
                b3 = unlikelyw(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 014
            r1 = floor((length(middlew)) * rand(1));
            r2 = floor((length(unlikelyw)) * rand(1));
            r3 = floor((length(unlikelyw)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = middlew(r1);
            b2 = unlikelyw(r2);
            b3 = unlikelyw(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(middlew)) * rand(1));
                r2 = floor((length(unlikelyw)) * rand(1));
                r3 = floor((length(unlikelyw)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = middlew(r1);
                b2 = unlikelyw(r2);
                b3 = unlikelyw(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 302
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(likelyw)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = likelyw(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(likelyw)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = likelyw(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 320
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(likelyw)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = likelyw(r3);
            b4 = middlew(r4);
            b5 = middlew(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(likelyw)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = likelyw(r3);
                b4 = middlew(r4);
                b5 = middlew(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 203
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(unlikelyw)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = unlikelyw(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(unlikelyw)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = unlikelyw(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 230
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = middlew(r3);
            b4 = middlew(r4);
            b5 = middlew(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = middlew(r3);
                b4 = middlew(r4);
                b5 = middlew(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 032
            r1 = floor((length(middlew)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = middlew(r1);
            b2 = middlew(r2);
            b3 = middlew(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(middlew)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = middlew(r1);
                b2 = middlew(r2);
                b3 = middlew(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 023
            r1 = floor((length(middlew)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(unlikelyw)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = middlew(r1);
            b2 = middlew(r2);
            b3 = unlikelyw(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(middlew)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(unlikelyw)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = middlew(r1);
                b2 = middlew(r2);
                b3 = unlikelyw(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 311
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(likelyw)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = likelyw(r3);
            b4 = middlew(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(likelyw)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = likelyw(r3);
                b4 = middlew(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 131
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = middlew(r2);
            b3 = middlew(r3);
            b4 = middlew(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = middlew(r2);
                b3 = middlew(r3);
                b4 = middlew(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 113
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(unlikelyw)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = middlew(r2);
            b3 = unlikelyw(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(unlikelyw)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = middlew(r2);
                b3 = unlikelyw(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 221
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(middlew)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = middlew(r3);
            b4 = middlew(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(middlew)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = middlew(r3);
                b4 = middlew(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 122
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(middlew)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = middlew(r2);
            b3 = middlew(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(middlew)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = middlew(r2);
                b3 = middlew(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

        case 212
            r1 = floor((length(likelyw)) * rand(1));
            r2 = floor((length(likelyw)) * rand(1));
            r3 = floor((length(middlew)) * rand(1));
            r4 = floor((length(unlikelyw)) * rand(1));
            r5 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r1 == 0
                r1 = 1;
            end
            if r2 == 0
                r2 = 1;
            end
            if r3 == 0
                r3 = 1;
            end
            if r4 == 0
                r4 = 1;
            end
            if r5 == 0
                r5 = 1;
            end
        
            b1 = likelyw(r1);
            b2 = likelyw(r2);
            b3 = middlew(r3);
            b4 = unlikelyw(r4);
            b5 = unlikelyw(r5);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                equal = true;
            end
        
            while equal
                r1 = floor((length(likelyw)) * rand(1));
                r2 = floor((length(likelyw)) * rand(1));
                r3 = floor((length(middlew)) * rand(1));
                r4 = floor((length(unlikelyw)) * rand(1));
                r5 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r1 == 0
                    r1 = 1;
                end
                if r2 == 0
                    r2 = 1;
                end
                if r3 == 0
                    r3 = 1;
                end
                if r4 == 0
                    r4 = 1;
                end
                if r5 == 0
                    r5 = 1;
                end
        
                b1 = likelyw(r1);
                b2 = likelyw(r2);
                b3 = middlew(r3);
                b4 = unlikelyw(r4);
                b5 = unlikelyw(r5);
                
                if (r1 == r2) || (r1 == r3) || (r1 == r4) || (r1 == r5) || (r2 == r3) || (r2 == r4) || (r2 == r5) || (r3 == r4) || (r3 == r5) || (r4 == r5)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set1 = [b1, b2, b3, b4, b5];

    end
    
    %% splot
    % Apply the Second Schema
    switch schem2
        case 500
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(likelyw)) * rand(1));
            r24 = floor((length(likelyw)) * rand(1));
            r25 = floor((length(likelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = likelyw(r23);
            b24 = likelyw(r24);
            b25 = likelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(likelyw)) * rand(1));
                r24 = floor((length(likelyw)) * rand(1));
                r25 = floor((length(likelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = likelyw(r23);
                b24 = likelyw(r24);
                b25 = likelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 050
            r21 = floor((length(middlew)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = middlew(r21);
            b22 = middlew(r22);
            b23 = middlew(r23);
            b24 = middlew(r24);
            b25 = middlew(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(middlew)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = middlew(r21);
                b22 = middlew(r22);
                b23 = middlew(r23);
                b24 = middlew(r24);
                b25 = middlew(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 005
            r21 = floor((length(unlikelyw)) * rand(1));
            r22 = floor((length(unlikelyw)) * rand(1));
            r23 = floor((length(unlikelyw)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = unlikelyw(r21);
            b22 = unlikelyw(r22);
            b23 = unlikelyw(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(unlikelyw)) * rand(1));
                r22 = floor((length(unlikelyw)) * rand(1));
                r23 = floor((length(unlikelyw)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = unlikelyw(r21);
                b22 = unlikelyw(r22);
                b23 = unlikelyw(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 401
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(likelyw)) * rand(1));
            r24 = floor((length(likelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = likelyw(r23);
            b24 = likelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(likelyw)) * rand(1));
                r24 = floor((length(likelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = likelyw(r23);
                b24 = likelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 410
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(likelyw)) * rand(1));
            r24 = floor((length(likelyw)) * rand(1));
            r25 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = likelyw(r23);
            b24 = likelyw(r24);
            b25 = middlew(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r2) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(likelyw)) * rand(1));
                r24 = floor((length(likelyw)) * rand(1));
                r25 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = likelyw(r23);
                b24 = likelyw(r24);
                b25 = middlew(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 140
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = middlew(r22);
            b23 = middlew(r23);
            b24 = middlew(r24);
            b25 = middlew(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = middlew(r22);
                b23 = middlew(r23);
                b24 = middlew(r24);
                b25 = middlew(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 041
            r21 = floor((length(middlew)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = middlew(r21);
            b22 = middlew(r22);
            b23 = middlew(r23);
            b24 = middlew(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(middlew)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = middlew(r21);
                b22 = middlew(r22);
                b23 = middlew(r23);
                b24 = middlew(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 104
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(unlikelyw)) * rand(1));
            r23 = floor((length(unlikelyw)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = unlikelyw(r22);
            b23 = unlikelyw(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(unlikelyw)) * rand(1));
                r23 = floor((length(unlikelyw)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = unlikelyw(r22);
                b23 = unlikelyw(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 014
            r21 = floor((length(middlew)) * rand(1));
            r22 = floor((length(unlikelyw)) * rand(1));
            r23 = floor((length(unlikelyw)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = middlew(r21);
            b22 = unlikelyw(r22);
            b23 = unlikelyw(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(middlew)) * rand(1));
                r22 = floor((length(unlikelyw)) * rand(1));
                r23 = floor((length(unlikelyw)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = middlew(r21);
                b22 = unlikelyw(r22);
                b23 = unlikelyw(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 302
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(likelyw)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = likelyw(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(likelyw)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = likelyw(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 320
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(likelyw)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = likelyw(r23);
            b24 = middlew(r24);
            b25 = middlew(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(likelyw)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = likelyw(r23);
                b24 = middlew(r24);
                b25 = middlew(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 203
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(unlikelyw)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = unlikelyw(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(unlikelyw)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = unlikelyw(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 230
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(middlew)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = middlew(r23);
            b24 = middlew(r24);
            b25 = middlew(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(middlew)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = middlew(r23);
                b24 = middlew(r24);
                b25 = middlew(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 032
            r21 = floor((length(middlew)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = middlew(r21);
            b22 = middlew(r22);
            b23 = middlew(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(middlew)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = middlew(r21);
                b22 = middlew(r22);
                b23 = middlew(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 023
            r21 = floor((length(middlew)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(unlikelyw)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = middlew(r21);
            b22 = middlew(r22);
            b23 = unlikelyw(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(middlew)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(unlikelyw)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = middlew(r21);
                b22 = middlew(r22);
                b23 = unlikelyw(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 311
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(likelyw)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = likelyw(r23);
            b24 = middlew(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(likelyw)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = likelyw(r23);
                b24 = middlew(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 131
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = middlew(r22);
            b23 = middlew(r23);
            b24 = middlew(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = middlew(r22);
                b23 = middlew(r23);
                b24 = middlew(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 113
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(unlikelyw)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = middlew(r22);
            b23 = unlikelyw(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(unlikelyw)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = middlew(r22);
                b23 = unlikelyw(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 221
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(middlew)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = middlew(r23);
            b24 = middlew(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(middlew)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = middlew(r23);
                b24 = middlew(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 122
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(middlew)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = middlew(r22);
            b23 = middlew(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(middlew)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = middlew(r22);
                b23 = middlew(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

        case 212
            r21 = floor((length(likelyw)) * rand(1));
            r22 = floor((length(likelyw)) * rand(1));
            r23 = floor((length(middlew)) * rand(1));
            r24 = floor((length(unlikelyw)) * rand(1));
            r25 = floor((length(unlikelyw)) * rand(1));
        
            % Sufficiently small rands end up as index 0:
            if r21 == 0
                r21 = 1;
            end
            if r22 == 0
                r22 = 1;
            end
            if r23 == 0
                r23 = 1;
            end
            if r24 == 0
                r24 = 1;
            end
            if r25 == 0
                r25 = 1;
            end
        
            b21 = likelyw(r21);
            b22 = likelyw(r22);
            b23 = middlew(r23);
            b24 = unlikelyw(r24);
            b25 = unlikelyw(r25);

            % Stopgap for equivalence of two white balls if that issue arises:
            equal = false;
            if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                equal = true;
            end
        
            while equal
                r21 = floor((length(likelyw)) * rand(1));
                r22 = floor((length(likelyw)) * rand(1));
                r23 = floor((length(middlew)) * rand(1));
                r24 = floor((length(unlikelyw)) * rand(1));
                r25 = floor((length(unlikelyw)) * rand(1));
        
                % Sufficiently small rands end up as index 0:
                if r21 == 0
                    r21 = 1;
                end
                if r22 == 0
                    r22 = 1;
                end
                if r23 == 0
                    r23 = 1;
                end
                if r24 == 0
                    r24 = 1;
                end
                if r25 == 0
                    r25 = 1;
                end
        
                b21 = likelyw(r21);
                b22 = likelyw(r22);
                b23 = middlew(r23);
                b24 = unlikelyw(r24);
                b25 = unlikelyw(r25);
                
                if (r21 == r22) || (r21 == r23) || (r21 == r24) || (r21 == r25) || (r22 == r23) || (r22 == r24) || (r22 == r25) || (r23 == r24) || (r23 == r25) || (r24 == r25)
                    equal = true;
                else
                    equal = false;
                end
            end

            ball_set2 = [b21, b22, b23, b24, b25];

    end


    % Do the same for red balls:
    likelyr = bestr(1:floor(end/3));
    middler = bestr((floor(end/3) + 1): floor(2*end/3));
    unlikelyr = bestr((floor(2*end/3) + 1):end);

    br1 = 0;
    br2 = 0;
    equal = false;

    % Apply the Red Schema Once
    switch schemR
        case 1
            rr1 = floor((length(likelyr)) * rand(1));
            
            if rr1 == 0
                rr1 = 1;
            end

            br1 = likelyr(rr1);

        case 2
            rr1 = floor((length(middler)) * rand(1));
            
            if rr1 == 0
                rr1 = 1;
            end

            br1 = middler(rr1);
            
        case 3
            rr1 = floor((length(unlikelyr)) * rand(1));
            
            if rr1 == 0
                rr1 = 1;
            end

            br1 = unlikelyr(rr1);
    
    end

    % Apply the Red Schema Again
    switch schemR
        case 1
            rr1 = floor((length(likelyr)) * rand(1));
            
            if rr1 == 0
                rr1 = 1;
            end

            br2 = likelyr(rr1);

        case 2
            rr1 = floor((length(middler)) * rand(1));
            
            if rr1 == 0
                rr1 = 1;
            end

            br2 = middler(rr1);
            
        case 3
            rr1 = floor((length(unlikelyr)) * rand(1));
            
            if rr1 == 0
                rr1 = 1;
            end

            br2 = unlikelyr(rr1);
    
    end
    
    if br1 == br2
        equal = true;
    else
        equal = false;
    end
        
    while equal
        
        % Apply the Red Schema Once
        switch schemR
            case 1
                rr1 = floor((length(likelyr)) * rand(1));
                
                if rr1 == 0
                    rr1 = 1;
                end
    
                br1 = likelyr(rr1);
    
            case 2
                rr1 = floor((length(middler)) * rand(1));
                
                if rr1 == 0
                    rr1 = 1;
                end
    
                br1 = middler(rr1);
                
            case 3
                rr1 = floor((length(unlikelyr)) * rand(1));
                
                if rr1 == 0
                    rr1 = 1;
                end
    
                br1 = unlikelyr(rr1);
        
        end
    
        % Apply the Red Schema Again
        switch schemR
            case 1
                rr1 = floor((length(likelyr)) * rand(1));
                
                if rr1 == 0
                    rr1 = 1;
                end
    
                br2 = likelyr(rr1);
    
            case 2
                rr1 = floor((length(middler)) * rand(1));
                
                if rr1 == 0
                    rr1 = 1;
                end
    
                br2 = middler(rr1);
                
            case 3
                rr1 = floor((length(unlikelyr)) * rand(1));
                
                if rr1 == 0
                    rr1 = 1;
                end
    
                br2 = unlikelyr(rr1);
        
        end
        
        if br1 == br2
            equal = true;
        else
            equal = false;
        end
    end

    ball_setR = [br1, br2];
end