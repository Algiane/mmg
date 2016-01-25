## =============================================================================
##  This file is part of the mmg software package for the tetrahedral
##  mesh modification.
##  Copyright (c) Inria - IMB (Université de Bordeaux) - LJLL (UPMC), 2004- .
##
##  mmg is free software: you can redistribute it and/or modify it
##  under the terms of the GNU Lesser General Public License as published
##  by the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.
##
##  mmg is distributed in the hope that it will be useful, but WITHOUT
##  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
##  FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
##  License for more details.
##
##  You should have received a copy of the GNU Lesser General Public
##  License and of the GNU General Public License along with mmg (in
##  files COPYING.LESSER and COPYING). If not, see
##  <http://www.gnu.org/licenses/>. Please read their terms carefully and
##  use this copy of the mmg distribution only if you accept them.
## =============================================================================

###############################################################################
#####
#####         Continuous Integration
#####
###############################################################################

# Simple test: must already pass
ADD_TEST(NAME Circle
  COMMAND ${EXECUT_MMG2D}
  ${MMG2D_CI_TESTS}/Circle/cercle
  -out ${MMG2D_CI_TESTS}/Circle/cercle.o.meshb)

###############################################################################
#####
#####         Isotropic cases
#####
###############################################################################
ADD_TEST(NAME SquareIso
  COMMAND ${EXECUT_MMG2D}
  ${MMG2D_CI_TESTS}/SquareIso/carretest
  -out ${MMG2D_CI_TESTS}/SquareIso/carretest.o.meshb)

####### -nosurf option
ADD_TEST(NAME 2squares
  COMMAND ${EXECUT_MMG2D} -msh 2 -hmax 1 -nosurf
  ${MMG2D_CI_TESTS}/2squares/2squares
  -out ${MMG2D_CI_TESTS}/2squares/2squares.o.meshb)


###############################################################################
#####
#####         Anisotropic cases
#####
###############################################################################
ADD_TEST(NAME SquareAniso
  COMMAND ${EXECUT_MMG2D}
  ${MMG2D_CI_TESTS}/SquareAniso/adap1
  -out ${MMG2D_CI_TESTS}/SquareAniso/adap1.o.meshb)

###############################################################################
#####
#####         Mesh generation
#####
###############################################################################
ADD_TEST(NAME SquareGeneration
  COMMAND ${EXECUT_MMG2D}
  ${MMG2D_CI_TESTS}/SquareGeneration/carretest
  -out ${MMG2D_CI_TESTS}/SquareGeneration/carretest.o.meshb)

###############################################################################
#####
#####         Implicit domain discretization
#####
###############################################################################
ADD_TEST(NAME LSDiscretization
  COMMAND ${EXECUT_MMG2D} -ls
  ${MMG2D_CI_TESTS}/LSDiscretization/dom
  -out ${MMG2D_CI_TESTS}/LSDiscretization/dom.o.meshb)

ADD_TEST(NAME LSDiscretization2
  COMMAND ${EXECUT_MMG2D} -ls
  ${MMG2D_CI_TESTS}/LSDiscretization/nacai
  -out ${MMG2D_CI_TESTS}/LSDiscretization/nacai.o.meshb)
