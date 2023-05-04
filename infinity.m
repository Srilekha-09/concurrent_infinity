% Define parameters
t = linspace(0, 2*pi, 1000);
a = 1.2; % adjust this value to change the size of the lemniscates

% Define equation for first lemniscate
x1 = a*cos(t)./(1 + sin(t).^2).^0.5;
y1 = a*cos(t).*sin(t)./(1 + sin(t).^2).^0.5;

% Define equation for second lemniscate
delta = pi/4; % adjust this value to change the angle between the lemniscates
x2 = a*cos(t+delta)./(1 + sin(t+delta).^2).^0.5;
y2 = a*cos(t+delta).*sin(t+delta)./(1 + sin(t+delta).^2).^0.5;

% Find point of intersection
index = find(abs(x1 - x2) < 0.05 & abs(y1 - y2) < 0.05);
x_intersect = x1(index);
y_intersect = y1(index);

% Plot lemniscates
plot(x1, y1, 'LineWidth', 2);
hold on;
plot(x2, y2, 'LineWidth', 2);

% Plot intersection point
plot(x_intersect, y_intersect, 'ro', 'MarkerSize', 10);

% Add legend and axis labels
legend('Lemniscate 1', 'Lemniscate 2', 'Intersection Point');
xlabel('x');
ylabel('y');
axis equal;

% Print coordinates of intersection point
fprintf('Intersection point coordinates:\n');
fprintf('x \t y\n');
fprintf('%.2f\t%.2f\n', x_intersect, y_intersect);
