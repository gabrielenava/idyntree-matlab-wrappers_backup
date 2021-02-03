/*
 * Copyright (C) 2016 Fondazione Istituto Italiano di Tecnologia
 *
 * Licensed under either the GNU Lesser General Public License v3.0 :
 * https://www.gnu.org/licenses/lgpl-3.0.html
 * or the GNU Lesser General Public License v2.1 :
 * https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html
 * at your option.
 */

#include "FloorGridSceneNode.h"
#include "IrrlichtUtils.h"

namespace iDynTree
{

CFloorGridSceneNode::CFloorGridSceneNode(irr::scene::ISceneNode* parent, irr::scene::ISceneManager* mgr, irr::s32 id):
                                         irr::scene::ISceneNode(parent, mgr, id)
{
    m_size = 10;
    m_box = irr::core::aabbox3d<irr::f32>(-m_size,-m_size,-1,m_size,m_size,1);
    m_gridColor = irr::video::SColor(100,0,0,255);
}

void CFloorGridSceneNode::OnRegisterSceneNode()
{
    if (IsVisible)
        SceneManager->registerNodeForRendering(this);

    ISceneNode::OnRegisterSceneNode();
}

void CFloorGridSceneNode::render()
{
    irr::video::IVideoDriver* driver = SceneManager->getVideoDriver();

    driver->setTransform(irr::video::ETS_WORLD, AbsoluteTransformation);

    for(int i=-m_size; i <= m_size; i++ )
    {
        irr::video::SMaterial material;
        material.Lighting = false; //When set to true it does not seem to use the correct color.
        material.Thickness = 1.0;
        driver->setMaterial(material);

        driver->draw3DLine(irr::core::vector3df(-m_size,i,0),
                           irr::core::vector3df(m_size,i,0),
                           m_gridColor);
        driver->draw3DLine(irr::core::vector3df(i,-m_size,0),
                           irr::core::vector3df(i,m_size,0),
                           m_gridColor);
    }
}

const irr::core::aabbox3d<irr::f32>& CFloorGridSceneNode::getBoundingBox() const
{
    return m_box;
}

irr::u32 CFloorGridSceneNode::getMaterialCount() const
{
    return 0;
}

irr::video::SMaterial& CFloorGridSceneNode::getMaterial(irr::u32)
{
    return m_dummyMaterial;
}

void CFloorGridSceneNode::setGridColor(const irr::video::SColor &gridColor)
{
    m_gridColor = gridColor;
}

}
