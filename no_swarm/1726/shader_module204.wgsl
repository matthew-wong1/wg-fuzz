struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(-127f));
    let var_1 = Struct_2(~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(615f, -1127f, -656f, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, var_0, var_0, -1000f) * vec4<f32>(var_0, var_0, var_0, -679f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1088f), _wgslsmith_div_f32(283f, -1669f))), -362f, var_0, -1782f)), Struct_1(_wgslsmith_sub_i32(arg_0.x, firstLeadingBit(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-101f, _wgslsmith_div_f32(var_0, var_0)) * -364f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -468f, var_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(342f, var_0, var_0, var_0) - vec4<f32>(-671f, var_0, var_0, 444f))))), reverseBits(1410u), var_0), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(~1u, 1u | (u_input.c.x >> (36059u % 32u)), ~(u_input.b.x & 0u), _wgslsmith_add_u32(~u_input.b.x, ~1u)), u_input.b));
    let var_2 = !(!vec4<bool>(!all(vec3<bool>(true, false, true)), true, _wgslsmith_f_op_f32(var_0 * -2337f) <= _wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) == -617f));
    let var_3 = select(arg_0.x ^ -7098i, -26231i, true);
    var var_4 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f * _wgslsmith_f_op_f32(f32(-1f) * -555f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(select(abs(vec2<i32>(30170i, -1i)), ~vec2<i32>(2147483647i, 2147483647i), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(0i, -2147483647i)))))));
}

