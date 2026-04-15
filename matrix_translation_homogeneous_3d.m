function retval = matrix_translation_homogeneous_3d (coordinate_matrix, distance)
  translation_matrix = [1, 0, 0, distance(1)
                        0, 1, 0, distance(2)
                        0, 0, 1, distance(3)
                        0, 0, 0, 1          ];
  try
    retval = translation_matrix * coordinate_matrix;
  catch
   error ('Invalid matrix, expected 4x1 matrix')
  end_try_catch
endfunction
