struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    var var_0 = arg_0.b;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(ceil(401f));
    let var_3 = 43007u;
    let var_4 = arg_0;
    return 4291i;
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = Struct_1(1u, -24018i, ~abs(~vec4<u32>(4294967295u, u_input.c, u_input.d, 1u) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.d), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), arg_1 || true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-158f, -118f)) + -435f), 1443f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1367f, 286f))), -1169f)));
    let var_1 = abs(~u_input.d);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.e.x, -636f)))))));
    var var_3 = var_0.e.xyw;
    let var_4 = -u_input.e;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(937f, -180f) - _wgslsmith_f_op_f32(f32(-1f) * -220f));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(1037f, 307f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-662f, -1084f))));
    let var_1 = Struct_1(_wgslsmith_sub_u32(~(~1u), 1u), 2147483647i, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), vec4<u32>(13216u, u_input.c, arg_0, u_input.a.x)) | vec4<u32>(abs(43677u), 19371u, 108276u | u_input.a.x, u_input.c ^ u_input.c), firstTrailingBit(vec4<u32>(arg_0, arg_0, arg_0 << (86867u % 32u), _wgslsmith_mod_u32(8471u, 11098u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1270f))))) != _wgslsmith_f_op_f32(func_3(func_2(Struct_2(Struct_1(0u, 35660i, vec4<u32>(4294967295u, arg_0, 0u, 4294967295u), false, vec4<f32>(137f, -494f, 659f, var_0.x)), Struct_1(u_input.d, u_input.b.x, vec4<u32>(arg_0, arg_0, arg_0, 30388u), true, vec4<f32>(-1224f, 312f, var_0.x, 1016f)), vec2<u32>(arg_0, 0u), u_input.a, vec3<f32>(-1000f, -480f, var_0.x)), Struct_1(arg_0, 1i, vec4<u32>(1u, u_input.c, arg_0, u_input.d), false, vec4<f32>(249f, var_0.x, var_0.x, -1385f)), Struct_2(Struct_1(0u, 1i, vec4<u32>(32460u, 4294967295u, 21467u, u_input.d), false, vec4<f32>(-1088f, var_0.x, 1021f, -127f)), Struct_1(arg_0, u_input.b.x, vec4<u32>(49014u, 1u, arg_0, arg_0), false, vec4<f32>(-565f, var_0.x, 300f, -888f)), u_input.a.yz, vec3<u32>(arg_0, 35611u, 4294967295u), vec3<f32>(-238f, var_0.x, var_0.x)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, 738f, var_0.x))))));
    var_0 = vec2<f32>(-503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(525f, 351f)) + _wgslsmith_f_op_f32(step(1710f, 357f)))))));
    let var_2 = var_1;
    var var_3 = !vec2<bool>(var_2.d, false);
    return var_3.x;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1368f - arg_3.x))), _wgslsmith_f_op_f32(ceil(-152f))) + arg_3.yy);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~(~arg_2.b.c), vec4<u32>(u_input.c >> (u_input.c % 32u), arg_2.b.c.x, _wgslsmith_div_u32(arg_2.a.a & u_input.a.x, arg_2.d.x), 4294967295u)), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.e.x, arg_2.b.b), ~vec3<i32>(u_input.b.x, u_input.e.x, -56906i)), ~(~vec3<i32>(u_input.b.x, u_input.e.x, arg_2.b.b))), ~_wgslsmith_sub_vec4_u32(arg_2.a.c, _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.d.x, 5754u, arg_2.a.a, u_input.c), _wgslsmith_clamp_vec4_u32(arg_2.a.c, arg_2.a.c, arg_2.b.c))), !(!((arg_2.b.b < 44067i) || !arg_2.a.d)), arg_2.b.e);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.e.yww)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(arg_2.e)), _wgslsmith_f_op_vec3_f32(var_1.e.wwx + arg_2.b.e.wzx)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(443f, 1584f)) - 552f) * _wgslsmith_f_op_f32(ceil(arg_2.b.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x - var_1.e.x), _wgslsmith_f_op_f32(step(-325f, arg_2.b.e.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1310f + -401f) - _wgslsmith_f_op_f32(-741f + arg_2.a.e.x)))));
    var var_3 = all(arg_1.xy);
    var var_4 = arg_2.b;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), arg_2.e.x) * vec4<f32>(1518f, _wgslsmith_f_op_f32(round(-287f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_3.x, 755f, arg_1.x)))), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zy;
    let var_1 = ~104559u;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_i32(1397i, u_input.b.x, ~(-25053i >> (u_input.d % 32u))) <= u_input.b.x, select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(func_1(~51298u), !select(true, false, false), any(vec3<bool>(false, true, true))), !any(vec3<bool>(true, true, true))), Struct_2(Struct_1(_wgslsmith_add_u32(u_input.d, u_input.a.x), 1i, ~vec4<u32>(u_input.c, var_1, 9110u, var_1) << (~vec4<u32>(var_1, var_0.x, 1u, 21709u) % vec4<u32>(32u)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1051f, 1055f, -2583f, -1023f), vec4<f32>(-1198f, -1000f, 1497f, -639f)))), Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 4294967295u, 0u, var_1), vec4<u32>(u_input.c, 4294967295u, 1u, var_0.x), false), vec4<u32>(var_0.x, var_0.x, 80526u, var_0.x) >> (vec4<u32>(u_input.a.x, var_1, var_1, var_0.x) % vec4<u32>(32u))), abs(-2056i), select(~vec4<u32>(var_1, var_0.x, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1, var_1, 9168u, u_input.d), vec4<u32>(1u, 0u, var_0.x, u_input.d)), vec4<bool>(true, true, true, false)), select(false, true, false) | true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(123f, 166f, -492f, 778f), vec4<f32>(941f, -287f, -198f, 351f), vec4<bool>(true, true, true, true)))), u_input.a.yy, ~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.d, u_input.c, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-277f, 967f) - -467f), _wgslsmith_f_op_f32(round(456f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f * -373f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-775f, -1093f, -2166f), vec3<f32>(1041f, -393f, -890f), true)), vec3<f32>(1818f, -302f, -1136f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, -1463f, -1042f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2842f, 710f, 2345f)))))));
    let var_3 = u_input.b.xz;
    var_0 = vec2<u32>(u_input.d, abs(~0u));
    var var_4 = Struct_1(_wgslsmith_add_u32(~(~_wgslsmith_div_u32(var_1, var_1)), firstLeadingBit(_wgslsmith_div_u32(abs(0u), ~var_0.x))), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(15614i, 1i), u_input.e.x), -2147483647i, i32(-1i) * -u_input.e.x), ~(~(~vec4<u32>(19241u, var_0.x, var_0.x, 4294967295u))), any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))) | true, _wgslsmith_f_op_vec4_f32(var_2 - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -263f, 2475f, var_2.x) + vec4<f32>(215f, -1420f, var_2.x, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, 1000f, var_2.x, var_2.x))))));
    let var_5 = var_4.e;
    var var_6 = Struct_2(Struct_1(u_input.d & 12648u, abs(~abs(var_3.x)), var_4.c, all(select(select(vec2<bool>(var_4.d, false), vec2<bool>(var_4.d, var_4.d), vec2<bool>(false, true)), vec2<bool>(false, var_4.d), vec2<bool>(false, false))), var_2), Struct_1(var_0.x & ~(~var_1), firstLeadingBit(_wgslsmith_mult_i32(~(-1i), select(-2147483647i, var_3.x, true))), ~vec4<u32>(~0u, 90932u, var_0.x, var_4.a), var_4.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-633f, _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(-var_4.e.x), var_2.x))), u_input.a.yy, ~min(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 0u, 9901u), u_input.a), u_input.a), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-1221f - _wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(trunc(var_4.e.x)))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x - 487f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_4.b & -u_input.b.x), select(-firstTrailingBit(-vec4<i32>(-2147483647i, u_input.b.x, var_6.a.b, 0i)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-14965i, -2147483647i), vec2<i32>(var_3.x, 2147483647i)), -1551i), var_3.x, -_wgslsmith_div_i32(u_input.b.x, u_input.b.x), firstTrailingBit(1i)), !select(var_6.a.d && false, var_6.b.e.x >= var_5.x, var_4.d)), var_3.x);
}

