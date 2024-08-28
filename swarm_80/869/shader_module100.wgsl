struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1.b.wyy;
    let var_1 = arg_1.e;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_div_vec4_i32(arg_0, select(_wgslsmith_clamp_vec4_i32(arg_0, ~vec4<i32>(u_input.e, -1i, arg_0.x, u_input.e), countOneBits(vec4<i32>(6837i, -63846i, 11902i, u_input.c))) ^ ~vec4<i32>(25388i, 52025i, -2147483647i, 76625i), vec4<i32>(-38228i, firstTrailingBit(0i), -4306i ^ u_input.c, u_input.e), var_2.e));
    let var_4 = vec4<bool>(!(!var_1), true, any(select(!select(vec2<bool>(var_2.e, arg_1.e), vec2<bool>(true, true), vec2<bool>(false, arg_1.e)), vec2<bool>(true, !var_2.e), var_1)), var_2.e);
    return abs(1u) << (arg_1.a % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(func_3(~vec4<i32>(-2147483647i, ~19207i, 0i, ~u_input.e), Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2281f, 1000f, 1714f, 734f) * vec4<f32>(1589f, -1847f, 784f, 464f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(554f, -1793f, -183f, -1674f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(536f + -2723f))), 4294967295u, true)));
    var var_1 = _wgslsmith_f_op_f32(trunc(883f));
    var var_2 = !vec3<bool>(select(select(true, false, true), ~u_input.e >= u_input.c, true), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_3 = Struct_3(u_input.d);
    var_2 = select(select(vec3<bool>((false | var_2.x) || (var_2.x | var_2.x), true, 0u >= var_3.a), vec3<bool>(!all(vec4<bool>(var_2.x, false, var_2.x, var_2.x)), !all(var_2.zz), (u_input.e >= u_input.e) | false), !vec3<bool>(!var_2.x, true, all(vec2<bool>(var_2.x, var_2.x)))), vec3<bool>(!all(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)), all(!(!var_2.yz)), !(var_2.x && all(var_2.xy))), true);
    return Struct_1(~_wgslsmith_div_u32(u_input.b.x, reverseBits(var_0.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1065f, -717f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1852f + -748f), _wgslsmith_f_op_f32(ceil(644f))), _wgslsmith_f_op_f32(-1715f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, 847f, -563f, 224f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(379f, 223f))))), ~(~0u), true);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    let var_0 = Struct_3(arg_2.a);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_2.b.wyz), ~(-2147483647i), u_input.e, arg_3, vec2<bool>(select(!func_2().e, false, arg_3.e), func_2().e));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f * arg_3.c)), _wgslsmith_f_op_f32(324f * _wgslsmith_f_op_f32(-var_1.d.c)), 1385f)), abs(var_1.c), ~(-countOneBits(~var_1.c)), func_2(), !(!var_1.e));
    var var_2 = Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(-1101f, _wgslsmith_f_op_f32(min(-720f, 358f)))), _wgslsmith_f_op_f32(-1744f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1051f), 0i, u_input.c, arg_3, vec2<bool>(all(!var_1.e), false)), 1930f);
    var var_3 = ~var_0.a;
    return Struct_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.b.x, var_2.a.a.x, -1404f) * vec3<f32>(1288f, -669f, 1617f)))), _wgslsmith_f_op_vec3_f32(-func_2().b.yzz)), var_2.a.c, _wgslsmith_dot_vec3_i32(~min(vec3<i32>(1i, var_1.c, u_input.c), vec3<i32>(u_input.c, var_1.b, 2147483647i)), ~vec3<i32>(var_1.c, var_1.b, u_input.c) | vec3<i32>(var_1.c, 0i, -66101i)), var_1.d, var_2.a.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.a.a.x)), _wgslsmith_f_op_f32(sign(124f))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), 800f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(round(495f)), -1483f, 1000f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1768f, arg_1.x, arg_1.x) + vec4<f32>(857f, -1366f, arg_1.x, arg_1.x)))))), arg_1.x, 63818u, arg_1.x >= arg_1.x);
    var var_1 = func_4(false, ~select(vec2<u32>(4294967295u, u_input.b.x), u_input.b.yx, !vec2<bool>(var_0.e, true)) ^ vec2<u32>(4294967295u, var_0.d), Struct_1(_wgslsmith_mod_u32(max(10242u, 0u) ^ _wgslsmith_div_u32(u_input.d, 0u), 0u), var_0.b, var_0.c, u_input.b.x, 2147483647i < u_input.e), func_2());
    let var_2 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.c | 6119i, ~(-u_input.e)), vec2<i32>(_wgslsmith_add_i32(select(0i, var_1.a.b, true), func_4(false, vec2<u32>(70750u, arg_0.a), Struct_1(var_0.a, var_0.b, var_1.a.a.x, 45996u, var_1.a.e.x), Struct_1(14335u, var_0.b, 2215f, var_1.a.d.a, var_1.a.e.x)).a.c), _wgslsmith_add_i32(2147483647i, -u_input.c)));
    var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.a.a), -1i, min(func_4(true, vec2<u32>(arg_0.a, 1u), var_1.a.d, func_4(false, u_input.b.zw, var_1.a.d, var_1.a.d).a.d).a.b, u_input.e), var_1.a.d, select(select(!var_1.a.e, !vec2<bool>(var_1.a.d.e, false), !vec2<bool>(var_1.a.e.x, false)), vec2<bool>(var_1.a.d.e, all(var_1.a.e)), var_1.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(159f)))));
    var var_3 = ~(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, var_1.a.c), firstLeadingBit(var_2)), countOneBits(vec2<i32>(0i, -2147483647i))) & -var_2);
    return Struct_1(~(~u_input.d) << (0u % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * var_1.a.d.b) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1071f), _wgslsmith_f_op_f32(-693f + var_1.a.a.x), var_0.c, func_2().b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.x, 649f, true)))), var_1.b), ~_wgslsmith_mult_u32(10996u << (select(u_input.b.x, 4294967295u, var_0.e) % 32u), var_1.a.d.a), false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = func_4(all(!vec3<bool>(true, arg_1.e.x, true)), abs(u_input.b.wy) << (firstTrailingBit(vec2<u32>(u_input.a, u_input.d)) % vec2<u32>(32u)), func_2(), Struct_1(14610u, arg_0.b, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_add_u32(func_1(Struct_3(arg_1.d.a), vec3<f32>(arg_1.d.c, 394f, 530f)).a, 4294967295u), false)).a.d.e;
    var var_1 = func_4(func_4(arg_0.e, vec2<u32>(11563u, 14642u), arg_0, Struct_1(~u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -207f, arg_1.a.x, arg_0.c) + vec4<f32>(arg_1.a.x, 697f, arg_1.a.x, arg_0.c)), arg_0.b.x, 1u, arg_2.x & false)).a.d.a != ~(firstTrailingBit(arg_1.d.d) ^ _wgslsmith_mult_u32(arg_0.a, 1u)), select(vec2<u32>(~4294967295u, min(18927u, _wgslsmith_mod_u32(11350u, 2057u))), _wgslsmith_add_vec2_u32(u_input.b.ww >> (u_input.b.xz % vec2<u32>(32u)), abs(u_input.b.ww)) ^ ~min(vec2<u32>(45905u, u_input.d), vec2<u32>(1u, 4294967295u)), true), arg_0, func_4(arg_0.e && true, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(0u, 30466u))), func_1(Struct_3(28960u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) * arg_1.a)), arg_0).a.d).a.d;
    var_1 = arg_1.d;
    var_1 = Struct_1(countOneBits(arg_1.d.d >> (min(var_1.d, ~0u) % 32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-253f, -115f, var_1.b.x, 1279f))))))), _wgslsmith_f_op_f32(sign(-1174f)), _wgslsmith_sub_u32(arg_1.d.a, _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(~0u, u_input.b.x | 0u))), func_4(false || var_1.e, _wgslsmith_sub_vec2_u32(~(vec2<u32>(1u, u_input.a) ^ u_input.b.wy), min(u_input.b.zx, vec2<u32>(30480u, 28308u))), Struct_1(7855u, _wgslsmith_div_vec4_f32(vec4<f32>(389f, arg_0.b.x, var_1.b.x, arg_1.d.b.x), vec4<f32>(var_1.b.x, -1000f, 884f, 1685f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.b.x * -1000f) * -379f), 0u, true), func_2()).a.d.e);
    let var_2 = i32(-1i) * -10448i;
    return arg_1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(select(true, false, false), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(false, false, true)), true & (u_input.a < 38962u)));
    var_0 = vec2<bool>(!var_0.x, any(vec3<bool>(any(!vec4<bool>(var_0.x, true, false, true)), any(vec2<bool>(false, true)), var_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_3(u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1047f, -575f, 699f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1170f, _wgslsmith_div_f32(1000f, -857f), _wgslsmith_f_op_f32(-154f * 135f))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -38732i) << (u_input.b.xw % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.e), vec2<i32>(-28423i, 16903i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, u_input.c), reverseBits(vec2<i32>(-224i, -18742i)), ~vec2<i32>(u_input.c, 2147483647i))), 1i, Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, 656f, -142f, 1014f) * vec4<f32>(710f, 333f, -708f, -335f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f)), _wgslsmith_mult_u32(75837u, _wgslsmith_mod_u32(56994u, u_input.d)), ~15377u > u_input.d), !vec2<bool>(var_0.x, !var_0.x)), select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), select(vec4<bool>(false, func_4(var_0.x, vec2<u32>(1711u, u_input.d), Struct_1(u_input.a, vec4<f32>(-1000f, 606f, 855f, 507f), 1298f, 24312u, false), Struct_1(36421u, vec4<f32>(1287f, 1562f, -171f, -1509f), 803f, u_input.b.x, var_0.x)).a.e.x, var_0.x, var_0.x), vec4<bool>(!var_0.x, func_2().e, true, u_input.d > 0u), vec4<bool>(u_input.c <= u_input.e, var_0.x, var_0.x || true, var_0.x || false)), false), -(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, u_input.c, -2147483647i, -2147483647i), select(vec4<i32>(-18540i, u_input.e, 4880i, u_input.c), vec4<i32>(u_input.e, 1i, -1i, u_input.e), false)) << (u_input.b % vec4<u32>(32u)))));
    var var_2 = vec2<u32>(u_input.d, ~(~u_input.b.x));
    var var_3 = Struct_3(1u ^ _wgslsmith_clamp_u32(u_input.a, ~(~var_2.x), u_input.b.x));
    let var_4 = Struct_3(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(_wgslsmith_sub_u32(4294967295u, var_3.a)), _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b)), ~(~(~0u))));
    var var_5 = u_input.b.zy;
    let var_6 = select(vec3<bool>(u_input.c >= (-u_input.c << (var_5.x % 32u)), any(vec3<bool>(!var_0.x, true, true)), select(false & (var_0.x && true), func_2().e, var_0.x)), vec3<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x)), !vec2<bool>(var_0.x, var_0.x), func_4(var_0.x, u_input.b.zx, Struct_1(var_5.x, vec4<f32>(var_1.x, 447f, 458f, 330f), var_1.x, var_2.x, false), Struct_1(u_input.d, var_1, var_1.x, 6204u, var_0.x)).a.e)), var_0.x && !(u_input.c == -36778i), any(vec2<bool>(-1093f == var_1.x, -2147483647i <= u_input.c))), var_0.x);
    var var_7 = (abs(~(16506i << (u_input.d % 32u))) | ~u_input.c) << (_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_5.x, 4106u) & vec3<u32>(29535u, 0u, 99911u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7640u), vec3<u32>(var_5.x, u_input.d, var_5.x), vec3<u32>(u_input.d, 4294967295u, 26983u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec2_u32(u_input.b.wy, u_input.b.ww) | firstLeadingBit(vec2<u32>(4294967295u, var_4.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, 48880i, -15581i, 1i), vec4<i32>(0i, -u_input.c, abs(-2147483647i), 81i)), vec4<i32>(0i, firstTrailingBit(1i) << (1u % 32u), max(2147483647i, 35636i) << (var_5.x % 32u), 2147483647i)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.e, u_input.c, u_input.e), firstLeadingBit(~2147483647i)), u_input.e);
}

