function retval = matrix_rotation_homogeneous_3d(coordinate_matrix, degrees)
    rotation_matrix = [1, 0,                0,                 0
                       0, cosd(degrees(1)), -sind(degrees(1)), 0
                       0, sind(degrees(1)), cosd(degrees(1)),  0
                       0, 0,                0,                 1];

    rotation_matrix = rotation_matrix * [cosd(degrees(2)),  0, sind(degrees(2)), 0
                                         0,                 1, 0,                0
                                         -sind(degrees(2)), 0, cosd(degrees(2)), 0
                                         0,                 0, 0,                1];

    rotation_matrix = rotation_matrix * [cosd(degrees(3)), -sind(degrees(3)), 0, 0
                                         sind(degrees(3)), cosd(degrees(3)),  0, 0
                                         0,                0,                 1, 0
                                         0,                0,                 0, 1];
  try
    retval = rotation_matrix * coordinate_matrix';
  catch
    error ('Invalid matrix, expected 4x1 matrix')
  end_try_catch
endfunction
