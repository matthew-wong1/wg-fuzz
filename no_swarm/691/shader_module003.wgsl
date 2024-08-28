struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<Struct_3, 1>;

var<private> global2: vec4<i32>;

var<private> global3: u32 = 92866u;

var<private> global4: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-178f, -159f, 324f), vec3<f32>(-1155f, -297f, 383f), vec3<f32>(169f, 3491f, -1078f), vec3<f32>(-1210f, -563f, -2420f), vec3<f32>(754f, 222f, 1520f), vec3<f32>(1474f, 592f, -483f), vec3<f32>(-896f, 1123f, -1443f), vec3<f32>(928f, -413f, 1804f), vec3<f32>(1847f, -962f, 1142f), vec3<f32>(795f, -347f, -1079f), vec3<f32>(-1000f, -500f, -1868f), vec3<f32>(-1722f, -1218f, 137f), vec3<f32>(1789f, 569f, 1496f), vec3<f32>(-975f, -593f, -1281f), vec3<f32>(-872f, 1009f, -1651f), vec3<f32>(1671f, 1000f, 1000f), vec3<f32>(-1069f, -117f, -1956f), vec3<f32>(-1308f, -122f, 859f), vec3<f32>(-337f, -896f, 1349f), vec3<f32>(201f, -1000f, 1000f), vec3<f32>(-764f, 879f, 389f), vec3<f32>(-1119f, -371f, 1083f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(560f, -1283f), 1498f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

