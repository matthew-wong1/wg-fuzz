struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(33357i, 49519i, 1i, 12637i, 40546i, 1i, -14375i, 1i, 1i, 3112i, 2147483647i, 2147483647i, i32(-2147483648), -21271i, -16957i);

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, false, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> f32 {
    global1 = array<Struct_2, 23>();
    let var_0 = u_input.b.zz;
    var var_1 = global0[_wgslsmith_index_u32(select(u_input.e, u_input.a, true), 15u)];
    var_1 = (i32(-1i) * -17182i) ^ global0[_wgslsmith_index_u32(max(u_input.a, u_input.e), 15u)];
    global0 = array<i32, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1916f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-757f)), -396f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.d.x >> (abs(u_input.a) % 32u), 15u)];
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    global2 = array<vec3<bool>, 1>();
    global2 = array<vec3<bool>, 1>();
    global1 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-818f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-729f - _wgslsmith_f_op_f32(step(-1327f, -190f)))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1194f + -391f), _wgslsmith_f_op_f32(f32(-1f) * -961f))) + _wgslsmith_f_op_f32(f32(-1f) * -606f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1052f, 1259f, 392f, -509f), vec4<f32>(-605f, 587f, -491f, 1531f)))))))), -u_input.c);
}

