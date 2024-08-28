struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(false, var_0.b | ~arg_0.b, abs(var_0.c), -(_wgslsmith_div_vec4_i32(var_0.d, vec4<i32>(2147483647i, -1i, var_0.c, 68026i)) ^ vec4<i32>(-var_0.d.x, arg_0.d.x, -1i, arg_0.c << (var_0.b.x % 32u))), abs(~2865u));
    var_1 = arg_0;
    var_1 = Struct_1(var_0.a, max(vec3<u32>(~50631u & (59155u ^ var_0.e), 0u, 1u), reverseBits(_wgslsmith_mod_vec3_u32(var_0.b, min(var_0.b, var_1.b)))), -6172i, max(u_input.a ^ arg_0.d, vec4<i32>(_wgslsmith_div_i32(-1i, arg_0.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-41179i, -2147483647i, -9565i), var_1.d.zyz), _wgslsmith_div_i32(1i, 1i), var_0.d.x)) & -(vec4<i32>(-1i) * -vec4<i32>(0i, var_0.c, -1i, 14803i)), 17665u);
    var_1 = var_0;
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -abs(59813i);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1915f, 3156f) * _wgslsmith_f_op_f32(478f - -1217f)), -1030f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-352f)))) - vec3<f32>(1f, _wgslsmith_f_op_f32(-2277f - _wgslsmith_div_f32(-626f, -106f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(986f)) - _wgslsmith_f_op_f32(min(520f, 1178f)))))));
    var_0 = u_input.d.x ^ 60846i;
    var var_2 = arg_0;
    var_0 = ~min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(1i, u_input.d.x), u_input.a.x), _wgslsmith_clamp_vec3_i32(arg_0.d.yyx, vec3<i32>(var_2.c, u_input.a.x, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_2.d.x, 2147483647i), arg_0.d.wzx))), firstTrailingBit(i32(-1i) * -30293i));
    return vec3<bool>((_wgslsmith_clamp_u32(var_2.b.x, var_2.b.x << (39019u % 32u), _wgslsmith_mult_u32(1850u, arg_0.b.x)) != (2458u << (u_input.c.x % 32u))) | !(_wgslsmith_f_op_f32(938f - var_1.x) <= -703f), all(!select(select(vec4<bool>(false, true, true, var_2.a), vec4<bool>(false, false, arg_0.a, true), vec4<bool>(arg_0.a, var_2.a, arg_0.a, false)), !vec4<bool>(var_2.a, true, arg_0.a, var_2.a), !vec4<bool>(arg_0.a, var_2.a, var_2.a, false))), var_2.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(func_2(arg_1));
    let var_1 = Struct_1(true, arg_1.b, abs(0i), arg_1.d, var_0.e);
    let var_2 = vec4<f32>(739f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(192f)) * _wgslsmith_f_op_f32(min(-426f, 2292f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1431f * 217f), _wgslsmith_f_op_f32(round(-661f)), !arg_1.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(181f, -237f), -260f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-126f, 836f, true)) - _wgslsmith_f_op_f32(-1000f + 753f)) * _wgslsmith_f_op_f32(-102f * -1033f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -426f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f), 279f), var_1.a)), true)));
    var var_3 = arg_1.b.x;
    var var_4 = Struct_1(var_1.a, _wgslsmith_mod_vec3_u32(var_0.b, ~vec3<u32>(4294967295u, 0u, 88516u)), var_1.c, ~select(vec4<i32>(-37300i, 1i, 30870i, u_input.a.x), func_2(Struct_1(arg_1.a, vec3<u32>(28221u, 20490u, var_1.e), arg_3.x, vec4<i32>(16097i, 0i, -1i, arg_3.x), 1u)).d, vec4<bool>(true, false, false, false)) >> (~(~max(vec4<u32>(arg_1.e, 36755u, 46182u, 1u), vec4<u32>(4294967295u, var_1.e, 4294967295u, var_0.b.x))) % vec4<u32>(32u)), 51094u);
    return Struct_1((!(true || var_4.a) & false) & !(!(var_0.c < var_0.d.x)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.e, var_0.b.x, var_4.b.x), ~countOneBits(arg_1.b)), _wgslsmith_sub_i32(2147483647i, abs(~_wgslsmith_mod_i32(17945i, u_input.d.x))), ~u_input.a, var_0.b.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_4(false, Struct_1(any(func_3(func_2(Struct_1(true, u_input.b, u_input.d.x, u_input.a, u_input.e)))), vec3<u32>(1u, max(~u_input.b.x, u_input.b.x), 46073u), _wgslsmith_add_i32(-(~u_input.a.x), ~u_input.a.x), _wgslsmith_mod_vec4_i32(abs(~vec4<i32>(u_input.d.x, 0i, 30194i, -31699i)), vec4<i32>(i32(-1i) * -29377i, u_input.d.x, -73074i, ~(-8521i))), 28074u), u_input.d.x, ~(-vec4<i32>(43624i, u_input.a.x, 0i, 6974i) & u_input.a));
    let var_1 = func_3(func_2(func_2(func_4(!var_0.a, func_2(Struct_1(var_0.a, var_0.b, 1i, u_input.a, u_input.c.x)), _wgslsmith_clamp_i32(var_0.d.x, var_0.d.x, 47142i), u_input.a))));
    let var_2 = Struct_1(true, ~firstLeadingBit(vec3<u32>(var_0.e, 536u, 1u)), -var_0.d.x, vec4<i32>(func_4(true, Struct_1(!var_1.x, var_0.b, 1i | u_input.d.x, -vec4<i32>(40078i, var_0.d.x, 2147483647i, u_input.a.x), _wgslsmith_clamp_u32(u_input.c.x, 21837u, 4294967295u)), _wgslsmith_mod_i32(1i, u_input.d.x), var_0.d).c, abs(-var_0.c), -(~16734i >> (1u % 32u)), firstTrailingBit((i32(-1i) * -44975i) | (var_0.c >> (1u % 32u)))), var_0.b.x);
    let var_3 = _wgslsmith_add_i32(~(-abs(var_0.d.x)), -2147483647i);
    let var_4 = func_4(var_0.a, func_4(false, func_2(var_2), u_input.a.x, var_0.d), -_wgslsmith_sub_i32(2147483647i, ~_wgslsmith_div_i32(1i, var_3)), firstLeadingBit(vec4<i32>(var_0.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_3, var_0.c, var_2.d.x, u_input.a.x), vec4<i32>(-1i, u_input.a.x, -1i, var_3)), u_input.d.x, -63811i)));
    return func_2(func_2(func_4(!func_2(Struct_1(false, var_2.b, var_3, vec4<i32>(u_input.a.x, 0i, -2147483647i, 0i), var_4.b.x)).a, var_4, _wgslsmith_dot_vec3_i32(var_2.d.yxz, var_4.d.zxy << (var_4.b % vec3<u32>(32u))), vec4<i32>(~1i, var_3, -1i, ~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(792f);
    let var_1 = func_4(~abs(func_1(-333f).b.x) >= ~71288u, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1351f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f + -491f) + _wgslsmith_f_op_f32(f32(-1f) * -792f)), func_2(var_0), 1i, ~_wgslsmith_mult_vec4_i32(var_0.d, u_input.a)), ~1i, u_input.a);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-375f))) * _wgslsmith_f_op_f32(-2130f + _wgslsmith_f_op_f32(select(-296f, -1050f, var_1.a)))), _wgslsmith_f_op_f32(max(-920f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f))))), _wgslsmith_div_f32(-156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-985f - -1227f)))));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(~u_input.b.x, ~41898u, var_0.e, var_0.b.x)), ~(~vec4<u32>(u_input.b.x, 1u, 65026u, 0u)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(u_input.b.x, 0u)), _wgslsmith_sub_u32(4294967295u, u_input.e), ~0u, _wgslsmith_add_u32(var_0.b.x, 44636u)) % vec4<u32>(32u))), 3696u, var_0.e, 13839u);
    var_3 = min(abs(min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.e, var_3.x, 11296u, 4294967295u), vec4<u32>(68568u, 18246u, 0u, var_1.b.x)) ^ (vec4<u32>(var_0.b.x, 1u, var_1.b.x, var_3.x) << (vec4<u32>(1u, var_0.b.x, var_3.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.b.x, 1485u, 4294967295u, 15682u), vec4<u32>(var_3.x, 38321u, 36482u, 19893u)))), vec4<u32>(_wgslsmith_sub_u32(var_0.e, var_1.e) & ~var_0.e, ~var_1.e ^ (var_3.x | u_input.e), 4294967295u, u_input.e ^ ~30916u) >> (abs(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, u_input.b.x, u_input.c.x, u_input.b.x), vec4<u32>(var_3.x, var_3.x, 28565u, var_3.x), vec4<u32>(1u, 1u, var_0.e, u_input.b.x)), vec4<u32>(var_3.x, var_0.b.x, var_3.x, var_0.e), !vec4<bool>(var_0.a, var_1.a, false, true))) % vec4<u32>(32u)));
    var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(4294967295u, countOneBits(var_3.x), 4294967295u)), _wgslsmith_dot_vec2_u32(func_4(true, var_0, -52077i, max(~u_input.a, vec4<i32>(var_0.c, -2147483647i, -32162i, var_0.c))).b.xy, var_0.b.zy), func_2(var_1).b.x, func_1(1000f).b.x);
    let var_4 = any(!vec2<bool>(var_1.a, true));
    var_3 = vec4<u32>(~var_3.x, var_0.e, func_2(Struct_1(reverseBits(1i) <= var_0.d.x, ~(~vec3<u32>(49444u, 4294967295u, var_3.x)), 8286i, vec4<i32>(2147483647i, ~var_0.d.x, i32(-1i) * -27650i, i32(-1i) * -2147483647i), _wgslsmith_mod_u32(u_input.b.x, var_1.e) << (u_input.b.x % 32u))).b.x, ~min(~var_0.e, 0u) | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 0u, 35554u)), ~min(vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(var_1.b.x, 18531u, 1u, 4078u))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, (var_1.d.x & abs(-4068i)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d.x, -23984i), _wgslsmith_mult_vec2_i32(var_1.d.xx ^ u_input.a.zy, u_input.a.zx)), 4294967295u, 55i);
}

