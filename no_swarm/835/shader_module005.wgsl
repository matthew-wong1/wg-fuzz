struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = ~abs(~(~u_input.d));
    var_0 = min(~u_input.c.x, countOneBits(u_input.c.x));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_3.yy, arg_3.xy), arg_3.x), ~_wgslsmith_div_vec2_i32(~arg_3.yy, abs(arg_3.yy))), 2147483647i);
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -375f) + vec2<f32>(arg_1.x, -957f)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true)), vec2<bool>(true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))), vec4<bool>(!any(vec4<bool>(false, false, false, true)), true, (u_input.a == 0i) | (arg_1.x == 262f), true), u_input.c.x, countOneBits(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d, u_input.d)), u_input.c.yx ^ u_input.b.zx))));
    var var_3 = Struct_5(_wgslsmith_mod_u32(u_input.c.x, 57391u) ^ ~(~_wgslsmith_div_u32(1u, u_input.d)), Struct_2(-253f, var_2.a.c.x, var_2.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(368f, arg_1.x), vec2<f32>(var_2.a.a.x, arg_1.x), var_2.a.b))), !vec2<bool>(var_2.a.c.x, var_2.a.c.x), select(!vec4<bool>(false, var_2.a.c.x, true, var_2.a.b.x), !vec4<bool>(var_2.a.b.x, true, true, false), var_2.a.c), 4294967295u, ~_wgslsmith_div_u32(u_input.b.x, 16233u)), var_2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), arg_0.a, var_2.a.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(383f, _wgslsmith_div_f32(arg_1.x, arg_0.a), _wgslsmith_f_op_f32(-arg_1.x), 851f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1055f, arg_0.a, var_2.a.a.x, 107f), vec4<f32>(-1000f, arg_0.a, 315f, -212f)))))), var_2, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(390f, -852f)))), !vec2<bool>(any(var_2.a.c.yxx), var_2.a.c.x), vec4<bool>(-2110f < arg_1.x, var_2.a.c.x, false, false), _wgslsmith_sub_u32(0u, abs(u_input.b.x)) ^ ~var_2.a.d, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 35973u, 100124u, var_2.a.e), select(vec4<u32>(var_2.a.d, u_input.d, 115336u, var_2.a.e), vec4<u32>(u_input.b.x, 1u, 24365u, var_2.a.d), true))));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-557f - -279f), false, arg_2.e, Struct_1(vec2<f32>(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -305f)), arg_2.c.b, !(!(!vec4<bool>(arg_2.d.c.x, false, arg_1, true))), 0u, select(_wgslsmith_clamp_u32(1u, firstLeadingBit(4294967295u), firstLeadingBit(u_input.d)), 4294967295u, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.a * vec2<f32>(-412f, arg_3)))), select(!arg_2.c.b, func_3(Struct_4(arg_3), _wgslsmith_f_op_vec2_f32(arg_2.e.a + arg_2.d.a), Struct_4(-1976f), vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), !(!arg_2.e.c.x)), vec4<bool>(arg_2.d.c.x, 867u <= ~u_input.b.x, !func_3(Struct_4(327f), arg_2.e.a, Struct_4(-1274f), vec3<i32>(11960i, arg_0.x, -1i)).x, any(select(arg_2.c.b, arg_2.e.b, arg_1))), arg_2.c.e, arg_2.e.d));
    let var_1 = u_input.b;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -278f), 667f)) * vec2<f32>(-1847f, _wgslsmith_f_op_f32(floor(arg_2.d.a.x)))), vec2<bool>(arg_2.b, var_0.c.b.x), !vec4<bool>(all(var_0.c.c.xyy), true, true, true), min(_wgslsmith_div_u32(_wgslsmith_sub_u32(~var_1.x, _wgslsmith_div_u32(var_1.x, 66745u)), arg_2.d.e), _wgslsmith_sub_u32(~27180u, ~arg_2.d.d)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(vec2<u32>(u_input.c.x, 4294967295u) & vec2<u32>(var_0.e.e, 8854u)), _wgslsmith_sub_vec2_u32(u_input.b.yx, u_input.c.yx)), countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, var_1.x), ~u_input.c.yy))));
    let var_3 = -238f;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.a.x, -1479f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_3)))))));
    return true;
}

