struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: array<Struct_2, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(1000f, -2034f)), -894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
    var var_2 = false;
    return -89071i;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> StorageBuffer {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_0 = global0[_wgslsmith_index_u32(~reverseBits(firstLeadingBit(reverseBits(reverseBits(u_input.a)))), 13u)];
    var var_1 = -172f;
    return StorageBuffer(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_0 = true;
    var var_1 = var_0;
    let var_2 = Struct_4(_wgslsmith_clamp_i32(1i, u_input.b, -func_1(vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, var_0, true), vec3<u32>(25983u, u_input.a, u_input.a)))), true, 1u);
    let x = u_input.a;
    s_output = func_2(var_2.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) - _wgslsmith_f_op_f32(f32(-1f) * -749f)) * _wgslsmith_f_op_f32(f32(-1f) * -628f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f), -1266f)));
}

