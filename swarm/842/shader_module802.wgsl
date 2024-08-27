struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(ceil(-230f))), !arg_0.d, vec3<i32>(9235i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_0.c.x, arg_0.c.x), -vec4<i32>(28952i, u_input.d.x, arg_0.c.x, u_input.c.x)), ~1i), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, arg_0.e.x, arg_0.e.x, arg_0.e.x), vec4<bool>(arg_0.e.x, false, arg_0.b, arg_0.d))), !arg_0.e), -countOneBits(~min(u_input.d.x, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f * -1586f)));
    var_0 = Struct_3(Struct_1(-1060f, any(!(!vec4<bool>(true, arg_0.e.x, var_0.a.d, false))), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(arg_0.c.zz, vec2<i32>(u_input.a.x, var_0.a.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.c.x), vec2<i32>(28957i, u_input.c.x))) << ((vec3<u32>(u_input.b, u_input.b, 4294967295u) ^ min(vec3<u32>(u_input.b, 36791u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 0u))) % vec3<u32>(32u)), false, !select(!vec3<bool>(false, false, arg_0.e.x), var_0.a.e, vec3<bool>(false, false, true))), _wgslsmith_mult_i32(0i, ~arg_0.c.x) ^ -37260i, -517f);
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1473f * _wgslsmith_f_op_f32(f32(-1f) * -914f))), true && (_wgslsmith_clamp_i32(arg_0.c.x, 64840i, arg_0.c.x) != _wgslsmith_add_i32(-2147483647i, u_input.c.x)), var_0.a.c, !var_0.a.e.x, !select(!vec3<bool>(true, var_0.a.b, true), arg_0.e, vec3<bool>(arg_0.d, true, arg_0.e.x))), var_0.b >> (~select(u_input.b, ~u_input.b, var_0.a.b) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, -927f), var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -804f)), all(select(arg_0.e.xx, var_0.a.e.zz, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.a, 452f)) * arg_0.a)));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1829f * _wgslsmith_f_op_f32(-1504f + 680f)), -1339f < var_0.a.a, vec3<i32>(42054i, u_input.a.x, countOneBits(2147483647i)), all(!select(vec3<bool>(true, false, var_0.a.e.x), var_0.a.e, var_0.a.e)), var_0.a.e), arg_0.c.x, var_0.c);
    var_0 = Struct_3(var_0.a, ~(arg_0.c.x ^ max(u_input.e, -57948i)), 1112f);
    return arg_0.e.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_3, !(_wgslsmith_f_op_f32(1198f + -928f) >= arg_3), vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(firstLeadingBit(u_input.e), 30131i, u_input.c.x), ~_wgslsmith_div_i32(u_input.c.x, 13736i)), !(!func_3(Struct_1(arg_2.x, false, vec3<i32>(16529i, u_input.e, 37696i), true, vec3<bool>(false, false, true)))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    let var_1 = Struct_2(var_0.a);
    return 0u >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x << (0u % 32u), abs(arg_0.x), 4294967295u, 4294967295u), ~arg_0 | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 93954u, 1u, arg_1.x), vec4<u32>(60509u, 0u, 24570u, 20413u))), _wgslsmith_clamp_u32(9543u, 56734u, 30347u)) % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = min(~(~vec4<u32>(4294967295u, _wgslsmith_mod_u32(83705u, 3039u), max(u_input.b, 27402u), arg_0.x)), _wgslsmith_mult_vec4_u32(select(arg_0, abs(firstLeadingBit(arg_0)), !select(vec4<bool>(arg_2.a.d, true, arg_2.a.b, arg_2.a.b), vec4<bool>(arg_2.a.e.x, arg_2.a.b, arg_2.a.e.x, arg_2.a.d), false)), arg_0));
    var var_1 = -122f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.c, arg_2.c, arg_1), vec3<f32>(arg_2.c, arg_1, 1000f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.c, arg_1, arg_2.a.a)))))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(766f, arg_2.c, -819f), vec3<f32>(-655f, -1754f, 912f))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1212f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a))), 185f, arg_2.a.e.x)), !any(!select(arg_2.a.e.yz, arg_2.a.e.yz, vec2<bool>(arg_2.a.e.x, arg_2.a.d))), vec3<i32>(~min(arg_2.a.c.x ^ u_input.e, -34945i), 0i, 39405i), true, !vec3<bool>(false, arg_2.a.e.x, !(arg_2.a.a > arg_2.a.a)));
    let var_4 = arg_2;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(var_2.x - var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1906f, -1826f));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(994f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-857f, 2150f, false)), -449f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(func_2(vec4<u32>(1562u, 4294967295u, 35247u, u_input.b), vec3<u32>(u_input.b, u_input.b, 7978u), var_0, var_0.x), _wgslsmith_mod_u32(1u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.b, 35388u)), reverseBits(u_input.b)) | vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b, 1u, u_input.b), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1010f)))), Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(var_0.x)), true, u_input.c, any(vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1085f, -1300f, var_0.x, -611f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(855f, -345f, -442f, 127f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(728f, var_0.x, -169f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -1108f))))));
    let var_2 = vec2<bool>(true == all(vec4<bool>(all(vec3<bool>(true, true, true)), var_0.x >= var_1.x, true, func_3(Struct_1(1000f, true, u_input.c, false, vec3<bool>(true, true, true))))), false);
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 480f))), select(true, true, select(0i > u_input.d.x, !var_2.x, u_input.a.x <= 1i)), vec3<i32>(abs(-1287i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2301i, u_input.e, 1i) ^ vec4<i32>(u_input.c.x, 11345i, -1i, 2147483647i), -vec4<i32>(-2147483647i, -1i, u_input.a.x, -2147483647i)), -firstTrailingBit(u_input.a.x)), false, select(vec3<bool>(!var_2.x, all(vec3<bool>(true, var_2.x, false)), true | var_2.x), vec3<bool>(true, true, select(false, true, var_2.x)), true & var_2.x)), _wgslsmith_sub_i32(min(_wgslsmith_add_i32(reverseBits(-12013i), _wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.a)), 2147483647i), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) - _wgslsmith_f_op_f32(round(var_0.x)))))));
    let var_4 = var_3.a.b;
    return Struct_2(Struct_1(var_1.x, all(!var_3.a.e.xz), ~vec3<i32>(1i, ~var_3.a.c.x, u_input.d.x), var_2.x, vec3<bool>(true, var_2.x, !(!var_3.a.d))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(-1i), true, func_1());
    var var_1 = func_1();
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 0u)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 31176u), abs(vec2<u32>(1u, u_input.b)), vec2<u32>(u_input.b, 38606u)), vec2<u32>(~u_input.b, u_input.b) << (reverseBits(~vec2<u32>(79631u, u_input.b)) % vec2<u32>(32u))), firstTrailingBit(~(~u_input.b)) | (38560u ^ _wgslsmith_add_u32(u_input.b, u_input.b)), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 23674u, 71707u)), firstLeadingBit(vec3<u32>(71283u, 4294967295u, 110491u) & vec3<u32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_mult_u32(func_2((vec4<u32>(u_input.b, u_input.b, u_input.b, 65944u) ^ vec4<u32>(8490u, 0u, 1u, 64223u)) & select(vec4<u32>(u_input.b, 49749u, u_input.b, u_input.b), vec4<u32>(u_input.b, 15597u, u_input.b, u_input.b), var_0.b), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(31729u, u_input.b, 4294967295u)), countOneBits(vec3<u32>(u_input.b, 4294967295u, 2785u))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1320f, -898f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(806f, -457f)))), _wgslsmith_f_op_f32(step(-841f, 491f))), ~(u_input.b << (u_input.b % 32u)) << (_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(1u, u_input.b)) % 32u)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(u_input.b, u_input.b, 0u, var_2.x), var_1.a.a, Struct_3(Struct_1(-1994f, var_1.a.b, var_1.a.c, var_1.a.d, var_1.a.e), -2147483647i, -172f))).x), true, ~(-var_0.c) ^ reverseBits(vec3<i32>(var_0.c.x, 1i, 22310i)), -500f < var_1.a.a, func_1().a.e));
    let var_4 = func_1().a.a;
    var_2 = vec4<u32>(1u, 0u, ~(~_wgslsmith_sub_u32(firstLeadingBit(var_2.x), var_2.x)), ~(~(~_wgslsmith_mult_u32(28052u, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 12046u, 28379u, var_2.x), vec4<u32>(46792u, var_2.x, 54949u, var_2.x)) >> (~vec4<u32>(u_input.b, 31612u, 38777u, 11246u) % vec4<u32>(32u)), select(_wgslsmith_sub_vec3_u32(var_2.wzx, vec3<u32>(u_input.b, u_input.b, var_2.x)), min(var_2.xww, var_2.xyw), vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_div_f32(var_3.a.a, 293f), _wgslsmith_f_op_f32(sign(-662f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1201f * var_4))), 0u), vec4<i32>(~countOneBits(_wgslsmith_mult_i32(2086i, 1i)), -2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~var_1.a.c.yx, vec2<i32>(var_3.a.c.x, -77692i)), var_0.c.x), 22961i));
}

