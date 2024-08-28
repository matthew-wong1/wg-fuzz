struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>) -> bool {
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_5(Struct_3(u_input.c.yw, _wgslsmith_mod_vec3_u32(u_input.c.yxx, min(vec3<u32>(0u, 0u, 22987u), ~u_input.c.zyw)), arg_0, vec2<f32>(_wgslsmith_div_f32(-253f, _wgslsmith_f_op_f32(max(-837f, arg_1))), 382f)), arg_0.b & 39608i, ~u_input.c, Struct_4(Struct_3(max(~vec2<u32>(1u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 16828u), vec2<u32>(u_input.c.x, u_input.b))), u_input.c.yzy, Struct_2(all(arg_2), u_input.a), _wgslsmith_f_op_vec2_f32(select(arg_3, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x)), !arg_2.x))), ~_wgslsmith_mod_u32(u_input.c.x, ~u_input.c.x), true), Struct_4(Struct_3(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 47650u), vec2<u32>(1288u, 74367u)), u_input.c.yzz, arg_0, vec2<f32>(_wgslsmith_div_f32(-220f, arg_3.x), _wgslsmith_div_f32(-1677f, arg_1))), u_input.b, !func_3(~u_input.c, vec2<i32>(u_input.a, 1i) | vec2<i32>(u_input.a, -1i))));
    let var_1 = _wgslsmith_mult_u32(var_0.c.x, var_0.c.x);
    var var_2 = true;
    var_2 = 873f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-756f, var_0.d.a.d.x)))), arg_1));
    let var_3 = _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.c.ww, u_input.c.zz), abs(var_0.e.a.b.zx)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, u_input.c.x), var_0.c.zy), 37527u)), reverseBits(reverseBits(vec2<u32>(7621u, var_0.e.b))), abs(~84069u) > _wgslsmith_clamp_u32(24710u, var_1, 31422u & u_input.b)), var_0.c.xy);
    return vec3<bool>(!select(true, !all(vec2<bool>(true, arg_2.x)), true), 6939u >= ~firstTrailingBit(0u), !(_wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(4294967295u, var_0.c.x)) != _wgslsmith_div_u32(2944u, _wgslsmith_dot_vec4_u32(vec4<u32>(59658u, 22001u, var_3, 85330u), u_input.c))));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<bool>(true, false);
    var_0 = !select(!select(vec2<bool>(true, var_0.x), vec2<bool>(false, false), false), vec2<bool>(var_0.x, any(func_2(Struct_2(true, u_input.a), -904f, vec3<bool>(false, false, var_0.x), vec2<f32>(498f, -1019f)))), select(func_2(Struct_2(true, u_input.a), 811f, vec3<bool>(false, true, true), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1000f), vec2<f32>(1086f, 608f))).yy, vec2<bool>(true, var_0.x), any(vec3<bool>(var_0.x, var_0.x, false))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) + _wgslsmith_f_op_f32(ceil(950f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(482f)), _wgslsmith_f_op_f32(ceil(-1285f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-418f, 1000f, true))))))));
    return Struct_4(Struct_3(u_input.c.zy, u_input.c.zxy, Struct_2(var_0.x, ~(-1i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(1162f, -500f), vec2<bool>(var_0.x, true))))))), _wgslsmith_mod_u32(37401u, _wgslsmith_clamp_u32(~firstLeadingBit(78574u), ~min(u_input.c.x, 4294967295u), _wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0.a.c;
    var var_2 = 502f;
    let var_3 = _wgslsmith_add_u32(0u, abs(~_wgslsmith_clamp_u32(abs(var_0.a.b.x), 14933u << (var_0.b % 32u), ~111636u)));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.a.d.x)), _wgslsmith_f_op_f32(min(813f, _wgslsmith_f_op_f32(-2633f + -1951f)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, -624f, var_0.a.d.x, -1328f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1207f, 1459f, var_0.a.d.x, 1111f)))), vec4<f32>(var_0.a.d.x, _wgslsmith_f_op_f32(-var_0.a.d.x), -1948f, _wgslsmith_div_f32(275f, var_0.a.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d.x, -577f, var_0.a.d.x, var_0.a.d.x) - vec4<f32>(var_0.a.d.x, -1205f, 718f, var_0.a.d.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(317f, -561f, var_0.a.d.x, var_0.a.d.x), vec4<f32>(var_0.a.d.x, -411f, var_0.a.d.x, var_0.a.d.x), false))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.x, -645f, var_0.a.d.x, 482f)) * vec4<f32>(-878f, var_0.a.d.x, 1000f, -226f))), vec4<bool>(true, false, !all(vec4<bool>(var_0.c, false, var_0.a.c.a, var_0.a.c.a)), all(vec4<bool>(var_0.c, var_1.a, false, false)) && func_2(var_0.a.c, -230f, vec3<bool>(var_1.a, true, true), var_0.a.d).x))));
    var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f + _wgslsmith_f_op_f32(max(-144f, -1798f)))), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.a.d.x, 667f, var_0.c)))))), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-689f, _wgslsmith_f_op_f32(ceil(-2749f)), var_0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(1096f, -1835f, true)), _wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(-376f - -936f))))), var_1.b, var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) + _wgslsmith_f_op_f32(-830f - 2271f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.x))))));
}

