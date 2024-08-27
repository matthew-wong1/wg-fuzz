struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<bool, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-939f + 539f) - _wgslsmith_f_op_f32(-628f + 2344f)))), 840f)));
    global0 = array<bool, 10>();
    let var_1 = true;
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_2 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, u_input.b << (10243u % 32u)), u_input.b), u_input.b, firstLeadingBit(_wgslsmith_div_u32(u_input.b, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1582f, -553f, _wgslsmith_f_op_f32(sign(297f)), 857f));
}

