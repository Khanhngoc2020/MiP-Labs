# Modeling and Prototyping Labs

Laboratory work for the Modeling and Prototyping course. The repository contains CAD models, slicer projects, printer profiles, reference drawings, and generated G-code.

## Laboratory Work

### Lab 1: 3D Printing and Slicing

Preparation of STL and 3MF models for FDM printing. The lab includes two sets of parts, slicer configuration profiles, and generated G-code for Ender and Wanhao printers.

Applications used:

- PrusaSlicer
- OrcaSlicer
- Ultimaker Cura

### Lab 2: Parametric Modeling in Blender

Creation of a solid of revolution, a simple part, and a more complex part in Blender. Precise sketches and geometric constraints are created with the CAD Sketcher extension.

Applications used:

- Blender
- CAD Sketcher

### Lab 3: Parametric CAD Modeling

Construction of a mechanical part and a gear from reference drawings. The completed models are stored in the FreeCAD FCStd format.

Application used:

- FreeCAD

### Lab 4: Script-Based and Visual Modeling

Creation of 3D models from a selected variant using both script-based geometry and Blender modeling. The lab contains OpenSCAD source files and Blender project files.

Applications used:

- OpenSCAD
- Blender

### Lab 6: Preparing a Model for Printing

Preparation and slicing of an STL model for an Ultimaker S5 printer. The generated G-code was produced with Cura 5.6.0.

Application used:

- Ultimaker Cura

## Repository Structure

```text
Lab-1/  3D printing models, slicer profiles, and G-code
Lab-2/  Blender models and CAD Sketcher resources
Lab-3/  FreeCAD part and gear models
Lab-4/  OpenSCAD scripts and Blender models
Lab-6/  Ultimaker S5 model, references, and G-code
```

## File Formats

- `.stl`, `.3mf`: printable 3D models and slicer projects
- `.gcode`: printer-ready toolpaths
- `.blend`: Blender projects
- `.FCStd`: FreeCAD projects
- `.scad`: OpenSCAD source files
- `.png`, `.jpg`, `.gif`, `.pdf`: drawings, variants, and reference materials

The local Ultimaker Cura installer is intentionally excluded from Git because it exceeds GitHub's file-size limit.
