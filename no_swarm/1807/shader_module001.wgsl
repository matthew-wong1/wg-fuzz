struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = select(select(!arg_0.c.b, vec2<bool>(true, arg_0.c.b.x), arg_0.c.b), arg_0.c.b, !arg_0.c.b);
    var_0 = !vec2<bool>(true | arg_0.c.b.x, !all(vec3<bool>(var_0.x, var_0.x, false)) && (_wgslsmith_sub_i32(-28648i, arg_0.b.x) > (i32(-1i) * -20151i)));
    let var_1 = ~(-(~firstLeadingBit(vec2<i32>(arg_0.b.x, u_input.d))));
    let var_2 = select(~u_input.a, min(u_input.a, select(u_input.a << ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_1, u_input.b, arg_1), u_input.a)), (var_1.x <= u_input.c.x) || (arg_0.b.x < var_1.x))), select(select(select(select(vec4<bool>(arg_0.c.b.x, true, arg_0.c.b.x, var_0.x), vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, true, true, var_0.x)), vec4<bool>(true, arg_0.c.b.x, true, arg_0.c.b.x), !vec4<bool>(false, false, var_0.x, false)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), vec4<bool>(var_0.x, u_input.b > (39866u ^ u_input.b), true, false), !vec4<bool>(arg_0.c.b.x, false, true, arg_0.c.b.x)));
    return false;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, ~22918u, ~(~reverseBits(u_input.b)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a << (u_input.a % vec4<u32>(32u))), u_input.a.x)));
    var var_1 = Struct_4(vec3<u32>(~11540u, min(firstTrailingBit(min(4294967295u, 1u)), 12874u), 2931u));
    var var_2 = select(vec4<bool>((false == func_3(Struct_3(vec2<f32>(895f, 497f), vec2<i32>(u_input.c.x, u_input.d), Struct_2(vec3<f32>(-990f, -810f, -1092f), vec2<bool>(true, false)), vec2<f32>(-858f, 526f), vec2<f32>(217f, -618f)), var_0.x, -590f)) || true, true, !(u_input.c.x != u_input.d) || all(vec4<bool>(true, true, true, true)), false), !vec4<bool>(false, any(vec3<bool>(false, false, false)), !any(vec3<bool>(false, false, false)), true), !(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-612f - 500f), -915f), _wgslsmith_f_op_f32(1776f - 1f)), vec3<f32>(-1110f, _wgslsmith_f_op_f32(f32(-1f) * -3136f), _wgslsmith_f_op_f32(f32(-1f) * -1125f)))), vec2<bool>(true, true));
    var_2 = !vec4<bool>(var_2.x, false, !var_3.b.x, false);
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x), var_3.a)))), vec3<f32>(_wgslsmith_f_op_f32(abs(314f)), var_3.a.x, _wgslsmith_f_op_f32(sign(var_3.a.x))), !vec3<bool>(var_3.b.x, var_3.b.x, false))) + _wgslsmith_div_vec3_f32(var_3.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_3.a + var_3.a))))), var_3.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> u32 {
    var var_0 = u_input.c.x >= ~u_input.d;
    let var_1 = func_2();
    let var_2 = ~vec4<u32>(firstTrailingBit(4294967295u) >> (~4294967295u % 32u), 4294967295u, 1u, _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.a.x, 44750u, arg_3.x), _wgslsmith_div_u32(select(u_input.b, arg_3.x, true), 24316u ^ arg_3.x), ~(4294967295u | arg_0.x)));
    let var_3 = _wgslsmith_sub_u32(arg_3.x, ~(~reverseBits(~0u)));
    let var_4 = arg_2.xyw;
    return ~(max(firstTrailingBit(_wgslsmith_mod_u32(78228u, arg_3.x)), arg_0.x) << (~arg_0.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wwy, ~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(max(u_input.b, 13586u), 16926u, 1u, func_1(u_input.a, vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), u_input.a.zwy)), ~(vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b) | u_input.a)));
}

