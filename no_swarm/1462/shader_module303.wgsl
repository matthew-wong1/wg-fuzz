struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(529f)) - _wgslsmith_f_op_f32(ceil(arg_2.a.b))), _wgslsmith_f_op_f32(arg_2.e.a.x - _wgslsmith_f_op_f32(sign(arg_2.e.a.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1724f))) - _wgslsmith_f_op_f32(ceil(arg_2.d.a.x))));
    global0 = var_0;
    global0 = _wgslsmith_f_op_f32(round(-1982f));
    global0 = var_0;
    return ~(i32(-1i) * -u_input.a.x);
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1207f, 1603f, -1255f, 458f), vec4<f32>(394f, 278f, -525f, 1089f))), vec4<f32>(_wgslsmith_div_f32(700f, -287f), _wgslsmith_f_op_f32(-774f * -227f), -429f, _wgslsmith_f_op_f32(floor(-268f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)))))), _wgslsmith_div_f32(369f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(floor(-173f)), true))), !vec4<bool>(true, true, true, func_3(u_input.a, vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<f32>(-930f, 2330f, 717f, -1743f), -1171f, vec4<bool>(false, false, true, true)), true, false, Struct_1(vec4<f32>(-1000f, 925f, 1052f, -553f), -2634f, vec4<bool>(true, true, false, false)), Struct_1(vec4<f32>(-108f, -1000f, 116f, 1618f), 1545f, vec4<bool>(true, true, true, false)))) != -u_input.a.x));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = ~(firstTrailingBit(-1i) | (-13699i ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 34507i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | _wgslsmith_mult_i32(-17192i, u_input.a.x))));
    var_1 = -71394i;
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_mod_i32(firstLeadingBit(u_input.a.x), -_wgslsmith_clamp_i32(49792i, _wgslsmith_sub_i32(u_input.a.x, 8271i), ~(-24625i)) & -func_3(u_input.a, select(var_0.c.zwx, var_0.c.zwy, var_0.c.wzz), Struct_2(Struct_1(vec4<f32>(-1016f, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, var_0.c), false, var_0.c.x, Struct_1(vec4<f32>(320f, var_0.a.x, 1308f, 1447f), -378f, var_0.c), Struct_1(vec4<f32>(-231f, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x, vec4<bool>(true, false, var_0.c.x, var_0.c.x)))));
    return Struct_2(Struct_1(var_0.a, var_0.b, !select(select(var_0.c, var_0.c, vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x)), vec4<bool>(true, var_0.c.x, false, false), select(var_0.c, vec4<bool>(false, var_0.c.x, var_0.c.x, false), false))), all(!(!(!var_0.c.xxz))), true & var_0.c.x, Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1679f))), func_2().c), Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_0.a.x), select(!var_0.c, vec4<bool>(var_0.b != var_0.b, false, true, var_0.c.x), vec4<bool>(false, any(var_0.c), any(vec3<bool>(var_0.c.x, var_0.c.x, false)), !var_0.c.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = ~u_input.a.x;
    global0 = _wgslsmith_f_op_f32(-760f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) * _wgslsmith_f_op_f32(arg_0.e.a.x - arg_1.x)) - _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.b * _wgslsmith_f_op_f32(f32(-1f) * -541f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -677f), 341f, any(arg_0.d.c) || false));
    let var_1 = 5417u;
    let var_2 = func_2();
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-681f + -169f) + _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_div_f32(arg_0.a.b, _wgslsmith_f_op_f32(2711f + 477f)), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d.b, arg_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -871f)), func_2().a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(max(var_2.a.x, arg_0.d.a.x))))), !(!arg_0.a.c));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1, arg_0.b), -1708f));
    global0 = _wgslsmith_f_op_f32(-var_0);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_0.a.x * var_0))))), 642f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - var_0))));
    var var_2 = func_1(vec4<u32>(1u, 1u, 1u, 1u) >> (firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_1.x));
    return countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(30739u, 38082u), vec2<u32>(1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~func_5(func_4(func_1(vec4<u32>(23414u, 1u, 1u, 58689u)), vec3<f32>(-268f, 557f, 459f)), _wgslsmith_f_op_f32(f32(-1f) * -272f)) <= 67918u;
    var_1 = ~u_input.a.x < abs(1i);
    var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, 523f, 702f, 1183f))) - _wgslsmith_f_op_vec4_f32(-func_1(vec4<u32>(1u, 4294967295u, 48866u, 0u)).a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(~vec4<u32>(1u, 4294967295u, 1u, 0u)).d.a.x)), vec4<bool>(_wgslsmith_add_i32(-u_input.a.x, 12154i) != 56198i, u_input.a.x < ~u_input.a.x, true, all(vec4<bool>(true, true, true, true))));
    var var_3 = _wgslsmith_dot_vec2_i32(-(min(vec2<i32>(u_input.a.x, 2147483647i) << (vec2<u32>(66263u, 4294967295u) % vec2<u32>(32u)), -vec2<i32>(0i, 2147483647i)) ^ select(u_input.a ^ u_input.a, -u_input.a, func_1(vec4<u32>(68427u, 0u, 4294967295u, 1u)).d.c.ww)), vec2<i32>(-11926i, u_input.a.x));
    var var_4 = 1i;
    var_1 = all(func_2().c) & true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(~1u, 59897u >> (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 58653u, 76515u), vec3<u32>(1u, 0u, 9095u)), ~4294967295u) >> (~(~vec4<u32>(0u, 33374u, 0u, 4294967295u)) % vec4<u32>(32u))), vec2<f32>(1034f, _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-168f))))), ~(-1i));
}

