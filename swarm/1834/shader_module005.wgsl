struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: vec4<i32>;

var<private> global3: Struct_1;

var<private> global4: array<vec3<i32>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: f32) -> StorageBuffer {
    return StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1170f)))), arg_1, _wgslsmith_f_op_f32(round(arg_1)), -1901f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(select(global3.e, 1u, !global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2214f, 1275f) + _wgslsmith_f_op_f32(floor(-391f))) - -1601f)));
}

