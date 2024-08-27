struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, _wgslsmith_mod_i32(u_input.b.x, ~(-2147483647i)), -countOneBits(u_input.c)), (_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), countOneBits(vec3<i32>(u_input.c, u_input.b.x, -30591i))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(75227u, 55566u, u_input.a.x), vec3<u32>(4294967295u, 1u, 0u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.d)) % vec3<u32>(32u))) ^ (vec3<i32>(_wgslsmith_sub_i32(u_input.c, 0i), -2147483647i, ~(-2147483647i)) ^ -firstLeadingBit(u_input.b.yxz)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * 359f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-565f, -1163f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(437f, -1513f)))))), -_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, 7266i, 36142i), ~_wgslsmith_mult_vec3_i32(u_input.b.yzx, vec3<i32>(u_input.c, u_input.b.x, var_1))), true, _wgslsmith_f_op_f32(-1f));
    let var_3 = abs(4294967295u) | u_input.d;
    let var_4 = -1i;
    return 1050f;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2.a.c;
    var var_1 = Struct_3(Struct_2(arg_0.x, select(!(!vec2<bool>(var_0, arg_1.b.x)), select(select(vec2<bool>(var_0, false), vec2<bool>(arg_2.a.c, true), var_0), vec2<bool>(false, false), !vec2<bool>(true, arg_2.a.c)), true && (arg_2.a.c | true)), true, arg_1.d, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.e.d)), arg_2.a.a.x), -_wgslsmith_mult_vec3_i32(vec3<i32>(-11779i, 20058i, u_input.b.x), vec3<i32>(6204i, -8271i, 2147483647i)), -1000f > _wgslsmith_f_op_f32(-arg_2.a.d), _wgslsmith_f_op_f32(1405f - _wgslsmith_f_op_f32(arg_2.a.a.x + arg_1.e.d)))), vec2<bool>(arg_1.e.c, !(_wgslsmith_f_op_f32(select(773f, arg_2.a.a.x, true)) < _wgslsmith_div_f32(arg_1.e.a.x, arg_2.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(541f - 1258f), _wgslsmith_f_op_f32(f32(-1f) * -1082f))) - arg_2.a.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1381f))))), arg_1.e.a.x, Struct_1(vec2<f32>(-1037f, 364f), _wgslsmith_add_vec3_i32(arg_1.d.ywx | arg_2.a.b, ~u_input.b.zyy) >> (arg_0 % vec3<u32>(32u)), !any(vec3<bool>(var_0, true, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.e.d, arg_1.e.a.x, arg_2.a.c)))))));
    var_1 = Struct_3(Struct_2(8082u, select(vec2<bool>(arg_1.e.c, var_1.a.a <= 1u), !(!arg_1.b), !all(vec3<bool>(true, true, true))), var_0, ~(-vec4<i32>(0i, u_input.c, -1i, u_input.b.x)) >> (((vec4<u32>(0u, 24801u, 4992u, 29155u) << (vec4<u32>(18651u, var_1.a.a, arg_3, var_1.a.a) % vec4<u32>(32u))) & vec4<u32>(1u, u_input.e, arg_0.x, u_input.a.x)) % vec4<u32>(32u)), var_1.e), select(!(!(!var_1.b)), vec2<bool>(all(select(vec4<bool>(var_1.a.b.x, true, arg_2.a.c, var_1.b.x), vec4<bool>(true, true, false, true), arg_2.a.c)), (var_1.a.a << (arg_3 % 32u)) <= 0u), !(_wgslsmith_f_op_f32(arg_2.a.d - -388f) > _wgslsmith_f_op_f32(arg_1.e.a.x * -1173f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + var_1.c) - vec4<f32>(arg_2.a.d, arg_2.a.d, 1199f, arg_1.e.d)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-216f, 362f, arg_1.e.a.x, -1344f))))), vec4<f32>(-1832f, _wgslsmith_f_op_f32(arg_2.a.d + var_1.e.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.d), _wgslsmith_f_op_f32(-arg_2.a.d)), arg_2.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -124f), arg_1.e);
    var_1 = Struct_3(var_1.a, vec2<bool>(false, ~arg_0.x < _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.e.d, -1000f)) + 1903f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f)), 858f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(func_3()), arg_1.e);
    let var_2 = Struct_3(Struct_2(arg_0.x, vec2<bool>(arg_2.a.b.x <= _wgslsmith_add_i32(-1i, 0i), all(arg_1.b) == var_1.a.c), true, ~max(vec4<i32>(1i, 19076i, var_1.e.b.x, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, arg_2.a.b.x, arg_2.a.b.x, 12757i), vec4<i32>(1i, arg_2.a.b.x, var_1.e.b.x, u_input.b.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.e.a, vec2<f32>(-829f, var_1.e.a.x)) * _wgslsmith_f_op_vec2_f32(-var_1.e.a)), -vec3<i32>(2147483647i, -1i, -1i), true, 1818f)), vec2<bool>(all(!arg_1.b), any(select(!vec2<bool>(var_1.e.c, true), vec2<bool>(false, true), !arg_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(var_1.c, var_1.c)))))), arg_1.e.d, arg_2.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e.d, 218f))), _wgslsmith_f_op_f32(select(1f, var_1.e.a.x, false)))), -(~vec3<i32>(arg_1.e.b.x, abs(24817i), arg_1.e.b.x)), false, -929f);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = -1649f;
    let var_1 = Struct_3(arg_0, vec2<bool>(arg_0.d.x >= u_input.b.x, false), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2687f, arg_0.e.d, -164f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec4<f32>(_wgslsmith_div_f32(-878f, arg_0.e.d), _wgslsmith_f_op_f32(round(-1383f)), _wgslsmith_f_op_f32(-arg_0.e.d), arg_0.e.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_0.e.d))) * _wgslsmith_f_op_f32(1197f + _wgslsmith_f_op_f32(sign(-1509f)))), arg_0.e);
    let var_2 = countOneBits(vec4<u32>(~arg_1, ~arg_1, ~(var_1.a.a >> (1u % 32u)), select(1u, arg_0.a, any(arg_0.b))) ^ vec4<u32>(_wgslsmith_add_u32(arg_0.a >> (70700u % 32u), _wgslsmith_clamp_u32(0u, u_input.e, 1u)), var_1.a.a, 44459u, 1715u));
    return var_1.a;
}

