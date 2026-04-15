function retval = matrix_scaling_homogeneous_3d (coordinate_matrix, scale)
  scaling_matrix = [scale(1), 0,        0,        0
                    0,        scale(2), 0,        0
                    0,        0,        scale(3), 0
                    0,        0,        0,        1];
  try
    retval = scaling_matrix * coordinate_matrix';
  catch
    error ('Invalid matrix, expected 4x1 matrix')
  end_try_catch
endfunction
