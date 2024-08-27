struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = u_input.c.ywz;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-arg_2.b), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(437f - arg_2.b)))), true);
    var var_2 = Struct_3(arg_2, arg_2, ~4294967295u, ~(~(0u | (45210u | u_input.a))), arg_2);
    var_0 = vec3<i32>(~(0i ^ _wgslsmith_mod_i32(~(-1909i), _wgslsmith_dot_vec2_i32(vec2<i32>(38832i, u_input.c.x), vec2<i32>(-1i, 14380i)))), 1i, u_input.b);
    let var_3 = vec4<bool>(false, any(vec4<bool>(var_1.c, var_1.c, _wgslsmith_add_i32(var_0.x, 1i) <= countOneBits(var_0.x), false)), (any(vec2<bool>(arg_1.x, true)) == any(vec4<bool>(arg_1.x, arg_2.a.x, arg_2.a.x, false))) || false, all(!vec3<bool>(true, var_2.e.a.x && false, true)));
    return _wgslsmith_f_op_f32(-arg_2.b);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -978f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1625f + arg_1.b.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.b, 1508f, 574f), vec3<f32>(1000f, arg_0.b.b, arg_0.a.b)), !vec3<bool>(arg_1.c, arg_0.e.a.x, arg_0.e.a.x), Struct_1(vec2<bool>(false, false), arg_0.e.b))))));
    let var_1 = -35682i;
    var var_2 = 2147483647i;
    var var_3 = Struct_4(u_input.a, true);
    var_0 = arg_1.a;
    return Struct_1(select(select(!select(arg_0.b.a, vec2<bool>(arg_0.b.a.x, true), arg_0.e.a), arg_0.e.a, true), select(vec2<bool>(false, true), !arg_0.e.a, select(false, 23676u == u_input.a, true)), select(select(arg_0.b.a, vec2<bool>(false, arg_1.c), !vec2<bool>(true, var_3.b)), select(vec2<bool>(arg_1.c, false), select(vec2<bool>(arg_1.c, var_3.b), vec2<bool>(arg_0.b.a.x, false), true), true), false)), -539f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = u_input.c.x;
    let var_1 = func_2(Struct_3(Struct_1(!select(arg_0.b.a, vec2<bool>(true, arg_0.b.a.x), arg_1.c.a.x), _wgslsmith_f_op_f32(-arg_1.c.b)), Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(trunc(arg_0.a.b))), u_input.a, max(_wgslsmith_add_u32(arg_0.c, u_input.a), ~arg_0.c) << (~_wgslsmith_sub_u32(arg_0.d, 99068u) % 32u), Struct_1(vec2<bool>(true, true), arg_0.e.b)), Struct_5(_wgslsmith_f_op_f32(-arg_0.a.b), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(arg_0.a.b * _wgslsmith_f_op_f32(select(182f, arg_1.d, arg_0.a.a.x)))), (select(u_input.c.x, var_0, false) & -57112i) <= -19280i)).a.x;
    var var_2 = Struct_1(vec2<bool>(select(true, _wgslsmith_f_op_f32(trunc(-1432f)) < _wgslsmith_f_op_f32(min(arg_1.d, arg_0.a.b)), all(select(vec4<bool>(arg_0.a.a.x, false, true, false), vec4<bool>(false, var_1, var_1, arg_0.e.a.x), vec4<bool>(true, arg_1.c.a.x, true, arg_0.e.a.x)))), func_2(Struct_3(func_2(Struct_3(Struct_1(arg_1.c.a, -1000f), Struct_1(vec2<bool>(arg_1.c.a.x, var_1), -295f), 104964u, arg_0.d, Struct_1(vec2<bool>(arg_1.e.x, true), -498f)), Struct_5(557f, vec2<f32>(1317f, arg_1.d), arg_1.e.x)), Struct_1(vec2<bool>(false, arg_1.a.a.x), -1995f), firstLeadingBit(0u), arg_0.d >> (u_input.a % 32u), Struct_1(arg_0.b.a, 589f)), Struct_5(_wgslsmith_f_op_f32(trunc(arg_1.a.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.b, arg_1.d) - vec2<f32>(arg_1.d, -942f)), arg_0.b.a.x && true)).a.x), arg_1.c.b);
    let var_3 = ~(~vec4<u32>(~1u, 39188u, _wgslsmith_clamp_u32(~arg_0.d, _wgslsmith_sub_u32(u_input.a, 16046u), 4294967295u), arg_0.c));
    let var_4 = all(vec4<bool>(any(vec4<bool>(true, all(vec4<bool>(false, arg_0.b.a.x, true, true)), true, var_2.a.x)), func_2(Struct_3(arg_0.a, arg_1.c, 1u, 17934u, func_2(arg_0, Struct_5(arg_0.a.b, vec2<f32>(arg_1.b.b, 466f), var_1))), Struct_5(_wgslsmith_div_f32(arg_1.d, arg_0.b.b), vec2<f32>(var_2.b, 1150f), false)).a.x, 1000f != _wgslsmith_f_op_f32(min(-494f, arg_0.e.b)), false));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.b, -516f) * vec2<f32>(arg_0.e.b, -1640f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-612f, 523f) + vec2<f32>(arg_1.c.b, -741f)), arg_0.e.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.b - 1709f), 497f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -757f)), vec2<f32>(-433f, 1403f))))), !func_2(arg_0, Struct_5(_wgslsmith_f_op_f32(floor(518f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-914f, var_2.b) - vec2<f32>(-615f, 1257f)), arg_0.e.a.x & var_2.a.x)).a));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(arg_1.e.b * _wgslsmith_f_op_f32(trunc(var_0))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - arg_1.e.b))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2157f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.b * arg_1.a.b)))), _wgslsmith_f_op_f32(arg_1.e.b * 718f))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_1.x) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(step(623f, -973f)), _wgslsmith_div_f32(1011f, -201f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.e.b, 2180f), _wgslsmith_f_op_f32(var_0 + var_0)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(arg_1, Struct_2(Struct_1(arg_1.e.a, arg_1.e.b), func_2(arg_1, Struct_5(var_0, vec2<f32>(1677f, -143f), arg_1.a.a.x)), Struct_1(vec2<bool>(arg_1.e.a.x, false), var_0), var_1.x, select(arg_1.b.a, arg_1.e.a, vec2<bool>(false, false))))))));
    var var_2 = _wgslsmith_f_op_f32(step(830f, 1219f));
    return _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(71496u, _wgslsmith_mod_u32(1u, 90477u), ~arg_1.d), abs(_wgslsmith_sub_u32(34200u, arg_1.c)), arg_1.c)), ~abs(abs(vec4<u32>(5736u, arg_1.d, 0u, 4294967295u))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = func_2(Struct_3(func_2(Struct_3(Struct_1(vec2<bool>(arg_0.x, false), 2168f), Struct_1(vec2<bool>(false, arg_0.x), 628f), arg_1.x, select(u_input.a, 1u, false), func_2(Struct_3(Struct_1(arg_0, 669f), Struct_1(vec2<bool>(arg_0.x, arg_0.x), 899f), u_input.a, u_input.a, Struct_1(vec2<bool>(arg_0.x, true), -1802f)), Struct_5(-299f, vec2<f32>(-599f, -1420f), arg_0.x))), Struct_5(-537f, vec2<f32>(1000f, 890f), arg_0.x)), Struct_1(vec2<bool>(!arg_0.x, arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_1(arg_0, -1168f), Struct_1(arg_0, 1243f), 44441u, 22973u, Struct_1(vec2<bool>(true, true), -970f)), Struct_2(Struct_1(vec2<bool>(true, true), -513f), Struct_1(vec2<bool>(false, true), -2315f), Struct_1(vec2<bool>(arg_0.x, arg_0.x), 720f), 1000f, vec2<bool>(arg_0.x, true)))).x))), 1u | countOneBits(func_1(vec3<i32>(-1i, 28395i, arg_2.x), Struct_3(Struct_1(arg_0, -1100f), Struct_1(vec2<bool>(false, false), 417f), arg_1.x, arg_1.x, Struct_1(vec2<bool>(arg_0.x, false), 1076f)), u_input.c, arg_2.x).x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(72766u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 0u, 0u), vec3<u32>(68050u, 4294967295u, 0u))), ~6596u), Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1187f)) + -531f))), Struct_5(_wgslsmith_f_op_f32(abs(707f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(f32(-1f) * -1553f)) + vec2<f32>(631f, func_2(Struct_3(Struct_1(vec2<bool>(arg_0.x, true), -951f), Struct_1(vec2<bool>(arg_0.x, arg_0.x), 269f), u_input.a, u_input.a, Struct_1(arg_0, -934f)), Struct_5(-121f, vec2<f32>(-537f, 709f), arg_0.x)).b)), arg_0.x));
    var var_1 = -(~abs(u_input.c.zx));
    var_1 = u_input.c.wz;
    var var_2 = Struct_4(4294967295u, !(_wgslsmith_f_op_f32(f32(-1f) * -161f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(abs(1000f)))));
    var var_3 = Struct_1(var_0.a, var_0.b);
    return Struct_2(Struct_1(select(var_3.a, arg_0, var_3.a.x || !var_2.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_1(arg_0, var_3.b), Struct_1(var_0.a, 1172f), 4294967295u, var_2.a, var_0), Struct_2(var_0, Struct_1(vec2<bool>(true, arg_0.x), -1792f), var_0, var_3.b, vec2<bool>(true, var_0.a.x)))).x, -205f))), var_0, Struct_1(select(var_3.a, !vec2<bool>(arg_0.x, false), !var_0.a.x), -321f), -1000f, vec2<bool>(!(!(arg_0.x | arg_0.x)), any(select(vec3<bool>(var_3.a.x, arg_0.x, false), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(var_2.b, true, var_3.a.x), vec3<bool>(var_2.b, true, var_2.b)), arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b << (u_input.a % 32u), u_input.b, _wgslsmith_sub_i32(u_input.b, firstTrailingBit(-43562i)), _wgslsmith_div_i32(u_input.c.x, countOneBits(2147483647i))), vec4<i32>(-1i, u_input.b, u_input.c.x, u_input.c.x));
    var var_1 = func_5(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), false | all(vec2<bool>(true, true))), ~vec4<u32>(u_input.a, ~u_input.a, abs(u_input.a), u_input.a) >> (~(~func_1(u_input.c.xwy, Struct_3(Struct_1(vec2<bool>(true, true), 1739f), Struct_1(vec2<bool>(false, true), -911f), u_input.a, u_input.a, Struct_1(vec2<bool>(true, false), 864f)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b), -85976i)) % vec4<u32>(32u)), firstTrailingBit(vec2<i32>(-1i) * -(u_input.c.wy & vec2<i32>(u_input.b, var_0))), min(21755i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(0i, -19571i, -34069i)), reverseBits(vec3<i32>(u_input.c.x, 2622i, 1i)) | vec3<i32>(-1i, -3197i, var_0))));
    let var_2 = ~(~(~(u_input.a | u_input.a) & 24655u));
    var_1 = func_5(func_5(var_1.e, _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, var_2) >> (~vec4<u32>(27307u, 82970u, 49992u, u_input.a) % vec4<u32>(32u)), abs(vec4<u32>(u_input.a, 4294967295u, 0u, 1u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, 1u, var_2)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 31430u, u_input.a, 4294967295u)))), u_input.c.zw, _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -1i), var_0)).b.a, vec4<u32>(47810u, u_input.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 1u), 7351u), u_input.a), ~(1u ^ max(u_input.a, 0u))), u_input.c.zx, ~((u_input.c.x | var_0) ^ var_0));
    var_1 = Struct_2(Struct_1(!select(select(var_1.e, vec2<bool>(false, true), false), !vec2<bool>(true, var_1.a.a.x), !var_1.b.a), var_1.c.b), func_5(!select(var_1.b.a, vec2<bool>(var_1.a.a.x, true), 1000f < var_1.d), select(vec4<u32>(_wgslsmith_add_u32(28449u, 7257u), max(106537u, 16846u), ~0u, select(44330u, 33108u, var_1.a.a.x)), vec4<u32>(var_2, _wgslsmith_div_u32(var_2, 17u), u_input.a, ~20075u), vec4<bool>(any(vec4<bool>(var_1.a.a.x, true, var_1.a.a.x, true)), -2147483647i <= var_0, true, true)), abs(u_input.c.wy), select(~var_0, u_input.b, u_input.c.x <= -u_input.c.x)).c, func_5(!(!(!var_1.e)), vec4<u32>(~firstLeadingBit(u_input.a), reverseBits(26927u) << (var_2 % 32u), ~14524u, 1u), vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -58435i, -u_input.c.x), _wgslsmith_mult_i32(firstLeadingBit(u_input.c.x), 1i)), select(~countOneBits(u_input.b), firstLeadingBit(var_0), true)).b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-996f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - var_1.b.b) + -1915f)))), func_5(!(!var_1.b.a), select(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_2, 4294967295u, 1u), ~vec4<u32>(21256u, 4294967295u, var_2, 31705u)), select(~vec4<u32>(u_input.a, var_2, 71701u, 45118u), vec4<u32>(18857u, 1u, u_input.a, 69529u), var_1.c.a.x & true), vec4<bool>(var_1.c.a.x != var_1.b.a.x, var_1.e.x, select(false, var_1.a.a.x, var_1.e.x), !var_1.a.a.x)), u_input.c.xx, firstLeadingBit(var_0)).b.a);
    let var_3 = vec2<bool>(((max(var_2, var_2) << (64398u % 32u)) < ~(~26118u)) || var_1.c.a.x, true);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, _wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_1(var_3, var_1.d), var_1.b, u_input.a, 770u, Struct_1(vec2<bool>(var_3.x, true), -1041f)), func_5(vec2<bool>(var_3.x, var_1.e.x), vec4<u32>(0u, 11739u, 17099u, u_input.a), u_input.c.zw, 1i))).x, var_1.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(106056u, ~(~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 27884u, u_input.a), vec3<u32>(u_input.a, 51074u, 0u)))), vec4<u32>(select(~reverseBits(0u), 0u, var_1.a.a.x), 1u, ~4294967295u, ~firstTrailingBit(~0u)), select(countOneBits(min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, u_input.c.x, var_0, var_0), vec4<i32>(13621i, u_input.c.x, -2147483647i, 1i)), vec4<i32>(var_0, var_0, 1i, 0i))), vec4<i32>(_wgslsmith_clamp_i32(var_0, u_input.c.x, u_input.b), -1i, countOneBits(0i), var_0) & (vec4<i32>(-1i) * -u_input.c), false));
}

