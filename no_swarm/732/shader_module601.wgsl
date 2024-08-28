struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: Struct_3,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
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

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-13300i, i32(-2147483648)), vec2<i32>(35887i, 2147483647i), vec2<i32>(2147483647i, -29253i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(-84490i, 1i), vec2<i32>(-9257i, 2147483647i), vec2<i32>(1i, 80465i), vec2<i32>(0i, 1i), vec2<i32>(1i, -1635i), vec2<i32>(23182i, 1i), vec2<i32>(-32921i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-21301i, i32(-2147483648)), vec2<i32>(1i, -46673i), vec2<i32>(35098i, 15215i), vec2<i32>(0i, 0i), vec2<i32>(26615i, 2147483647i), vec2<i32>(0i, -55510i), vec2<i32>(0i, -41343i), vec2<i32>(51489i, 9520i), vec2<i32>(-6765i, 11953i), vec2<i32>(36029i, -49941i), vec2<i32>(10594i, 2147483647i));

var<private> global2: f32 = 773f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 3>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) - _wgslsmith_f_op_f32(sign(-678f))), _wgslsmith_f_op_f32(f32(-1f) * -2886f))), -375f);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(106f, -1151f, -196f) + vec3<f32>(1800f, -1000f, 989f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 626f, -1221f), vec3<f32>(-148f, -1424f, 682f))))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -162f) + _wgslsmith_f_op_f32(f32(-1f) * -871f));
    var var_2 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -463f), -2363f);
    let x = u_input.a;
    s_output = StorageBuffer(1016f);
}