fn func_1() -> Struct_5 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) * _wgslsmith_f_op_f32(ceil(-350f))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1642f))), _wgslsmith_f_op_f32(floor(-1622f)));
    var var_1 = u_input.a;
    let var_2 = !(!func_2(-vec2<i32>(u_input.a, u_input.a), true, Struct_2(-1874f, false, Struct_1(var_0.yy, vec2<bool>(false, false), vec4<bool>(true, true, true, false), u_input.c.x, u_input.b.x), Struct_1(vec2<f32>(var_0.x, var_0.x), vec2<bool>(false, true), vec4<bool>(true, false, true, true), 3289u, u_input.c.x), Struct_1(vec2<f32>(-1020f, -284f), vec2<bool>(true, true), vec4<bool>(false, false, false, true), u_input.c.x, u_input.c.x)), 1358f) && false);
    var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~0i, -select(select(-30504i, -25092i, true), firstLeadingBit(-1i), true)), u_input.a, -u_input.a);
    var var_3 = !vec3<bool>(var_2, var_2, var_0.x <= var_0.x);
    return Struct_5(0u | (_wgslsmith_dot_vec3_u32(u_input.c, u_input.b) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(18630u, u_input.b.x, u_input.c.x), select(vec3<u32>(0u, 1u, u_input.b.x), vec3<u32>(u_input.c.x, 1u, u_input.d), vec3<bool>(false, true, false))) % 32u)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -278f, var_3.x))))), !(~u_input.a < firstTrailingBit(u_input.a)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-517f + var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x))), select(select(vec2<bool>(var_3.x, false), var_3.xx, true), !var_3.xz, !var_3.x), vec4<bool>(var_3.x, false, var_2, false), u_input.d, 13724u), Struct_1(var_0.yw, select(select(vec2<bool>(var_3.x, false), vec2<bool>(var_2, var_3.x), var_3.zy), func_3(Struct_4(-119f), var_0.zz, Struct_4(-557f), vec3<i32>(6183i, 2147483647i, -21906i)), var_3.yx), select(!vec4<bool>(true, true, var_3.x, true), vec4<bool>(var_3.x, false, true, true), !vec4<bool>(true, true, var_3.x, var_3.x)), u_input.d, (0u | u_input.d) & u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zw - vec2<f32>(1082f, -120f))), func_3(Struct_4(var_0.x), _wgslsmith_f_op_vec2_f32(abs(var_0.wy)), Struct_4(-594f), vec3<i32>(u_input.a, u_input.a, -2147483647i) << (u_input.b % vec3<u32>(32u))), select(select(vec4<bool>(false, var_2, false, false), vec4<bool>(true, var_2, var_2, true), true), !vec4<bool>(var_3.x, true, var_2, var_2), vec4<bool>(true, false, true, false)), firstLeadingBit(u_input.d), _wgslsmith_mult_u32(21564u, u_input.d << (22636u % 32u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -234f, var_0.x), vec4<f32>(var_0.x, var_0.x, -698f, 245f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(574f, var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(ceil(222f))))), any(select(func_3(Struct_4(var_0.x), vec2<f32>(var_0.x, -1292f), Struct_4(var_0.x), vec3<i32>(u_input.a, -17365i, 1i)), var_3.xz, !var_2)))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<bool>(var_3.x, func_3(Struct_4(-1291f), var_0.yy, Struct_4(var_0.x), vec3<i32>(u_input.a, 2147483647i, u_input.a)).x), !(!vec4<bool>(true, false, var_3.x, true)), _wgslsmith_div_u32(22955u, _wgslsmith_mult_u32(1u, u_input.c.x)), abs(u_input.d))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2576f, -300f)))), var_3.xy, select(!select(vec4<bool>(true, true, var_3.x, false), vec4<bool>(false, var_2, false, true), vec4<bool>(var_2, false, false, true)), !(!vec4<bool>(false, var_3.x, true, var_2)), select(!vec4<bool>(var_3.x, var_3.x, var_3.x, false), !vec4<bool>(false, var_3.x, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_3.x, false, var_2), true))), abs(countOneBits(firstLeadingBit(u_input.d))), 4294967295u));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(round(arg_1.e.a.x)));
    var_0 = Struct_4(_wgslsmith_f_op_f32(sign(arg_0.b.a)));
    var_0 = Struct_4(1367f);
    let var_1 = arg_0.d.a.d;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.c.x * 334f)))))));
    return _wgslsmith_div_u32(~abs(u_input.c.x), 1806u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_4(func_1(), func_1()), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1488f * 703f)), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2220f, -213f))), vec2<bool>(true, true), vec4<bool>(true, true, true, true), countOneBits(countOneBits(u_input.d)), 44412u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), func_3(Struct_4(734f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-282f, -837f)), Struct_4(-1000f), -vec3<i32>(u_input.a, u_input.a, u_input.a)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, true, false), any(vec3<bool>(false, true, true))), _wgslsmith_sub_u32(66303u, u_input.b.x), 1u), Struct_1(vec2<f32>(-213f, _wgslsmith_f_op_f32(step(-653f, -729f))), vec2<bool>(true, true), vec4<bool>(true, func_1().b.c.b.x, any(vec4<bool>(true, false, true, true)), true), ~0u, u_input.d)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1074f, -401f, 871f, -1081f), vec4<f32>(889f, -545f, 521f, 1259f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2802f, 1957f, 1511f, -1364f)))))), Struct_3(func_1().d.a), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1087f, _wgslsmith_f_op_f32(-1692f + 282f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(560f, -277f))))), vec2<bool>(all(vec3<bool>(true, false, true)), ~1u >= u_input.d), vec4<bool>(func_1().b.c.b.x, !any(vec4<bool>(true, true, false, true)), false, func_1().e.c.x), firstLeadingBit(4294967295u), u_input.c.x));
    var var_1 = max(-(-(vec3<i32>(-50962i, u_input.a, 23290i) & vec3<i32>(u_input.a, -1i, u_input.a)) & vec3<i32>(u_input.a, 2147483647i, i32(-1i) * -12699i)), vec3<i32>(max(u_input.a, -u_input.a >> ((u_input.d << (var_0.d.a.e % 32u)) % 32u)), u_input.a, countOneBits(-8136i)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.e.a), var_0.b.e.b, vec4<bool>(var_0.d.a.c.x, select(var_0.e.c.x, var_0.d.a.c.x, all(!vec3<bool>(false, true, var_0.b.e.b.x))), any(vec2<bool>(all(var_0.d.a.c.xx), !var_0.e.b.x)), var_0.e.c.x), 1290u, ~u_input.c.x & 42073u);
    var var_3 = u_input.b.x;
    let var_4 = select(!func_3(Struct_4(_wgslsmith_f_op_f32(ceil(var_0.e.a.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a.x, -675f))), Struct_4(_wgslsmith_f_op_f32(-var_2.a.x)), ~vec3<i32>(-33186i, -76006i, var_1.x) >> (u_input.b % vec3<u32>(32u))), vec2<bool>(true, !(!var_0.b.d.c.x)), true);
    var var_5 = !(!(true & var_2.c.x));
    let var_6 = func_1().e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.x), vec2<u32>(u_input.b.x, 1u) | vec2<u32>(u_input.b.x, _wgslsmith_add_u32(~75015u, var_2.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d.a.x + var_2.a.x) * var_2.a.x))));
}

