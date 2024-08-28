struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = !arg_0.b.c.x;
    var var_1 = Struct_2(u_input.b.x, arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c * arg_0.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(998f, _wgslsmith_f_op_f32(f32(-1f) * -1105f), arg_0.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-162f, _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(max(-337f, arg_0.c.x))), !(!arg_0.b.b.x))), -1909f)));
    var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = ((_wgslsmith_add_i32(abs(2147483647i), -16388i) | (-2147483647i << (~var_1.b.a.x % 32u))) | (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, var_1.a, var_1.a), firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 32878i, var_1.a))) & var_1.a)) & -1i;
    return any(vec2<bool>(!select(false, false, true) & select(false && var_1.b.c.x, false, var_1.b.b.x), max(1u, max(var_1.b.a.x, arg_0.b.a.x)) < _wgslsmith_mod_u32(~4294967295u, ~var_1.b.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec2<f32> {
    var var_0 = Struct_1(min(~countOneBits(_wgslsmith_mod_vec3_u32(u_input.c.wxx, vec3<u32>(u_input.c.x, arg_0.b.a.x, 4294967295u))), ~vec3<u32>(u_input.c.x, 4294967295u, 22522u) ^ vec3<u32>(~7508u, 1u, 1u)), arg_0.b.c.wxz, arg_0.b.c);
    var var_1 = Struct_1(~vec3<u32>(reverseBits(~var_0.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.a.x), var_0.a.xy), 69555u), !var_0.b, select(vec4<bool>(!var_0.c.x || all(vec4<bool>(arg_1, var_0.b.x, arg_0.b.b.x, var_0.b.x)), false, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a) == 49248i, true), !vec4<bool>(false, all(vec2<bool>(var_0.c.x, var_0.b.x)), var_0.b.x, arg_1 == arg_0.b.c.x), !(_wgslsmith_f_op_f32(select(arg_0.d, arg_0.c.x, true)) < _wgslsmith_f_op_f32(151f * arg_0.c.x))));
    let var_2 = arg_0.b;
    var var_3 = 1u;
    let var_4 = (_wgslsmith_f_op_f32(select(1454f, _wgslsmith_f_op_f32(442f - _wgslsmith_f_op_f32(trunc(1000f))), !var_0.b.x)) < _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -681f)))) && any(vec2<bool>(true, all(vec2<bool>(arg_0.b.c.x, false)) && !var_2.c.x));
    return vec2<f32>(-558f, arg_0.c.x);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(abs(_wgslsmith_div_i32(arg_3.x, 24719i)), Struct_1(countOneBits(min(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(16118u, 0u, 34402u))), vec3<bool>(true, !arg_2, all(vec3<bool>(arg_0, arg_2, true))), !select(vec4<bool>(arg_0, arg_2, arg_0, true), vec4<bool>(arg_2, arg_2, arg_0, arg_0), true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1237f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-263f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(802f * -2173f) - -2320f)), -1000f), func_3(Struct_2(arg_1, Struct_1(select(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 1u, 28840u), arg_0), vec3<bool>(arg_2, arg_2, false), vec4<bool>(arg_2, false, true, arg_2)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1176f, -357f, -158f), vec3<f32>(-673f, -107f, 423f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-991f, 373f, -254f) - vec3<f32>(1000f, 141f, 594f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-925f, -1847f))) * 597f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(floor(-1791f))))))));
    var_1 = var_0.x;
    var var_2 = Struct_1(u_input.c.wxw, vec3<bool>(false, arg_0, true), select(select(!select(vec4<bool>(arg_2, arg_0, arg_0, true), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(false, arg_2, true, false)), select(select(vec4<bool>(arg_2, arg_0, true, arg_0), vec4<bool>(false, arg_2, arg_0, arg_0), true), vec4<bool>(true, arg_2, true, arg_0), true), !arg_2 && func_3(Struct_2(arg_1, Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<bool>(false, false, true), vec4<bool>(arg_2, true, false, false)), vec3<f32>(278f, var_0.x, 1710f), var_0.x))), !select(vec4<bool>(arg_0, arg_2, arg_0, arg_2), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(true, arg_2, arg_0, true), vec4<bool>(false, arg_0, false, false)), !vec4<bool>(arg_2, false, true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, arg_2), vec4<bool>(arg_0, true, false, false), arg_0), !vec4<bool>(true, arg_0, arg_2, false)), vec4<bool>(true, func_3(Struct_2(-1i, Struct_1(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<bool>(false, false, true), vec4<bool>(arg_2, arg_0, true, arg_2)), vec3<f32>(var_0.x, var_0.x, var_0.x), var_0.x)), true, true), any(select(vec2<bool>(true, arg_2), vec2<bool>(false, true), vec2<bool>(arg_2, arg_0))))));
    let var_3 = countOneBits(_wgslsmith_mult_vec3_u32(select(var_2.a, reverseBits(~u_input.c.zyx), _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(round(-253f))), abs(vec3<u32>(16027u, 0u, u_input.c.x & var_2.a.x))));
    return _wgslsmith_f_op_f32(var_0.x + -307f);
}