fn func_1() -> i32 {
    let var_0 = Struct_3(func_4(Struct_2(~1u, select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), true, ~(vec4<i32>(4116i, u_input.b.x, 0i, -11564i) ^ vec4<i32>(u_input.b.x, -780i, 30002i, -11036i)), func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.d, 1u, 27723u)), Struct_2(u_input.a.x, vec2<bool>(true, true), false, vec4<i32>(u_input.b.x, 0i, -11379i, -27211i), Struct_1(vec2<f32>(-496f, 1071f), vec3<i32>(u_input.c, -9241i, u_input.b.x), true, 1000f)), Struct_4(Struct_1(vec2<f32>(-1777f, 1205f), vec3<i32>(38913i, u_input.b.x, u_input.b.x), false, 189f)), ~u_input.a.x)), u_input.a.x), select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec4<bool>(true, false, false, false))), all(vec4<bool>(true, true, true, true)) & (~u_input.b.x <= -10111i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1963f), 205f, _wgslsmith_f_op_f32(416f - -1079f), _wgslsmith_f_op_f32(abs(-2335f))), vec4<f32>(-1816f, _wgslsmith_f_op_f32(f32(-1f) * -1407f), _wgslsmith_div_f32(577f, 355f), -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2702f))), func_4(Struct_2(9977u, vec2<bool>(true, true), false, u_input.b, Struct_1(vec2<f32>(387f, 109f), vec3<i32>(u_input.b.x, u_input.b.x, 24067i), true, -435f)), u_input.a.x).e.d))), func_4(Struct_2(abs(~u_input.a.x), func_4(Struct_2(11273u, vec2<bool>(true, false), true, vec4<i32>(1i, -10773i, 0i, -18711i), Struct_1(vec2<f32>(335f, -1106f), vec3<i32>(u_input.b.x, u_input.c, u_input.b.x), false, -1016f)), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(145389u, 7716u))).b, true, vec4<i32>(_wgslsmith_mod_i32(u_input.c, 13256i), -u_input.c, countOneBits(u_input.b.x), u_input.b.x ^ 34531i), func_2(vec3<u32>(u_input.a.x, 4294967295u, 2329u), func_4(Struct_2(1u, vec2<bool>(true, false), false, u_input.b, Struct_1(vec2<f32>(-428f, 1871f), vec3<i32>(-22974i, u_input.c, 1i), false, -1006f)), 4294967295u), Struct_4(Struct_1(vec2<f32>(-854f, -480f), u_input.b.yyx, false, -512f)), ~u_input.d)), 4294967295u >> (~_wgslsmith_sub_u32(u_input.a.x, u_input.d) % 32u)).e);
    var var_1 = var_0.a;
    var_1 = func_4(Struct_2(1u, vec2<bool>(func_4(var_0.a, _wgslsmith_clamp_u32(80396u, 2397u, var_0.a.a)).b.x, false), !(!var_1.b.x), vec4<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.e.b.x, 1503i), _wgslsmith_sub_i32(0i, u_input.c)), firstTrailingBit(u_input.b.x | -5132i), 8406i), var_1.e), 1u);
    var var_2 = var_0.c;
    let var_3 = Struct_4(var_1.e);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (i32(-1i) * -14370i) ^ -func_1();
    let var_1 = Struct_3(func_4(Struct_2(u_input.a.x, vec2<bool>(true, true), func_2(vec3<u32>(u_input.e, u_input.e, 4294967295u) ^ vec3<u32>(10440u, u_input.d, 1u), Struct_2(u_input.e, vec2<bool>(false, false), false, u_input.b, Struct_1(vec2<f32>(-396f, 408f), vec3<i32>(2147483647i, 2147483647i, u_input.c), true, -714f)), Struct_4(Struct_1(vec2<f32>(1711f, -545f), vec3<i32>(var_0, var_0, u_input.c), true, 1000f)), u_input.d).c, ~(-vec4<i32>(u_input.c, 2147483647i, var_0, var_0)), func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(24449u, u_input.d, 19u), vec3<u32>(u_input.d, 16494u, u_input.d)), func_4(Struct_2(0u, vec2<bool>(false, false), false, u_input.b, Struct_1(vec2<f32>(516f, 1146f), u_input.b.zyz, false, 1363f)), u_input.a.x), Struct_4(Struct_1(vec2<f32>(-733f, -123f), u_input.b.zwy, true, 822f)), 9234u)), 1u), func_4(func_4(Struct_2(u_input.e >> (u_input.d % 32u), vec2<bool>(true, true), u_input.d == 12908u, ~u_input.b, Struct_1(vec2<f32>(1349f, 108f), vec3<i32>(var_0, 0i, u_input.c), false, 1417f)), func_4(func_4(Struct_2(53439u, vec2<bool>(false, false), false, u_input.b, Struct_1(vec2<f32>(-831f, 506f), vec3<i32>(var_0, var_0, u_input.b.x), true, 168f)), 132406u), ~u_input.e).a), firstLeadingBit(~4294967295u)).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f * -940f) - _wgslsmith_f_op_f32(step(-2280f, -1650f))), -980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f + -712f) * -2711f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(429f)))))), _wgslsmith_f_op_f32(-541f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1f))), Struct_1(func_4(func_4(func_4(Struct_2(u_input.e, vec2<bool>(false, false), true, u_input.b, Struct_1(vec2<f32>(645f, -955f), vec3<i32>(var_0, u_input.c, -2147483647i), false, -363f)), u_input.d), 0u), 4294967295u).e.a, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.zwx, -u_input.b.xzw), _wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, var_0, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0, 15452i), u_input.b.wzw, u_input.b.yxy))), !all(vec2<bool>(false, false)) && false, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-434f, _wgslsmith_f_op_f32(sign(-1000f)))))));
    var var_2 = Struct_3(Struct_2(~max(~7821u, 21069u), !(!(!var_1.a.b)), true, vec4<i32>(16192i, _wgslsmith_mod_i32(~55812i, ~23752i), var_0, ~max(u_input.c, 31289i)), var_1.a.e), !vec2<bool>(!var_1.a.e.c, func_4(var_1.a, var_1.a.a).b.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1463f, -651f, -1178f, var_1.a.e.d) - var_1.c) - _wgslsmith_f_op_vec4_f32(-var_1.c)))))), -368f, var_1.e);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.a.e.a.x)), _wgslsmith_f_op_f32(var_2.c.x + -1136f)), var_1.c.zy)) * _wgslsmith_f_op_vec2_f32(-var_2.c.xz)), vec3<i32>(~var_0, _wgslsmith_div_i32(var_2.a.e.b.x, abs(25328i >> (1u % 32u))), -11202i), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1212f + var_3))) * 1385f) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.d), _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(-var_2.c.x)), var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec3<i32>(-10195i, var_4.b.x, 1i)) >> (~reverseBits(vec3<u32>(var_2.a.a, u_input.e, 65847u)) % vec3<u32>(32u))), 848f, var_1.a.a, firstTrailingBit(-1i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d) + -1596f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f + _wgslsmith_f_op_f32(var_2.d - var_2.c.x)))));
}

