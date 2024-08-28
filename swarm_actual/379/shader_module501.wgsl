struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(2147483647i, -1547f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: Struct_5) -> vec4<u32> {
    global0 = -222f;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.b)), arg_1.e));
    let var_0 = -1i;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(371f, arg_1.e))) * arg_1.e))));
    return ~(~vec4<u32>(_wgslsmith_sub_u32(107987u, arg_1.a), _wgslsmith_div_u32(~arg_1.d.x, 1u), ~_wgslsmith_dot_vec2_u32(arg_1.d.zy, vec2<u32>(arg_1.a, arg_1.d.x)), _wgslsmith_sub_u32(arg_1.a, _wgslsmith_sub_u32(4294967295u, arg_1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1833f;
    global0 = global1.b;
    global1 = Struct_3(-9046i, global1.b);
    var var_0 = 35289u;
    var_0 = _wgslsmith_clamp_u32(~select(~12975u, abs(_wgslsmith_mod_u32(4294967295u, 30762u)), true & any(vec2<bool>(false, true))), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(1221u, 4294967295u), 34620u >> (1u % 32u))), reverseBits(_wgslsmith_clamp_u32(~0u, 35510u, ~1u))), ~_wgslsmith_dot_vec4_u32(countOneBits(func_1(true, Struct_5(1u, vec4<bool>(true, true, true, true), Struct_1(vec4<i32>(-10464i, -41994i, global1.a, 7327i)), vec3<u32>(1u, 44620u, 0u), -1860f))), vec4<u32>(1u, 1u, 1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, max(i32(-1i) * -6376i, ~global1.a), global1.b, global1.b, global1.a);
}

