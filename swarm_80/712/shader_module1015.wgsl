struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec3<i32>(arg_2.a.a.x, reverseBits(~_wgslsmith_div_i32(arg_2.e.a.x, -4437i)), _wgslsmith_div_i32(arg_2.e.a.x, firstLeadingBit(-2147483647i)));
    var var_1 = Struct_3(abs(~arg_3.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(sign(arg_2.c.x)))) * arg_1.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(-arg_1.c.x), arg_2.c.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(arg_2.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(abs(-1854f)))), 1037f), true));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(845f, _wgslsmith_f_op_f32(-834f + 1489f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * _wgslsmith_f_op_f32(arg_2.c.x - 2734f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(-var_1.b.x)) - -1596f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -1347f, var_1.c.x, -317f) + vec4<f32>(-540f, -356f, -1740f, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, 816f, arg_2.c.x, var_2.x) + vec4<f32>(-135f, arg_1.c.x, var_1.b.x, arg_1.c.x))))));
    var_0 = vec3<i32>(91750i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2.e.a.x, -2147483647i, -1i), vec3<i32>(arg_2.e.a.x, arg_1.e.a.x, -1610i) & vec3<i32>(1i, arg_2.e.a.x, 90499i)), ~vec3<i32>(2147483647i, u_input.a, -3400i)), ~min(arg_3.a.x, u_input.a)), _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(select(vec3<i32>(var_0.x, arg_3.a.x, 0i), vec3<i32>(-1270i, arg_3.a.x, arg_2.e.a.x), vec3<bool>(false, arg_1.b.c.x, arg_3.d.x)), vec3<i32>(-38912i, var_0.x, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(abs(arg_3.a.x), arg_3.a.x, -31541i), ~vec3<i32>(var_0.x, 0i, 2147483647i) | vec3<i32>(arg_3.a.x, -2147483647i, -71142i))));
    return select(arg_3.c, !arg_2.b.c, !select(arg_3.c, !(!arg_2.a.d.yz), arg_2.b.d.zy));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(-_wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(14650i, u_input.a))), ~(~0u), !select(func_3(Struct_4(u_input.c.x, vec4<u32>(987u, u_input.c.x, 0u, arg_0)), Struct_2(Struct_1(vec2<i32>(u_input.a, 1i), 1u, vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(24039i, u_input.a), arg_0, vec2<bool>(true, true), vec4<bool>(true, false, false, false)), vec2<f32>(-395f, -815f), 4294967295u, Struct_1(vec2<i32>(-62770i, u_input.a), 24785u, vec2<bool>(false, true), vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), u_input.d, vec2<bool>(true, true), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(-2147483647i, u_input.a), arg_0, vec2<bool>(false, true), vec4<bool>(true, false, false, true)), vec2<f32>(624f, -1863f), arg_0, Struct_1(vec2<i32>(2147483647i, 0i), 59836u, vec2<bool>(true, false), vec4<bool>(true, true, false, true))), Struct_1(vec2<i32>(-2147483647i, u_input.a), arg_0, vec2<bool>(false, true), vec4<bool>(false, true, true, false))), vec2<bool>(true, true), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))), Struct_1(vec2<i32>(firstTrailingBit(-20670i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i)))), ~abs(_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.zz)), vec2<bool>(1u == ~arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1139f) > _wgslsmith_f_op_f32(floor(1125f))), vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(878f, 191f))), vec2<f32>(631f, -527f), all(vec2<bool>(false, true)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-917f)) * -1661f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(255f)) * -721f))), ~countOneBits(arg_0), Struct_1(vec2<i32>(~max(2147483647i, 3868i), ~(-4403i >> (arg_0 % 32u))), 0u, select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), func_3(Struct_4(0u, u_input.c), Struct_2(Struct_1(vec2<i32>(-23039i, -38384i), u_input.b, vec2<bool>(false, false), vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(u_input.a, -1i), arg_0, vec2<bool>(false, true), vec4<bool>(false, false, true, false)), vec2<f32>(-623f, 1407f), arg_0, Struct_1(vec2<i32>(1i, u_input.a), arg_0, vec2<bool>(false, false), vec4<bool>(true, true, false, true))), Struct_2(Struct_1(vec2<i32>(22999i, -1i), 5910u, vec2<bool>(false, false), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(u_input.a, 0i), 1u, vec2<bool>(false, true), vec4<bool>(false, true, true, true)), vec2<f32>(1058f, 1138f), u_input.b, Struct_1(vec2<i32>(u_input.a, 0i), 18203u, vec2<bool>(false, true), vec4<bool>(true, true, true, true))), Struct_1(vec2<i32>(-2147483647i, u_input.a), 50709u, vec2<bool>(true, true), vec4<bool>(true, false, true, true))), func_3(Struct_4(u_input.d, u_input.c), Struct_2(Struct_1(vec2<i32>(2147483647i, u_input.a), 4294967295u, vec2<bool>(false, true), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(u_input.a, u_input.a), 1u, vec2<bool>(false, true), vec4<bool>(false, true, false, false)), vec2<f32>(-395f, -103f), 4294967295u, Struct_1(vec2<i32>(-34549i, u_input.a), 53189u, vec2<bool>(false, true), vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec2<i32>(1i, u_input.a), arg_0, vec2<bool>(true, false), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(u_input.a, u_input.a), arg_0, vec2<bool>(false, true), vec4<bool>(true, true, true, true)), vec2<f32>(-637f, -450f), 0u, Struct_1(vec2<i32>(u_input.a, u_input.a), 0u, vec2<bool>(false, false), vec4<bool>(true, true, false, false))), Struct_1(vec2<i32>(u_input.a, u_input.a), arg_0, vec2<bool>(true, false), vec4<bool>(false, true, false, true)))), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_4(~select(firstLeadingBit(u_input.c.x), 0u, all(var_0.a.d.yyz)), vec4<u32>(~_wgslsmith_mult_u32(arg_0, arg_0 ^ u_input.b), u_input.c.x, countOneBits(~23779u), max(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, arg_0)), var_0.e.b)));
    let var_2 = select(~var_1.b, ~var_1.b, !var_0.e.d.x);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(390f, _wgslsmith_div_f32(1167f, var_0.c.x))), -818f, var_0.c.x, var_0.c.x);
    let var_4 = var_1;
    return _wgslsmith_f_op_vec3_f32(-var_3.xzx);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<f32>(-592f, 1014f, -321f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 175f, -1627f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1188f, -1384f, -1142f), vec3<f32>(-415f, var_0.x, 1745f))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(-946f, 882f)), _wgslsmith_f_op_f32(trunc(var_0.x)))) * _wgslsmith_f_op_vec3_f32(func_2(~countOneBits(u_input.c.x)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -509f) - vec3<f32>(var_0.x, 213f, var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), -636f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1242f, 1003f) + vec3<f32>(885f, -367f, var_0.x))))), true)));
    let var_1 = u_input.b;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1224f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -396f), -1374f)), _wgslsmith_f_op_f32(f32(-1f) * -492f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1674f)), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x))))) + _wgslsmith_f_op_vec3_f32(func_2(~max(0u, _wgslsmith_mod_u32(32468u, 7557u)))));
    var var_2 = Struct_2(Struct_1(vec2<i32>(-(u_input.a >> (61674u % 32u)), u_input.a), u_input.b, select(vec2<bool>(true, u_input.d != var_1), vec2<bool>(true, true), true && all(vec3<bool>(false, false, false))), vec4<bool>(var_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, any(func_3(Struct_4(var_1, vec4<u32>(u_input.d, 4294967295u, var_1, 1u)), Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), 12543u, vec2<bool>(false, true), vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-21304i, 0i), 14485u, vec2<bool>(true, true), vec4<bool>(false, false, true, true)), var_0.xz, u_input.c.x, Struct_1(vec2<i32>(u_input.a, -7211i), u_input.b, vec2<bool>(true, true), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec2<i32>(-1i, u_input.a), var_1, vec2<bool>(true, true), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(u_input.a, u_input.a), 1u, vec2<bool>(true, true), vec4<bool>(true, true, false, true)), vec2<f32>(var_0.x, var_0.x), 4294967295u, Struct_1(vec2<i32>(2147483647i, -11427i), 0u, vec2<bool>(false, true), vec4<bool>(true, false, true, true))), Struct_1(vec2<i32>(u_input.a, u_input.a), 1u, vec2<bool>(true, true), vec4<bool>(false, false, true, false)))), select(26098u < var_1, false, true))), Struct_1(-firstLeadingBit(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.c.x, var_1) % vec2<u32>(32u))), var_1, func_3(Struct_4(1u ^ u_input.c.x, max(u_input.c, vec4<u32>(4294967295u, u_input.d, var_1, 0u))), Struct_2(Struct_1(vec2<i32>(u_input.a, -2147483647i), 17964u, vec2<bool>(false, true), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(0i, -25342i), var_1, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), var_0.yy, u_input.d, Struct_1(vec2<i32>(u_input.a, -900i), u_input.d, vec2<bool>(false, true), vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec2<i32>(14387i, -2147483647i), 0u, vec2<bool>(true, true), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(41287i, 2147483647i), 1u, vec2<bool>(true, true), vec4<bool>(false, false, false, true)), vec2<f32>(var_0.x, 429f), 16064u, Struct_1(vec2<i32>(u_input.a, 2147483647i), var_1, vec2<bool>(false, true), vec4<bool>(true, true, false, false))), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.a, u_input.a)), 74708u, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false))), var_0.yy, countOneBits(~var_1), Struct_1(countOneBits(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, u_input.a), reverseBits(vec2<i32>(u_input.a, 61659i)))), countOneBits(4294967295u), vec2<bool>(all(vec2<bool>(false, false)) | select(true, false, false), (u_input.a != 0i) == false), vec4<bool>(true, true, true, true)));
    return Struct_2(var_2.e, Struct_1(-var_2.e.a, abs(25718u), select(!func_3(Struct_4(u_input.b, u_input.c), Struct_2(Struct_1(var_2.a.a, 4294967295u, vec2<bool>(true, false), var_2.e.d), Struct_1(vec2<i32>(var_2.e.a.x, var_2.b.a.x), 62566u, vec2<bool>(var_2.e.c.x, true), vec4<bool>(false, var_2.e.c.x, var_2.e.d.x, false)), var_0.zy, var_1, Struct_1(vec2<i32>(-13809i, u_input.a), u_input.c.x, var_2.e.c, var_2.b.d)), Struct_2(Struct_1(var_2.a.a, u_input.b, var_2.b.d.yw, vec4<bool>(true, false, true, var_2.a.d.x)), Struct_1(vec2<i32>(-18154i, -1i), 27862u, var_2.a.c, vec4<bool>(var_2.a.d.x, false, var_2.b.c.x, false)), vec2<f32>(var_0.x, var_2.c.x), var_2.d, var_2.b), var_2.b), var_2.e.d.zx, vec2<bool>(false, var_2.e.d.x)), !var_2.b.d), var_0.xz, _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.c.x, var_2.a.b, 1u) | vec4<u32>(var_1, var_2.e.b, 15114u, 1u), vec4<u32>(var_1, 4294967295u, var_1, 5833u)) | var_2.b.b), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_2.b.a), 74986u, var_2.b.c, select(vec4<bool>(false, true, var_2.a.d.x && true, false), select(vec4<bool>(var_2.e.d.x, var_2.b.c.x, false, var_2.a.d.x), !var_2.e.d, var_2.a.c.x && var_2.b.d.x), var_2.a.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_vec3_u32(~max(arg_1, abs(u_input.c.yzz)), u_input.c.wzz, arg_1) << (vec3<u32>(4294967295u, 56558u, 42821u) % vec3<u32>(32u));
    var var_1 = u_input.c;
    var_1 = vec4<u32>(_wgslsmith_div_u32(u_input.d, _wgslsmith_add_u32(arg_0.e.b, var_1.x)), arg_3.a, ~reverseBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_1.x, var_0.x, 0u)), vec3<u32>(var_0.x, var_0.x, 1u))), arg_3.a);
    let var_2 = Struct_4(abs(var_0.x), select(~(abs(vec4<u32>(0u, 10000u, 30186u, u_input.b)) << (_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(arg_3.a, 17428u, arg_1.x, 4294967295u)) % vec4<u32>(32u))), firstTrailingBit(u_input.c), select(arg_0.b.d, select(vec4<bool>(arg_0.b.c.x, true, true, arg_0.b.c.x), select(arg_0.e.d, arg_0.a.d, arg_0.e.d.x), vec4<bool>(false, arg_0.b.c.x, arg_0.b.c.x, arg_0.b.d.x)), arg_0.a.c.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1058f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) + _wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_vec3_f32(func_2(48022u)).x)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), u_input.c.ywx, u_input.a, Struct_3(u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-736f - -116f), 406f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-855f, 1000f) + _wgslsmith_f_op_f32(-111f * -421f)), -694f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(-143f))))));
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c.wzz, vec3<u32>(~select(u_input.b, _wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(var_0.b.x, var_0.b.x)), true), 31336u, u_input.b));
    let var_2 = Struct_3(~var_0.a, vec2<f32>(374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-826f)) + _wgslsmith_f_op_f32(select(-840f, -1906f, true))) * _wgslsmith_f_op_f32(-1710f - _wgslsmith_f_op_f32(-575f + -910f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-func_1().c.x), 1058f, _wgslsmith_f_op_f32(floor(-1084f)))));
    let var_3 = var_0;
    var var_4 = !(!vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false)), select(true, any(vec4<bool>(true, false, false, true)), true), any(vec2<bool>(true, true)), true));
    var var_5 = var_2;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec4_u32(abs(~var_3.b), ~abs(var_0.b)), _wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(func_4(Struct_2(Struct_1(vec2<i32>(u_input.a, -1i), u_input.b, vec2<bool>(var_4.x, false), vec4<bool>(var_4.x, false, var_4.x, var_4.x)), Struct_1(vec2<i32>(-26024i, u_input.a), 14498u, var_4.zz, vec4<bool>(var_4.x, true, var_4.x, true)), vec2<f32>(555f, -1524f), var_2.a, Struct_1(vec2<i32>(50787i, 43027i), 0u, vec2<bool>(var_4.x, true), vec4<bool>(false, var_4.x, true, true))), u_input.c.yzz, u_input.a, Struct_3(u_input.c.x, var_6.b, var_2.c)).b.x, var_0.a), _wgslsmith_add_u32(~32295u, ~var_2.a)), any(select(!vec3<bool>(var_4.x, var_4.x, true), !var_4.xwy, select(var_4.ywx, var_4.yww, vec3<bool>(var_4.x, var_4.x, var_4.x))))), func_1().c.x);
}

