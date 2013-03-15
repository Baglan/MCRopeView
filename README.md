# MCRopeView

Utility view to draw a "rope" (a Bezier path) between two points.

## Discussion

While intended for actual use, right now it is more of an experiment. You can see that MCRopeView has this method:

```objective-c
- (id)initWithPath:(UIBezierPath *)path lineColor:(UIColor *)lineColor outlineColor:(UIColor *)outlineColor;
```

As you can imagine, this methog allows one do draw arbitrarily complex lines. The rest of the initializers are "convenience" methods, calling this one internally. 

One interesting direction would be to make the Bezier path dynamic. Potentially, this can be used to draw connection between some elements on the screen.

## Installation

Add files from 'Classes' folder to your project.

## Usage

Don't forget to import the header.

```objective-c
#import "MCRopeView.h"
```

The most basic usage is to add a view that will draw the "rope":

```objective-c
MCRopeView * ropeView = [[MCRopeView alloc] initWithStartPoint:CGPointMake(20.0,20.0) endPoint:CGPointMake(300.0,200.0)];
[self.view addSubview:ropeView];
```

## License

Code in this project is available under the MIT license.