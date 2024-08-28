struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1738f - 1835f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1477f, 914f) + _wgslsmith_f_op_f32(-347f + 1054f))) - -1270f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_i32(-1i, select(2147483647i, i32(-1i) * -27366i, true))));
}

