# Red Hat OpenStack Services on OpenShift Architecture Quick Course

This is the first course of the Red Hat OpenStack Administration learning journey. It assumes you're already skilled as an OpenStack Operator.

The course design docs are available to Red Hat employees only:

* [Initial course design](https://docs.google.com/document/d/1VHPTKWEnBc1McG6_dJR7645ozNQvnAt_AcVpb9JYvMs/edit#)
* [OpenStack 18 Learning Journey](https://docs.google.com/presentation/d/1Zlyj21ZOp0wtMPqdS3P9auhDndaQ6_qs014q_0yPbo4/edit#slide=id.g29c770ffa7c_0_414)

## Fixing Diagrams with Inkscape

Figures on this course were designed using Google Slides, and are also avialble  to Red Hat employees only. Individual slides are exported to SVG files and those files are in the git repository.

* Diagrams from all chapters are [here](https://docs.google.com/presentation/d/1FyaMiLGAP3sBdJNbwy1JExXbUYGcV83LZGJnKJQO34A/edit#).

Antora is not happy with SVG files produced by Google Slides, though those files display standalone in web browsers. The following processes makes Antora happy:

1. Export the google slide as SVG
2. Open the SVG on inkspace
3. File > Document Properties > Rezise page to drawing or selection
4. File > Clean up document
5. File > Save (overwriting the original SVG from google slides)

Google Slides exports the entire contents of a slide as a single group in SVG, and also include a bounding box of the slide size. If you just "fix" the slide as above you may end up with an SVG that has lots of white space. If this bothers you, you can ungroup the slide and delete the bounding box rectangle between steps 2 and 3 above.

## Calculating Per-Section Reading Time

Reading time estimation was done by running the reading-time.sh script on individual adoc files prior to commiting them, for example:

$ bash ./reading-time.sh modules/ch1-architecture/pages/s3-tasks-lecture.adoc

Refer to the [Red Hat Quick Courses Contributor Guide](https://redhatquickcourses.github.io/welcome/1/guide/overview.html) for instructions about collaborating in this repository.

TODO: Copy the simplifed contributor guide from the OpenShift AI courses to this readme and to the readmes from other RHOSO courses.
