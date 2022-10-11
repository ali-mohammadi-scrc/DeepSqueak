root_dir = 'F:\ScRc\Desktop\New folder';
Files = dir([root_dir, '\**\*.mat']);

for i = 1:length(Files)
    folder = Files(i).folder;
    name = Files(i).name;
    load([folder, '\', name]);
    intervals = Calls.Box(:, [1, 3]);
    intervals(:, 2) = intervals(:, 1) + intervals(:, 2);
    name = split(name);
    name = name{1};
    save_path = [folder, '\deepsqueak', name(4:end), '.csv'];
    writematrix(intervals, save_path)
end