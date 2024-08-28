struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 18>;

var<private> global2: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(901f, _wgslsmith_f_op_f32(max(228f, -1125f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-491f, _wgslsmith_f_op_f32(max(124f, -554f)))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-284f + 484f))), -646f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -136f) - _wgslsmith_f_op_f32(ceil(-222f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1866f, -593f))), -1262f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f * -1000f))))));
    var var_1 = !(!(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true))));
    let var_2 = -211f;
    var var_3 = vec2<u32>(u_input.a, ~u_input.a);
    global0 = 0i;
    var_3 = ~vec2<u32>(var_3.x, _wgslsmith_div_u32(u_input.a, var_3.x | var_3.x)) << (vec2<u32>(~_wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), var_3.x), _wgslsmith_dot_vec2_u32((vec2<u32>(8409u, 1u) & vec2<u32>(29687u, var_3.x)) & min(vec2<u32>(1u, 4294967295u), vec2<u32>(21975u, var_3.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(35244u, 1u), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(var_3.x, u_input.a)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(502f, _wgslsmith_f_op_vec2_f32(var_0.xy * _wgslsmith_f_op_vec2_f32(var_0.zy - _wgslsmith_f_op_vec2_f32(var_0.wy - var_0.zz))));
}

