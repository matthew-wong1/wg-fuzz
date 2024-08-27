struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-763f, -716f, 2244f, 133f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1283f, -410f, 821f, arg_0.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec4<f32>(1654f, -626f, arg_0.a.x, 1091f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0));
    return ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 51183u, 4294967295u), u_input.a) | min(u_input.a, u_input.a), ~vec4<u32>(59683u, u_input.a.x, 0u, 0u) << (u_input.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1, arg_1) & abs(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, firstLeadingBit(arg_1.x)), 6478u ^ (58549u ^ arg_1.x), 1u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<f32>) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_0.c;
    var var_2 = u_input.a;
    var_2 = select(~select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(14735u, arg_2, 47901u)), max(0u, var_2.x), abs(arg_2), 80573u), abs(func_3(Struct_1(vec3<f32>(-1471f, arg_3.x, var_0.a.x), vec4<bool>(true, arg_0.c.x, true, true), var_0.b.wz), vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.c.x, vec2<i32>(u_input.b, -1i))), vec4<bool>(any(var_1), u_input.b <= u_input.b, true, any(var_0.b.ywz))), vec4<u32>(reverseBits(~30023u), ~_wgslsmith_mod_u32(select(var_2.x, var_2.x, false), _wgslsmith_add_u32(arg_2, 26221u)), func_3(Struct_1(var_0.a, vec4<bool>(var_1.x, arg_0.c.x, var_1.x, true), vec2<bool>(false, false)), countOneBits(var_2.xwx), -63445i, u_input.d).x ^ ~28973u, 0u), arg_0.b);
    var_2 = vec4<u32>(var_2.x, u_input.a.x, 4905u, max(u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, 0u))) << (u_input.a % vec4<u32>(32u));
    return abs(func_3(arg_0, vec3<u32>(_wgslsmith_div_u32(var_2.x, u_input.a.x), ~u_input.a.x, _wgslsmith_mod_u32(1u, u_input.a.x)), u_input.d.x, vec2<i32>(30718i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, u_input.d.x), u_input.c.wyw))).x) >= var_2.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> bool {
    var var_0 = u_input.b < -1i;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1780f + _wgslsmith_f_op_f32(1476f - _wgslsmith_f_op_f32(exp2(arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))));
    let var_2 = 60901i;
    let var_3 = -(~countOneBits(firstTrailingBit(i32(-1i) * -36638i)));
    var var_4 = func_2(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x - -422f), arg_1.a.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, 1990f)))))), u_input.a.x, arg_1.a.yy);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f)))))) >= arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.a.x, ~u_input.a.x, 51278u, ((min(u_input.a.x, u_input.a.x) & _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) | 4294967295u) & ~(~u_input.a.x & 45375u));
    var var_1 = vec4<f32>(1f, -1753f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) + _wgslsmith_f_op_f32(263f * 141f)) - _wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(sign(831f)))), 624f);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(min(var_1.x, -960f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1498f - -1000f)) + _wgslsmith_f_op_f32(2035f - -661f))), vec4<bool>(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)), func_1(0u, Struct_1(vec3<f32>(var_1.x, var_1.x, -964f), vec4<bool>(true, true, true, true), vec2<bool>(true, false)), vec2<bool>(true, true), countOneBits(29478u)), false && select(true, true, var_1.x > var_1.x), true), vec2<bool>(true, true));
    var var_3 = !var_2.c.x;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, var_2.a.x, -1529f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 108f, var_2.a.x, 579f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -635f, -275f, 458f) + vec4<f32>(var_1.x, 507f, -1156f, 417f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1000f, var_1.x, -1036f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_1.x, -2016f, var_1.x), vec4<f32>(var_1.x, -2038f, 748f, 1000f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_2.a.x, var_2.a.x, 440f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, 767f, var_2.a.x, 210f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_2.a.x, 1659f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 197f, -309f, 356f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 290f, 1016f))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.xxz)), var_2.b, !var_2.c);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wx, u_input.a, var_2.a.x, ~(-u_input.d));
}

