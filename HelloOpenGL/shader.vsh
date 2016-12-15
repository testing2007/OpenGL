//每个顶点执行一次，目的确认像素位置
attribute vec4 vertexIn;  //attribute -- 外部传入vsh文件的变量
attribute vec2 textureIn;
varying vec2 textureOut;  //varying -- 用于vsh和fsh之间相互传递参数
void main(void)
{
    gl_Position = vertexIn;//原始顶点经过平移、旋转、缩放等数学变换后，生成新的顶点位置变量（vec4 四维）通过vsh写入gl_Position传递到渲染管线后继续处理。
    textureOut = textureIn;
}