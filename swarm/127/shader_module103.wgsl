struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1570f, -821f), vec2<f32>(963f, 198f), vec2<f32>(-1407f, 836f), vec2<f32>(-465f, -881f), vec2<f32>(-710f, -1702f), vec2<f32>(-1000f, -1047f), vec2<f32>(446f, -483f), vec2<f32>(-1304f, -540f), vec2<f32>(-1000f, -697f), vec2<f32>(-1879f, -381f), vec2<f32>(-635f, 1000f), vec2<f32>(231f, 1843f), vec2<f32>(-1000f, -401f), vec2<f32>(1057f, -617f), vec2<f32>(-407f, 1090f), vec2<f32>(-763f, 743f), vec2<f32>(818f, -1102f), vec2<f32>(-490f, -837f), vec2<f32>(192f, 2008f), vec2<f32>(589f, 148f), vec2<f32>(-1000f, -286f), vec2<f32>(-474f, 1000f), vec2<f32>(-1472f, -856f), vec2<f32>(1361f, -832f), vec2<f32>(-1064f, 1120f), vec2<f32>(653f, -105f), vec2<f32>(-392f, -404f), vec2<f32>(-536f, -846f), vec2<f32>(1327f, -1041f), vec2<f32>(-209f, -743f));

var<private> global2: vec3<u32>;

var<private> global3: array<bool, 24> = array<bool, 24>(false, true, false, true, false, true, true, false, false, true, true, true, true, true, false, true, false, true, false, true, true, true, false, false);

var<private> global4: array<f32, 22>;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.c);
}

