PandaTube
=========

PandaTube is an OpenSource project to allow the easy embedding of YouTube videos into your iOS applications.

How Do I Use It
===============

It is very simple to use, first initialise the class:

    PandaTube pandaTube = [[PandaTube alloc] init];
    
Then simple tell PandaTube which video you want to play:

    [pandaTube playVideo:@"http://www.youtube.com/watch?v=Ua5qh40x4KA"];
    
And hey presto! A YouTube player will popup and start playing. Once the user clicks done, your app returns!