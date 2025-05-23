function test_bug1833

% MEM 1gb
% WALLTIME 00:10:00
% DEPENDENCY ft_plot_mesh ft_read_headshape
% DATA private

% at this moment (20 November 2012) this test script is known not to work
% and the bugzilla report is still open
return

% this test script borrows some data from another bug
cd(dccnpath('/project/3031000.02/test/bug1820'));

mesh = ft_read_headshape('tet_4layer_127_127_127.1.node');
mesh.tet = mesh.tet(1:10000,:); % prune the number of elements
ft_plot_mesh(mesh, 'vertexcolor', 'none', 'edgecolor', 'none');

mesh = ft_read_headshape('cube2mm3layervorwerk_ns_127_127_127.v');
mesh.hex = mesh.hex(1:1000,:); % prune the number of elements
ft_plot_mesh(mesh, 'vertexcolor', 'none', 'edgecolor', 'none');

