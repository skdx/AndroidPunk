precision mediump float;

attribute vec2 Position;
attribute vec4 Color;
		    		
varying vec4 vColor;
		    
uniform mat4 uProjectionView;
uniform mat4 uModelView;

//Shared between vertex and fragment shader
uniform mediump int uHasColorAttribute;
		    
void main() {
	vColor = vec4(1.0);
	if (uHasColorAttribute != 0) {
		vColor = Color;
	}

	gl_Position = uProjectionView * uModelView * vec4(Position, 0.0, 1.0);
}