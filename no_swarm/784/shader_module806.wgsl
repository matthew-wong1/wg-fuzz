struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -436f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1082f * 1544f), -332f)), arg_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-618f + 1818f)), -479f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1122f * arg_1))), -1086f)));
    var var_1 = false & all(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), true));
    let var_2 = abs(vec2<i32>(~abs(17311i), -1i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(-24165i, arg_0.x, 1i)))) >> (_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.b, 0u) >> (vec2<u32>(49811u, u_input.a) % vec2<u32>(32u))), ~select(abs(u_input.e), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 0u)), true)) % vec2<u32>(32u));
    let var_3 = vec3<u32>(~_wgslsmith_sub_u32(select(u_input.a, ~6851u, true), 0u), abs(firstTrailingBit(~(u_input.d >> (32679u % 32u)))), u_input.a | u_input.b);
    var_1 = any(!select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, true, false))));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = u_input.c << (func_3(abs(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-672f, _wgslsmith_f_op_f32(249f * 1222f)))))) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-202f, 389f, 857f)))))));
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec3_u32(countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d, 50607u), vec3<u32>(4294967295u, 1u, 45995u))), min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.e.x, u_input.a), ~vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(101158u, u_input.e.x, 26919u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.a, u_input.e.x), vec3<u32>(u_input.e.x, u_input.d, 13977u)) % vec3<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(-391f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zz - vec2<f32>(var_1.x, -1000f)) * vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1367f, var_1.x)), _wgslsmith_f_op_f32(min(-486f, -1000f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.xz), var_1.zz, select(vec2<bool>(false, arg_1), vec2<bool>(arg_0, false), false)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -1437f)), var_3.x, var_1.x) * vec3<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, var_1.x, true)) - _wgslsmith_f_op_f32(var_3.x - 108f)) * 1065f), _wgslsmith_f_op_f32(-var_3.x)));
    return Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_4.x, -176f, -1855f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1067f, var_3.x, var_1.x, 1000f) - vec4<f32>(var_3.x, 889f, -1238f, var_4.x))))), 85053u >> (var_2.x % 32u), u_input.e, abs(u_input.d) & ~abs(u_input.e.x)), select(~1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c, abs(u_input.c)), -2147483647i, 0i), false), _wgslsmith_f_op_f32(f32(-1f) * -445f), Struct_1(u_input.d, vec4<f32>(385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - -857f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1101f))), var_4.x), ~_wgslsmith_div_u32(~var_2.x, 4294967295u), min(var_2.zx, u_input.e), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, -1847f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1801f + var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f + var_3.x) - 856f))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d.b * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.b.x, arg_0, _wgslsmith_f_op_f32(arg_0 * 1638f), _wgslsmith_div_f32(arg_1.e, arg_1.d.b.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(728f + 2231f), func_2(arg_2.x, true).e, -1113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(607f, arg_3.b.x)) + -284f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.d.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1320f, arg_3.b.x, arg_1.d.b.x, arg_1.a.b.x), arg_3.b))), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), arg_2, select(vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)))))));
    let var_1 = arg_2.yw;
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e), -982f)))));
    return select(select(select(!select(arg_2.zzw, vec3<bool>(var_1.x, true, true), arg_2.zww), arg_2.yzy, var_1.x), !arg_2.yxw, vec3<bool>(false == !arg_2.x, any(select(arg_2.xy, arg_2.xz, var_1)), all(!var_1))), arg_2.zzx, select(select(select(!arg_2.wzz, vec3<bool>(true, false, arg_2.x), arg_2.yxz), !arg_2.xyz, vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), arg_2.x, !arg_2.x)), arg_2.wxw, !(!arg_2.xzw)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<u32>) -> f32 {
    var var_0 = select(vec3<bool>(u_input.c != ~u_input.c, all(vec3<bool>(false, true, true)), any(func_4(903f, func_2(arg_0, arg_1.x), !vec4<bool>(arg_1.x, true, arg_0, false), Struct_1(18083u, vec4<f32>(-550f, -786f, 1591f, 560f), arg_2.x, vec2<u32>(83016u, 14131u), 0u)))), vec3<bool>(any(!arg_1), all(!(!vec3<bool>(arg_0, arg_0, arg_1.x))), all(vec3<bool>(true, true, arg_0))), select(func_4(145f, Struct_2(Struct_1(arg_2.x, vec4<f32>(506f, -382f, 814f, -417f), u_input.a, u_input.e, 31344u), u_input.c & -63073i, _wgslsmith_f_op_f32(abs(-1435f)), func_2(true, arg_0).d, _wgslsmith_f_op_f32(-821f - 286f)), vec4<bool>(!arg_0, -1i < u_input.c, true, !arg_1.x), func_2(any(vec3<bool>(false, arg_1.x, arg_1.x)), arg_0).d), !func_4(_wgslsmith_f_op_f32(ceil(872f)), func_2(false, false), select(vec4<bool>(arg_0, true, arg_1.x, true), vec4<bool>(false, arg_1.x, arg_0, false), vec4<bool>(true, false, arg_1.x, arg_1.x)), func_2(arg_0, false).a), any(vec2<bool>(arg_0, true))));
    var_0 = vec3<bool>(arg_0, false, true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f - _wgslsmith_f_op_f32(max(-296f, -842f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(635f, _wgslsmith_f_op_f32(trunc(1000f)))) * _wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-158f))))));
    let var_2 = func_4(_wgslsmith_f_op_f32(var_1.x - 1000f), func_2(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), vec4<bool>(all(select(!vec4<bool>(false, arg_0, false, var_0.x), vec4<bool>(arg_1.x, arg_1.x, true, var_0.x), select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(var_0.x, var_0.x, arg_1.x, arg_1.x), vec4<bool>(true, var_0.x, arg_1.x, arg_0)))), any(vec2<bool>(arg_0, !var_0.x)), var_0.x, true), Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, u_input.e.x, 42143u) ^ vec4<u32>(4294967295u, arg_2.x, 0u, u_input.b), min(vec4<u32>(u_input.d, arg_2.x, u_input.b, 1u), vec4<u32>(arg_2.x, arg_2.x, 97669u, u_input.d))), u_input.e.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-2079f, 657f), -772f))), _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.e.x, u_input.e.x), u_input.b), ~(~abs(arg_2.zz)), 1u)).x;
    let var_3 = func_2(true, 894f < var_1.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(u_input.e.x, 27920u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-487f, 2039f, 1000f, -1084f), vec4<f32>(1105f, -895f, 1000f, 1260f), false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-116f, -868f, 1242f, -1000f))), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(true, vec2<bool>(false, true), vec3<u32>(u_input.d, 40471u, u_input.b))), -1264f, _wgslsmith_div_f32(-905f, -237f), _wgslsmith_f_op_f32(round(577f))) + vec4<f32>(1165f, _wgslsmith_f_op_f32(-674f + 264f), _wgslsmith_f_op_f32(1038f + -888f), _wgslsmith_f_op_f32(select(-146f, -1238f, false)))))), _wgslsmith_mod_u32(0u, u_input.a ^ u_input.d), func_2(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), true).a.d >> (abs(_wgslsmith_clamp_vec2_u32(u_input.e, func_2(false, false).a.d, vec2<u32>(u_input.b, 4294967295u))) % vec2<u32>(32u)), 0u);
    let var_1 = -3758i;
    let var_2 = !(_wgslsmith_dot_vec2_u32(vec2<u32>(15916u, 0u), ~vec2<u32>(var_0.e, var_0.a)) == var_0.c) || true;
    let var_3 = Struct_2(Struct_1(var_0.a, var_0.b, ~(~(~0u)), firstTrailingBit(vec2<u32>(var_0.e, func_2(false, var_2).d.c)), u_input.a), var_1, _wgslsmith_f_op_f32(f32(-1f) * -332f), func_2(false, any(!vec4<bool>(true, var_2, true, true)) != var_2).d, _wgslsmith_f_op_f32(f32(-1f) * -1211f));
    let var_4 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(9103u, 80234u, var_0.d.x, 1u), firstTrailingBit(vec4<u32>(u_input.e.x, 0u, var_0.e, 1u))) | vec4<u32>(~u_input.b, _wgslsmith_mult_u32(var_3.d.a, var_0.e), 28647u, func_3(-vec4<i32>(u_input.c, u_input.c, u_input.c, 0i), -860f)), abs(~firstTrailingBit(~vec4<u32>(var_3.d.e, 39962u, 6196u, 37867u))));
    var var_5 = -1929f;
    var var_6 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -174f), -894f, var_2)) * _wgslsmith_f_op_f32(step(var_3.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-737f)), _wgslsmith_f_op_f32(-var_0.b.x))))), var_0.b.x);
    var var_7 = func_2(true, var_2).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_7.b.x, -415f), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.c, 45904i, 14751i, u_input.c) | vec4<i32>(var_1, var_3.b, var_1, -2147483647i)), vec4<i32>(-_wgslsmith_div_i32(1i, -29508i), min(-32709i, -var_1), var_3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, -2147483647i), -vec2<i32>(2147483647i, u_input.c))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, -4624i, -14002i), vec4<i32>(-67322i, u_input.c, 540i, -79631i)) | ~vec4<i32>(-1i, u_input.c, u_input.c, -1i), -vec4<i32>(-53728i, u_input.c, u_input.c, -66424i), true)), _wgslsmith_clamp_vec2_i32(-reverseBits(vec2<i32>(var_1, u_input.c)), vec2<i32>(-16578i, ~(-20233i)), _wgslsmith_div_vec2_i32(~vec2<i32>(9992i, -2147483647i), countOneBits(vec2<i32>(1i, 18869i)))));
}

