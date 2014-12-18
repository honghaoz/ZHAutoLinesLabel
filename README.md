# ZHAutoLinesLabel

ZHAutoLinesLabel is a subclass of UILabel, support contentInset and automatic multiple lines

![](https://raw.githubusercontent.com/honghaoz/ZHAutoLinesLabel/master/Pic/Pre1.png)

# Why I create this label

### For automatic preferredMaxLayoutWidth
I love Autolayout, for label, I offen do this:
```
  self.setContentCompressionResistancePriority(1000, forAxis: .Horizontal)
  self.setContentCompressionResistancePriority(1000, forAxis: .Vertical)
  self.setContentHuggingPriority(1000, forAxis: .Horizontal)
  self.setContentHuggingPriority(1000, forAxis: .Vertical)
```

If we set `numberOfLines = 0`, label will automatically resize it approtiately.

I love Interface Builder, I offen set these four priorities in IB like this

![](https://raw.githubusercontent.com/honghaoz/ZHAutoLinesLabel/master/Pic/1.png)

However, there's a property `preferredMaxLayoutWidth`, in IB, it's

![](https://raw.githubusercontent.com/honghaoz/ZHAutoLinesLabel/master/Pic/2.png)

This can be automatic only for iOS8, which means the value will be equal to view's width. 

If our project supports for iOS7 or iOS6, we will have a warning: 
```
Main.storyboard: warning: Attribute Unavailable: Automatic Preferred Max Layout Width is not available on iOS versions prior to 8.0
```
we have to give it an explicit value in IB to get rid of it. If we want it's automatic, we have to link this label, then update `preferredMaxLayoutWidth` in code. This is trivial.

To let iOS7 have same behavior like iOS8 and get rid of this kind of warning, I created this label.

What you need to do is always set `preferredMaxLayoutWidth` explicitly and it will work automatically.

![](https://raw.githubusercontent.com/honghaoz/ZHAutoLinesLabel/master/Pic/3.png)

(Better to choose same width value as label, this will give you correct layout in IB)

### For contentInset just like UITextView

Sometimes, we want label to have a background and margin around it. One way is to creat a container view and add a lable on that, this is bad in IB or code.

ZHAutoLinesLabel has a new property `contentInset: UIEdgeInsets`, same with UITextView, also, it works with Autolayout.

# The MIT License (MIT)
The MIT License (MIT)
Copyright (c) 2014 Honghao Zhang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