fn func_5(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(min(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.a.zx, vec2<i32>(u_input.a.x, 10181i), ~vec2<i32>(-1i, u_input.b.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstTrailingBit(1i), ~(-1i)), ~(-29926i))), Struct_1(vec3<u32>(firstTrailingBit(~0u), ~_wgslsmith_add_u32(44288u, u_input.c.x), ~22495u), vec3<bool>(!(u_input.a.x >= -1i), false, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, arg_0.x, -1018f))), arg_0.x);
    let var_1 = 1u;
    var_0 = Struct_2(var_0.a, var_0.b, var_0.c, var_0.d);
    var_0 = Struct_2(~(~(var_0.a << (var_1 % 32u))), Struct_1(~max(u_input.c.yyy & u_input.c.xwx, countOneBits(vec3<u32>(0u, var_0.b.a.x, 1u))), vec3<bool>(false, true, !all(vec3<bool>(var_0.b.c.x, var_0.b.b.x, true))), !vec4<bool>(true, !var_0.b.c.x, true, true)), vec3<f32>(arg_0.x, var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -673f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))) - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -688f))));
    var_0 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.a.wyy, vec3<i32>(var_0.a, _wgslsmith_dot_vec3_i32(u_input.a.xxy, vec3<i32>(2147483647i, u_input.a.x, 0i)), firstLeadingBit(max(var_0.a, var_0.a)))), var_0.b, arg_0.wyz, _wgslsmith_f_op_f32(-arg_0.x));
    return Struct_2(-(select(-var_0.a, -var_0.a, any(var_0.b.c.yw)) ^ ~_wgslsmith_add_i32(var_0.a, var_0.a)), Struct_1(vec3<u32>(~(~0u), ~20980u, 1u), !vec3<bool>(select(false, false, false), all(var_0.b.c), var_0.b.c.x != false), vec4<bool>(!any(vec3<bool>(var_0.b.c.x, var_0.b.b.x, true)), var_0.b.c.x, var_0.b.c.x, false)), var_0.c, var_0.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0.x, -29160i, arg_2.b.c.x, vec2<i32>(u_input.a.x, u_input.b.x))), _wgslsmith_f_op_f32(max(arg_3, arg_2.d)), _wgslsmith_f_op_f32(trunc(arg_3)), 676f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -825f, arg_3, 604f))))));
    var var_1 = 30425i;
    var var_2 = true;
    let var_3 = arg_2;
    let var_4 = ~select(arg_1.x, ~79106u, arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1489f, arg_2.d))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = vec3<u32>(22291u, 30621u, max(u_input.c.x, u_input.c.x));
    var var_1 = ~(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_3, ~arg_1.x, ~(-3328i)), vec3<i32>(_wgslsmith_clamp_i32(27175i, 0i, 2147483647i), func_5(vec4<f32>(arg_2.x, -841f, -381f, arg_2.x)).a, -u_input.b.x)));
    var var_2 = 1000f;
    var_1 = -select(u_input.a.xyx, abs(-vec3<i32>(arg_3, 50303i, -1i)) >> (~u_input.c.xxz % vec3<u32>(32u)), select(!func_5(vec4<f32>(arg_0.x, 841f, arg_0.x, 242f)).b.b, select(vec3<bool>(true, true, true), func_5(arg_2).b.b, vec3<bool>(true, true, true)), false));
    var var_3 = all(func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(872f, arg_0.x, 1662f, arg_0.x) * vec4<f32>(arg_0.x, -1000f, -126f, arg_2.x))))).b.c) || true;
    return func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1430f, arg_2.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, arg_2.x, arg_0.x, arg_0.x), vec4<f32>(368f, arg_2.x, 374f, arg_2.x)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1719f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(max(1000f, 580f)), 1302f), arg_2))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f), 2067f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1583f) * -163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true), vec4<u32>(u_input.c.x, u_input.c.x, 26321u, 4992u), Struct_2(u_input.a.x, Struct_1(vec3<u32>(84794u, u_input.c.x, u_input.c.x), vec3<bool>(false, true, true), vec4<bool>(false, false, true, false)), vec3<f32>(331f, -1000f, 548f), 884f), -219f))))), select(u_input.a.xy, -(~_wgslsmith_add_vec2_i32(vec2<i32>(-15313i, -1i), vec2<i32>(u_input.a.x, -42345i))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, -1119f, 132f, -1047f)))).b.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(412f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1735f, 1611f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-348f - 519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f * 201f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, ~4649i) ^ u_input.a.wzw, select(~(u_input.a.zwz ^ u_input.a.zwz), vec3<i32>(24672i, 0i, u_input.b.x | u_input.a.x), vec3<bool>(false, true, true))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1142f))));
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(max(~vec2<i32>(u_input.a.x, -2147483647i), u_input.a.yw), -abs(-vec2<i32>(u_input.a.x, u_input.b.x))), u_input.b.x, -16848i);
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_i32(i32(-1i) * -u_input.a.x, i32(-1i) * -1i, ~u_input.b.x & (u_input.b.x << (var_0.a.x % 32u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(u_input.b.x, Struct_1(vec3<u32>(24598u, var_0.a.x, var_0.a.x), vec3<bool>(var_1.c.x, var_1.c.x, false), var_0.c), vec3<f32>(var_2, var_2, 1000f), -336f), true)).x, -244f, var_2)))), u_input.b.x);
}