fn func_4(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 1384f, arg_0.x, -646f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, -970f, arg_0.x, 1003f) * vec4<f32>(arg_0.x, 283f, arg_0.x, arg_0.x)))))), Struct_1(34000i, 1f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -993f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -761f, arg_0.x, -415f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -1106f, arg_0.x, arg_0.x)))))), _wgslsmith_mod_u32(u_input.b.x << (u_input.b.x % 32u), max(u_input.b.x, u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1244f)), u_input.b);
    let var_1 = Struct_2(firstTrailingBit(abs(u_input.b.x) << (u_input.c.x % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(429f)))), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(var_0.c.a, 26121i))), -644f))), _wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(abs(-1000f))), Struct_1(var_0.c.a, _wgslsmith_f_op_f32(max(-787f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 180f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(var_0.c.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1000f, arg_0.x, -826f)))), select(true, any(vec4<bool>(false, true, true, true)), true))), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(7187u, var_0.c.d, 0u, 81619u), abs(vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x)), false), vec4<u32>(u_input.c.x, var_0.a, 27866u & var_0.d.x, var_0.c.d)), _wgslsmith_f_op_f32(var_0.c.c.x * _wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(-860f - -1000f)))), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.d.x, ~var_0.d.x, u_input.c.x), reverseBits(var_0.d)), u_input.c.x, u_input.b.x));
    let var_2 = Struct_2(~var_0.a, var_0.b, Struct_1(~(14479i >> (u_input.b.x % 32u)) << (~(~1u) % 32u), -824f, var_1.c.c, 1u, arg_0.x), u_input.b);
    let var_3 = Struct_1(var_1.c.a, var_0.c.e, var_1.b, ~(~countOneBits(~var_1.c.d)), var_2.c.e);
    let var_4 = var_2.c;
    return true != select(select(true, true, !any(vec3<bool>(false, true, false))), !(!(-2147483647i < var_2.c.a)), !all(vec4<bool>(false, false, true, false)));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(739f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(512f * -601f), -1586f)), _wgslsmith_f_op_f32(-596f - 423f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(565f - -754f), -1061f)));
    var var_1 = Struct_2(1u, vec4<f32>(770f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(-1i, -20249i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1638f) + _wgslsmith_f_op_f32(abs(-1156f)))), _wgslsmith_f_op_f32(round(200f)), 2605f), Struct_1(_wgslsmith_div_i32(~(~(-2147483647i)), reverseBits(~(-10941i))), 1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(571f, _wgslsmith_f_op_f32(min(394f, 827f)), _wgslsmith_f_op_f32(-186f * 943f), _wgslsmith_f_op_f32(sign(867f))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-1560f)), 375f, _wgslsmith_f_op_f32(-810f + 418f), _wgslsmith_f_op_f32(trunc(855f)))), arg_0.x << (~arg_0.x % 32u), _wgslsmith_f_op_f32(-817f + _wgslsmith_f_op_f32(-100f * _wgslsmith_f_op_f32(108f - 337f)))), ~arg_0);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(63279i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.c.a, 1i, 33611i, 1i) & (vec4<i32>(var_1.c.a, var_1.c.a, var_1.c.a, var_1.c.a) & vec4<i32>(488i, var_1.c.a, -2147483647i, 1i)), ~(vec4<i32>(12635i, var_1.c.a, var_1.c.a, 13877i) >> (vec4<u32>(12022u, var_1.a, arg_0.x, u_input.b.x) % vec4<u32>(32u)))), ~2147483647i, -8741i >> (abs(arg_0.x | 8589u) % 32u)), ~vec4<i32>(var_1.c.a, ~_wgslsmith_mod_i32(var_1.c.a, 1i), 18748i, var_1.c.a));
    var var_3 = arg_0.wwy;
    var var_4 = ~abs(var_1.c.a);
    return 1000f;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) + _wgslsmith_f_op_f32(-arg_2.b.x)) - 388f))));
    var var_1 = Struct_2(arg_0.d.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, var_0, 1000f, -633f) + vec4<f32>(arg_0.b.x, var_0, -116f, 424f)), arg_2.b)), vec4<f32>(_wgslsmith_div_f32(587f, -937f), _wgslsmith_f_op_f32(var_0 - -601f), _wgslsmith_f_op_f32(782f + -1162f), var_0), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false))))), arg_0.c, vec4<u32>(_wgslsmith_clamp_u32(4965u, arg_0.c.d >> (39992u % 32u), arg_1), max(_wgslsmith_clamp_u32(16375u, arg_0.a, arg_1), arg_1), arg_2.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, arg_0.d.x), 0u << (1u % 32u))) << ((vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, arg_1), u_input.c.x, u_input.c.x, ~100696u) & u_input.b) % vec4<u32>(32u)));
    let var_2 = ~countOneBits(-abs(vec3<i32>(-10060i, arg_2.c.a, -1i)));
    var_1 = Struct_2(_wgslsmith_mult_u32(abs(1u), _wgslsmith_mod_u32(arg_0.a, arg_2.d.x | 1149u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_1.d))), -440f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.b)), _wgslsmith_div_f32(arg_0.c.b, var_1.c.e)), -268f))), arg_0.c, ~_wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_2.a, arg_2.d.x, arg_1, 1u) << (vec4<u32>(1u, var_1.a, arg_0.c.d, 31454u) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(var_1.d, arg_2.d)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(true, true)) | false;
    var var_1 = false;
    var_1 = false;
    var var_2 = func_5(Struct_2(2578u >> (~_wgslsmith_mod_u32(u_input.a.x, u_input.b.x) % 32u), vec4<f32>(_wgslsmith_f_op_f32(floor(-1946f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) - -520f), -1608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1301f, -1514f)))), Struct_1(0i, _wgslsmith_f_op_f32(func_1(vec4<u32>(46148u, 25814u, u_input.b.x, 1u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-453f, -859f, 1285f, 1000f) + vec4<f32>(-115f, 2514f, -353f, -325f)))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b)))), vec4<u32>(~(~4294967295u), u_input.b.x, reverseBits(11412u), u_input.c.x)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(53177u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) >> (~50990u % 32u), ~u_input.c.x), Struct_2(21002u, vec4<f32>(_wgslsmith_f_op_f32(abs(-400f)), -1000f, _wgslsmith_f_op_f32(-1855f - _wgslsmith_f_op_f32(step(311f, -874f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(482f, 2814f), _wgslsmith_f_op_f32(1000f - -310f)))), Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2784f - 668f)), vec4<f32>(_wgslsmith_f_op_f32(step(-231f, -397f)), _wgslsmith_f_op_f32(min(925f, -324f)), _wgslsmith_f_op_f32(f32(-1f) * -915f), -718f), 96u, _wgslsmith_f_op_f32(round(-790f))), u_input.b ^ _wgslsmith_div_vec4_u32(~vec4<u32>(30716u, u_input.a.x, 4294967295u, 1u), max(u_input.b, vec4<u32>(4294967295u, 0u, 20668u, u_input.b.x)))), ~(vec4<i32>(-8740i, -1i, 1i, ~(-2147483647i)) & firstTrailingBit(vec4<i32>(0i, 2147483647i, -11910i, 2147483647i))));
    let var_3 = func_5(Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.c.x, ~15454u), reverseBits(var_2.d) ^ u_input.b.x), var_2.c, Struct_1(12124i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -433f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.c, var_2.c))), countOneBits(48524u >> (0u % 32u)), _wgslsmith_f_op_f32(select(-252f, _wgslsmith_f_op_f32(trunc(var_2.b)), var_0))), select(vec4<u32>(33486u, 4294967295u, 1u, u_input.b.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(1u, 0u, u_input.a.x, 53095u)), ~vec4<u32>(u_input.b.x, u_input.b.x, 1u, var_2.d), _wgslsmith_mod_vec4_u32(vec4<u32>(44348u, u_input.b.x, var_2.d, 4294967295u), u_input.b)), select(select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, false), true), !vec4<bool>(var_0, true, var_0, var_0), !vec4<bool>(var_0, var_0, true, true)))), max(abs(72051u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, var_2.d), u_input.a.zy))), Struct_2(~var_2.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1865f, var_2.e, 427f), var_2.c)))), Struct_1(abs(-1i), _wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, -2147483647i) >> (vec2<u32>(u_input.a.x, var_2.d) % vec2<u32>(32u)))), var_2.c, reverseBits(1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(200f * -1650f), -1113f)), u_input.b), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_2.a, var_2.a, var_2.a, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, var_2.a, -2147483647i, 2147483647i) << (u_input.b % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, -27755i, 1i, 22913i), vec4<i32>(1i, -61020i, var_2.a, 0i))), vec4<i32>(var_2.a, var_2.a, 1i, var_2.a) | abs(vec4<i32>(var_2.a, 6800i, -1i, 12075i))), min(~(vec4<i32>(var_2.a, 15587i, 34465i, -2147483647i) << (vec4<u32>(var_2.d, var_2.d, var_2.d, 1u) % vec4<u32>(32u))), vec4<i32>(var_2.a, 1i, i32(-1i) * -42417i, 25409i | var_2.a))));
    var var_4 = vec2<i32>(firstTrailingBit(43709i) >> (_wgslsmith_dot_vec2_u32(~firstTrailingBit(u_input.b.xx), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.d, u_input.c.x) << (u_input.a.zx % vec2<u32>(32u)), u_input.c)) % 32u), 48255i);
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(~var_3.d, ~u_input.b.x), firstLeadingBit(~var_3.d >> (4294967295u % 32u)), 1u | _wgslsmith_sub_u32(1u, var_3.d)), vec3<i32>(var_4.x | -abs(2147483647i), min(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, var_3.a)), vec2<i32>(-20148i, var_4.x) >> (vec2<u32>(u_input.c.x, u_input.b.x) % vec2<u32>(32u))), 1i), reverseBits(reverseBits(1i))));
}

