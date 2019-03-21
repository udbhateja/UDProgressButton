# ProgressButton
A UIButton subclass that shows loader(UIActivityIndicator) within the bounds to perform some async tasks.


Works with code and storyboard.

## Storyboard

Set the class of your button to ProgressButton.
- Change color of loader using the "*progressColor*" property. By default progress color is White.
- Change loader style using *style* property. Styles provided are: white, gray & whiteLarge.

## Programatically
Initialze object of ProgressButton just like UIButton.
```
eg. let button_Login = ProgressButton(frame: CGRect(x:50,y:50,width:200,height:40))
```

Loader Style & Color can be changed easily
```
button_Login.style = .gray
button_Login.color = .red
```

## Usage
Call loader as: 
```
button_Login.startAnimating()
button_Login.stopAnimating()
```



##
Thanks for using the widget! 🙏 
