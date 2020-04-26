class FlutterMap {
  Widget widget;

  FlutterMap({this.widget});

  FlutterMap.fromJson(Map<String, dynamic> json) {
    widget =
        json['widget'] != null ? new Widget.fromJson(json['widget']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.widget != null) {
      data['widget'] = this.widget.toJson();
    }
    return data;
  }
}

class Widget {
  String debug;
  Window window;
  Image image;
  Text text;

  Widget({this.debug, this.window, this.image, this.text});

  Widget.fromJson(Map<String, dynamic> json) {
    debug = json['debug'];
    window =
        json['window'] != null ? new Window.fromJson(json['window']) : null;
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    text = json['text'] != null ? new Text.fromJson(json['text']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['debug'] = this.debug;
    if (this.window != null) {
      data['window'] = this.window.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    if (this.text != null) {
      data['text'] = this.text.toJson();
    }
    return data;
  }
}

class Window {
  String title;
  String name;
  int width;
  int height;

  Window({this.title, this.name, this.width, this.height});

  Window.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    name = json['name'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['name'] = this.name;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class Image {
  String src;
  String name;
  int hOffset;
  int vOffset;
  String alignment;

  Image({this.src, this.name, this.hOffset, this.vOffset, this.alignment});

  Image.fromJson(Map<String, dynamic> json) {
    src = json['src'];
    name = json['name'];
    hOffset = json['hOffset'];
    vOffset = json['vOffset'];
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['src'] = this.src;
    data['name'] = this.name;
    data['hOffset'] = this.hOffset;
    data['vOffset'] = this.vOffset;
    data['alignment'] = this.alignment;
    return data;
  }
}

class Text {
  String data;
  int size;
  String style;
  String name;
  int hOffset;
  int vOffset;
  String alignment;
  String onMouseUp;

  Text(
      {this.data,
      this.size,
      this.style,
      this.name,
      this.hOffset,
      this.vOffset,
      this.alignment,
      this.onMouseUp});

  Text.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    size = json['size'];
    style = json['style'];
    name = json['name'];
    hOffset = json['hOffset'];
    vOffset = json['vOffset'];
    alignment = json['alignment'];
    onMouseUp = json['onMouseUp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['size'] = this.size;
    data['style'] = this.style;
    data['name'] = this.name;
    data['hOffset'] = this.hOffset;
    data['vOffset'] = this.vOffset;
    data['alignment'] = this.alignment;
    data['onMouseUp'] = this.onMouseUp;
    return data;
  }
}
