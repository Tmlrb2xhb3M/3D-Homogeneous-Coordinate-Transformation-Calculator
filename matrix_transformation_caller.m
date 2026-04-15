function retval = matrix_transformation_caller (coordinate_matrix, vectors, transformations)
  counter = 1;
  temp = coordinate_matrix;
  for i = 1:length(transformations)
    switch(transformations(i))
      case 's'
        continue

      case 'r'
        temp = matrix_rotation_homogeneous_3d(temp, vectors(counter,:));
        counter = counter + 1;

      case 'c'
        temp = matrix_scaling_homogeneous_3d(temp, vectors(counter,:));
        counter = counter + 1;

      case 'h'
        temp = matrix_shearing_homogeneous_3d(temp, vectors(counter,:));
        counter = counter + 1;

      case 't'
        temp = matrix_translation_homogeneous_3d(temp, vectors(counter,:));
        counter = counter + 1;

      otherwise
        error('Invalid operation, expected "r", "sc", "sh", "t"')
        return
    endswitch
  endfor
  retval = temp;
endfunction
