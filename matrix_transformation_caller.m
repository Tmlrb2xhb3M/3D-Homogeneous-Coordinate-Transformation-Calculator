function retval = matrix_transformation_caller (coordinate_matrix, vector, transformation)
  switch(transformation)
    case 'r'
      retval = matrix_rotation_homogeneous_3d(coordinate_matrix, vector);

    case 'sc'
      retval = matrix_scaling_homogeneous_3d(coordinate_matrix, vector);

    case 'sh'
      retval = matrix_shearing_homogeneous_3d(coordinate_matrix, vector);

    case 't'
      retval = matrix_translation_homogeneous_3d(coordinate_matrix, vector);

    otherwise
      error('Invalid operation, expected "r", "sc", "sh", "t"')
  endswitch
endfunction
