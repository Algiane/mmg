/* =============================================================================
**  This file is part of the mmg software package for the tetrahedral
**  mesh modification.
**  Copyright (c) Inria - IMB (Université de Bordeaux) - LJLL (UPMC), 2004- .
**
**  mmg is free software: you can redistribute it and/or modify it
**  under the terms of the GNU Lesser General Public License as published
**  by the Free Software Foundation, either version 3 of the License, or
**  (at your option) any later version.
**
**  mmg is distributed in the hope that it will be useful, but WITHOUT
**  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
**  FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
**  License for more details.
**
**  You should have received a copy of the GNU Lesser General Public
**  License and of the GNU General Public License along with mmg (in
**  files COPYING.LESSER and COPYING). If not, see
**  <http://www.gnu.org/licenses/>. Please read their terms carefully and
**  use this copy of the mmg distribution only if you accept them.
** =============================================================================
*/

/**
 * \file mmgs/libmmgsf.c
 * \brief Fortran API functions for MMGS library.
 * \author Charles Dapogny (LJLL, UPMC)
 * \author Cécile Dobrzynski (Inria / IMB, Université de Bordeaux)
 * \author Pascal Frey (LJLL, UPMC)
 * \author Algiane Froehly (Inria / IMB, Université de Bordeaux)
 * \version 5
 * \date 01 2014
 * \copyright GNU Lesser General Public License.
 * \note Please, refer to the \ref mmgs/libmmgs.h file for functions
 * documentation.
 *
 * Define the private Fortran API functions for MMGS library
 * (incompatible functions with the main binary): adds function
 * definitions with upcase, underscore and double underscore to match
 * any fortran compiler.
 *
 */

#include "libmmgs.h"

/**
 * See \ref MMGS_saveMesh function in \ref mmgs/libmmgs.h file.
 */
FORTRAN_NAME(MMGS_SAVEMESH,mmgs_savemesh,(MMG5_pMesh *mesh, int* retval),
             (mesh,retval)){
  *retval = MMGS_saveMesh(*mesh);
  return;
}

/**
 * See \ref MMGS_mmgslib function in \ref mmgs/libmmgs.h file.
 */
FORTRAN_NAME(MMGS_MMGSLIB,mmgs_mmgslib,(MMG5_pMesh *mesh,MMG5_pSol *met,
                                        int* retval),
             (mesh,met,retval)){

  *retval = MMGS_mmgslib(*mesh,*met);

  return;
}
