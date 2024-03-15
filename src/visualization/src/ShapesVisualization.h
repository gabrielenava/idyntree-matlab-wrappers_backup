// SPDX-FileCopyrightText: Fondazione Istituto Italiano di Tecnologia (IIT)
// SPDX-License-Identifier: BSD-3-Clause
#ifndef IDYNTREE_SHAPESVISUALIZATION_H
#define IDYNTREE_SHAPESVISUALIZATION_H

#include <iDynTree/Visualizer.h>
#include "ModelVisualization.h"
#include "Label.h"
#include <irrlicht.h>

#include <vector>
#include <memory>

namespace iDynTree {

    class ShapeVisualization : public IShapeVisualization
    {

        class Shape
        {
            public:
            std::unique_ptr<SolidShape> shape;
            irr::scene::ISceneNode* node{ nullptr };
            Label label;

            Shape() = delete;
            Shape(const SolidShape& input_shape, irr::scene::ISceneNode* parent, irr::scene::ISceneManager* sceneManager);
            Shape(const Shape& other) = delete;
            Shape& operator=(const Shape& other) = delete;
            Shape(Shape&& other);
            Shape& operator=(Shape&& other);
            ~Shape();


        };
        irr::scene::ISceneManager* m_smgr{0};
        std::shared_ptr<std::vector<ModelVisualization*>> m_models;
        std::vector<Shape> m_shapes;

    public:
        ShapeVisualization() = default;

        ShapeVisualization(const ShapeVisualization&) = delete;
        ShapeVisualization& operator=(const ShapeVisualization&) = delete;
        ShapeVisualization(ShapeVisualization&&) = delete;
        ShapeVisualization& operator=(ShapeVisualization&&) = delete;

        void init(irr::scene::ISceneManager* smgr, std::shared_ptr<std::vector<ModelVisualization*>> models);

        void close();


        /**
        * Destructor
        */
        ~ShapeVisualization();

        /**
        * Add a shape in the visualization
        * Returns the shape index.
        */
        virtual size_t addShape(const iDynTree::SolidShape& shape,
                                const std::string& modelName = "",
                                const std::string& frameName = "") final;
        /**
        * Set the specified shape visible or not.
        * Returns true in case of success, false otherwise (for example if the shape does not exists).
        */
        virtual bool setVisible(size_t shapeIndex, bool isVisible) final;

        /**
        * Get the number of visualized shapes.
        *
        */
        virtual size_t getNrOfShapes() const final;

        /**
        * Get shape transform with respect the parent frame (world if the shape is attached to the world).
        */
        virtual bool getShapeTransform(size_t shapeIndex, Transform& currentTransform) const final;

        /**
        * Set shape transform with respect the parent frame (world if the shape is attached to the world).
        */
        virtual bool setShapeTransform(size_t shapeIndex, const Transform& transformation) final;

        /**
        * Set the color of the shape.
        * Returns true in case of success, false otherwise (for example if the shape does not exists).
        */
        virtual bool setShapeColor(size_t shapeIndex, const ColorViz& shapeColor) final;

        /**
        * Change the shape.
        * The previous shape is removed.
        * Returns true in case of success, false otherwise (for example if the shape index is out of bounds).
        */
        virtual bool changeShape(size_t shapeIndex, const iDynTree::SolidShape& newShape) final;

        /**
        * Get the label of a shape.
        *
        * Returns nullptr of the shape index is out of bounds.
        */
        virtual ILabel* getShapeLabel(size_t shapeIndex) final;
    };
}

#endif // IDYNTREE_SHAPESVISUALIZATION_H
