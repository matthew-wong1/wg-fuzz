struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -911f)), arg_0.b << (~min(vec4<u32>(arg_0.b.x, 32490u, 1u, 4294967295u), arg_0.b) % vec4<u32>(32u)), max(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 2147483647i), ~arg_0.c), -1i), 0i, vec2<bool>(true, false)), Struct_1(_wgslsmith_f_op_f32(-arg_2.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(60043u, 72253u, 1u, var_0.b.x), vec4<u32>(1u, 30064u, arg_0.b.x, 2387u)) ^ reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(33175u, arg_0.b.x, 4294967295u, 1u), arg_0.b, arg_0.b)), -337i & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 36773i, arg_2.c, -35422i) ^ vec4<i32>(arg_0.c, -2147483647i, arg_2.c, 33401i), vec4<i32>(2147483647i, -2147483647i, -17004i, arg_2.c)), 1i, vec2<bool>(true, !any(vec3<bool>(true, arg_2.e.x, var_0.e.x)))), arg_2, arg_0);
    let var_2 = _wgslsmith_mod_vec3_i32(~abs(-u_input.b) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_2.b.xyx, ~vec3<u32>(0u, 51418u, var_0.b.x)), arg_0.b.yyz ^ _wgslsmith_mult_vec3_u32(vec3<u32>(67438u, 35048u, arg_0.b.x), var_1.c.b.yxy)) % vec3<u32>(32u)), max(-_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(1i, u_input.b.x, 15015i)), -vec3<i32>(u_input.b.x, 1i, -12858i)), ~vec3<i32>(1i, -var_1.a.c, -58700i)));
    var var_3 = arg_0.e;
    let var_4 = var_1;
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> bool {
    let var_0 = false;
    let var_1 = Struct_1(-1241f, abs(vec4<u32>(abs(18897u), ~abs(22750u), _wgslsmith_add_u32(u_input.d.x, ~u_input.a.x), ~u_input.d.x)), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(max(firstLeadingBit(u_input.b.x), -u_input.b.x), u_input.b.x, u_input.b.x), abs(vec3<i32>(-1i) * -u_input.b)), vec2<bool>(!(!all(vec2<bool>(true, false))), -1777f < arg_1));
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_0.xy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0.x))));
    var var_3 = var_1.c;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(-var_1.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f + _wgslsmith_f_op_f32(min(541f, _wgslsmith_f_op_f32(sign(var_1.a)))))));
    return select(var_1.d < var_1.d, var_0, func_3(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -291f, var_2.x) - arg_0.zzy) * vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(min(-1115f, 720f)), _wgslsmith_f_op_f32(sign(arg_1)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1201f - arg_1), _wgslsmith_div_f32(var_2.x, -267f))), firstTrailingBit(~vec4<u32>(4294967295u, 4294967295u, var_1.b.x, var_1.b.x)), abs(u_input.b.x) << (_wgslsmith_dot_vec2_u32(var_1.b.xw, vec2<u32>(u_input.a.x, var_1.b.x)) % 32u), _wgslsmith_div_i32(firstTrailingBit(-1i), 27909i), select(var_1.e, !var_1.e, u_input.c.x <= var_1.b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> i32 {
    var var_0 = arg_1;
    let var_1 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(floor(1000f))))), (var_0.b << ((var_0.b >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u))) | ~min(arg_1.b, var_0.b), arg_1.c, u_input.b.x, vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(-arg_1.a), vec4<u32>(firstLeadingBit(var_0.b.x >> (arg_0 % 32u)), 1u, arg_0, ~(~4294967295u)), 1i, 2147483647i, vec2<bool>(!(arg_1.e.x | arg_3.x), ~arg_0 >= ~48935u)), Struct_1(-108f, var_0.b & firstTrailingBit(abs(vec4<u32>(9912u, 50680u, 34110u, arg_1.b.x))), 39624i, arg_1.d, select(!arg_3.yx, vec2<bool>(any(arg_3), var_0.e.x), vec2<bool>(true, all(arg_2)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(abs(var_1.c.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f + _wgslsmith_f_op_f32(f32(-1f) * -612f))));
    var_0 = arg_1;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) + -834f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) - var_1.b.a));
    return -51176i;
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(829f, u_input.c, u_input.b.x, func_4(u_input.d.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(564f * 693f) + _wgslsmith_f_op_f32(select(-1000f, -1000f, false))), max(countOneBits(vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.d.x)), select(vec4<u32>(0u, 42220u, u_input.a.x, u_input.c.x), u_input.c, vec4<bool>(true, true, true, true))), u_input.b.x, -2147483647i, vec2<bool>(true, func_2(vec4<f32>(-353f, -1870f, 1750f, -265f), 661f))), vec3<bool>(any(vec2<bool>(true, true)), true, any(vec2<bool>(true, true))), vec4<bool>(1i >= u_input.b.x, ~u_input.b.x <= u_input.b.x, !any(vec4<bool>(false, true, false, true)), true)), vec2<bool>(true, !(!(u_input.d.x > u_input.c.x))));
    var_0 = Struct_1(var_0.a, ~reverseBits(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 68280u), var_0.b.x, 63991u << (0u % 32u), ~u_input.c.x)), countOneBits(~var_0.c), -(var_0.c >> (~abs(0u) % 32u)), !(!vec2<bool>(any(var_0.e), var_0.e.x)));
    var var_1 = func_4(~abs(0u), Struct_1(var_0.a, vec4<u32>(var_0.b.x, 29210u, 3393u, ~min(u_input.a.x, var_0.b.x)), _wgslsmith_add_i32(firstTrailingBit(27434i), 1i | ~u_input.b.x), -2147483647i, vec2<bool>((var_0.e.x == true) & true, true)), vec3<bool>(!(true && var_0.e.x), false, !(any(vec3<bool>(false, false, var_0.e.x)) | (var_0.b.x < 4294967295u))), !vec4<bool>(true, var_0.e.x, true, var_0.e.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(500f, _wgslsmith_f_op_f32(-1233f * var_0.a)))))), ~var_0.b, var_0.c, i32(-1i) * -29573i, vec2<bool>(var_0.e.x, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.e.x, var_0.e.x, true, var_0.e.x), vec4<bool>(false, false, var_0.e.x, false)), !vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), u_input.a.x >= 59568u))));
    var var_3 = Struct_2(var_2, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-210f, var_2.a))), abs(var_0.b), abs(2147483647i | var_2.d), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-9895i, var_0.d >> (0u % 32u), var_2.c | -2147483647i), 1i), vec2<bool>(func_3(var_2, vec3<f32>(var_2.a, var_2.a, var_0.a), var_2), true)), var_2, Struct_1(var_2.a, ((vec4<u32>(0u, var_0.b.x, 4294967295u, var_0.b.x) >> (vec4<u32>(var_2.b.x, var_0.b.x, 48652u, 55256u) % vec4<u32>(32u))) << (var_0.b % vec4<u32>(32u))) & (var_0.b & vec4<u32>(4294967295u, var_0.b.x, u_input.d.x, 1u)), countOneBits(-var_2.c) ^ select(var_2.d, max(u_input.b.x, 0i), !var_0.e.x), -_wgslsmith_div_i32(_wgslsmith_mod_i32(-38009i, -2147483647i), 3547i), select(var_2.e, vec2<bool>(any(vec3<bool>(true, true, true)), var_0.e.x), var_2.e)));
    return vec3<bool>(all(!vec3<bool>(var_2.e.x, false, var_3.d.e.x)) || true, func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-294f, -100f) + var_2.a), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.a - var_2.a)), -1000f), _wgslsmith_f_op_f32(min(571f, _wgslsmith_f_op_f32(-var_3.d.a)))), true);
}

