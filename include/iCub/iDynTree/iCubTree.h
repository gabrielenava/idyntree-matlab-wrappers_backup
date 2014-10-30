/*
 * Copyright (C) 2013 RobotCub Consortium
 * Author: Silvio Traversaro
 * CopyPolicy: Released under the terms of the GNU GPL v2.0 (or any later version)
 *
 */

#ifndef ICUBTREE_H
#define ICUBTREE_H

#include <iCub/iDynTree/DynTree.h>

#include <iostream>

namespace iCub
{

namespace iDynTree
{
/**
 *  \ingroup iDynTree
 *
 * Class that instantiate a DynTree object configured for
 * Joint Torque estimation
 */
class TorqueEstimationTree : public DynTree
{
    public:

    /**
     * Constructor for TorqueEstimationTree
     *
     *
     * @param urdf_filename
     * @param verbose
     */
    TorqueEstimationTree(std::string urdf_filename,
                         std::vector<std::string> dof_serialization=std::vector<std::string>(0),
                         std::vector<std::string> ft_serialization=std::vector<std::string>(0),
                         std::string fixed_link="", unsigned int verbose=0);

    virtual ~TorqueEstimationTree();
};

}//end namespace

}

#endif
