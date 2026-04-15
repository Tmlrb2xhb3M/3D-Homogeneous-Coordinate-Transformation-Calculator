function retval = matrix_shearing_homogeneous_3d (coordinate_matrix, shear)
  x = 0;
  y = 0;
  shearing_matrix = [1, 0, 0, 0
                     0, 1, 0, 0
                     0, 0, 1, 0
                     0, 0, 0, 1];
  if(shear(1) == 0)
    x = 1;
    shear(1) = 1;
  elseif(shear(2) == 0)
    x = 2;
    shear(2) = 1;
  elseif(shear(3) == 0)
    x = 3;
    shear(3) = 1;
  else
    error('No axis set for shearing')
  endif
  shear = [shear, 0];
  shearing_matrix(:, x) = shear;
  try
    retval = shearing_matrix * coordinate_matrix';
  catch
    error ('Invalid matrix, expected 4x1 matrix')
  end_try_catch
endfunction