fn func_5(arg_0: vec3<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1414f)))), ~vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(44449u, 55274u)), ~u_input.a.x | ~u_input.d.x, 0u, ~1u), u_input.b.x, u_input.b.x, arg_0.zz);
    let var_1 = _wgslsmith_mod_u32(0u, 95201u);
    var var_2 = -1264f;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 740f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(var_0.a, 696f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 846f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, -249f))))));
    let var_4 = var_0.b.x;
    return !(false && arg_0.x) || !arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), (select(u_input.b.x, -57984i, false) > -1i) != (abs(u_input.a.x) == _wgslsmith_sub_u32(4294967295u, 4294967295u)), !all(vec2<bool>(true, true)));
    var_0 = true;
    var_0 = true;
    var_0 = !all(select(vec2<bool>(false, true), vec2<bool>(true, true), true));
    var_0 = func_5(!func_1());
    let var_1 = -_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.b.x, 1i, u_input.b.x ^ -23623i), -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-20431i, u_input.b.x, 0i, u_input.b.x), vec4<i32>(-25805i, -57011i, 9548i, -13737i))));
    let var_2 = Struct_1(_wgslsmith_div_f32(570f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1332f)))), _wgslsmith_sub_vec4_u32(u_input.c, select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, 48375u, u_input.d.x), vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.d.x)), ~u_input.c), ~u_input.c, func_2(vec4<f32>(1118f, -1751f, 1470f, -1585f), _wgslsmith_f_op_f32(max(135f, -566f))))), (_wgslsmith_clamp_i32(var_1.x, var_1.x ^ var_1.x, 1i) | _wgslsmith_sub_i32(~2147483647i, -u_input.b.x)) ^ u_input.b.x, ~((var_1.x & 18194i) << ((~4294967295u >> (~u_input.d.x % 32u)) % 32u)), select(func_1().xy, vec2<bool>(true, true), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_2.a)), var_2.a, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-771f * 929f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 668f, -313f, -827f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(450f, var_2.a, 1377f, var_2.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<f32>(var_2.a, var_2.a, 597f, var_2.a), var_2.e.x)), false)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 218f, var_2.a, var_2.a) * vec4<f32>(var_2.a, -1000f, 1401f, var_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, var_2.a, 170f)))), vec4<bool>(true, var_2.b.x != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.b.x, 0u), var_2.b.xxw), var_1.x <= -23329i, _wgslsmith_f_op_f32(212f + var_2.a) < -1224f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a, var_2.a, -312f, var_2.a))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-798f, var_2.a, var_2.a, var_2.a) * vec4<f32>(-280f, var_2.a, -1283f, 261f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, 491f, -1972f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -721f), 1058f, _wgslsmith_f_op_f32(-var_2.a), -119f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xy, vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(countOneBits(u_input.c.x), var_2.b.x, ~u_input.a.x), select(var_2.b.x & var_2.b.x, ~36413u, false), ~var_2.b.x) << (var_2.b % vec4<u32>(32u)));
}

