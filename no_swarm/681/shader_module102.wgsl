struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = vec2<i32>(u_input.a.x, 1i);
    let var_1 = ~vec4<u32>(7772u, select(~arg_2.b, 47490u, true), 32647u, firstTrailingBit(arg_2.b));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, u_input.a.x), vec4<i32>(var_0.x, -1i, arg_2.a.e, arg_2.a.c.x), vec4<i32>(var_0.x, arg_2.a.e, arg_2.a.e, var_0.x)), (vec4<i32>(2147483647i, u_input.a.x, -25057i, -68726i) << (var_1 % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(var_1, var_1) % vec4<u32>(32u)), false), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-42001i, 45631i, 19429i, u_input.a.x), ~select(vec4<i32>(arg_2.a.c.x, var_0.x, -14479i, arg_2.a.c.x), vec4<i32>(-33034i, var_0.x, var_0.x, 35299i), false))), -(_wgslsmith_dot_vec2_i32(vec2<i32>(7207i, 0i), arg_2.a.c >> (vec2<u32>(var_1.x, 33742u) % vec2<u32>(32u))) >> (var_1.x % 32u)), -20008i);
    var var_3 = _wgslsmith_f_op_f32(step(-168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x)));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(962f)) * _wgslsmith_f_op_f32(exp2(arg_1.x))), _wgslsmith_clamp_vec4_u32(var_1, var_1, ~var_1), vec4<u32>(var_1.x, arg_2.b, 55443u, _wgslsmith_div_u32(min(~arg_2.b, firstLeadingBit(arg_2.b)), _wgslsmith_sub_u32(~arg_2.b, arg_2.b))), arg_2.a.b);
    return select(select(arg_2.c.ywy, vec3<bool>(all(arg_2.a.a), any(vec3<bool>(true, true, arg_2.a.b)), arg_2.a.e >= max(var_2.x, -2147483647i)), select(!arg_2.c.zyw, vec3<bool>(true, var_4.b.x >= 52802u, arg_0 <= var_4.a), arg_2.c.zwx)), !vec3<bool>(true, var_4.d, var_4.d), arg_2.c.xwx);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(303f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f) + -590f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(319f, -1103f, -737f), vec3<f32>(-142f, 1450f, -360f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-183f, -789f, -1216f) * vec3<f32>(-958f, -1000f, 368f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, 1000f, -1006f)))))), Struct_1(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), func_3(-1105f, vec4<f32>(334f, -1272f, 1695f, 555f), Struct_3(Struct_1(vec3<bool>(false, false, true), true, vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(1030f, 397f, -840f, 271f), 2147483647i), 29678u, vec4<bool>(true, true, false, true))), true), func_3(-536f, vec4<f32>(-518f, 846f, -1167f, 106f), Struct_3(Struct_1(vec3<bool>(true, true, true), true, vec2<i32>(1i, u_input.a.x), vec4<f32>(-1510f, 1883f, 1000f, -1155f), u_input.a.x), 1u, vec4<bool>(true, false, false, true))), select(true, false, true) & true), true, -max(vec2<i32>(2147483647i, u_input.a.x), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2875f, -1631f, -904f, 1000f))), vec4<f32>(1635f, 1886f, -1235f, 1615f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1618f, -1808f, -1637f, 847f))))), reverseBits(_wgslsmith_sub_i32(1i, u_input.a.x))), Struct_1(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(104f * -3376f), _wgslsmith_f_op_f32(f32(-1f) * -1424f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, -872f, 137f, 256f)), Struct_3(Struct_1(vec3<bool>(true, false, true), true, vec2<i32>(24646i, u_input.a.x), vec4<f32>(-376f, -1578f, -1610f, -2042f), -68494i), firstLeadingBit(1u), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), !any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x << (0u % 32u), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), i32(-1i) * -3659i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(664f, 197f, 118f, 282f), vec4<f32>(-379f, 1726f, -393f, -1770f), false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-920f, -504f, 804f, -1713f), vec4<f32>(-1334f, 462f, 678f, -344f), vec4<bool>(true, true, false, true))))), ~(-1i)));
    var var_1 = Struct_4(_wgslsmith_sub_i32(u_input.a.x, -99055i), Struct_1(vec3<bool>(false, false, true), !var_0.b.a.x, reverseBits(vec2<i32>(-u_input.a.x, -var_0.c.c.x)), vec4<f32>(_wgslsmith_f_op_f32(1050f * _wgslsmith_f_op_f32(min(1154f, -1668f))), _wgslsmith_div_f32(var_0.c.d.x, -924f), 1418f, -1320f), var_0.b.e), Struct_3(var_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(max(0u, 0u), 1u, 61787u), ~vec3<u32>(1u, 1u, 1u)), select(vec4<bool>(func_3(-721f, var_0.b.d, Struct_3(var_0.c, 3614u, vec4<bool>(var_0.b.b, var_0.c.a.x, var_0.c.b, true))).x, var_0.c.c.x >= 25749i, any(var_0.b.a), func_3(1684f, vec4<f32>(var_0.a.x, -1000f, 1000f, var_0.a.x), Struct_3(Struct_1(var_0.b.a, var_0.b.b, u_input.a, vec4<f32>(var_0.c.d.x, var_0.c.d.x, -264f, var_0.b.d.x), 15437i), 27672u, vec4<bool>(false, var_0.c.a.x, var_0.c.b, var_0.c.a.x))).x), !vec4<bool>(true, true, var_0.c.b, false), vec4<bool>(!var_0.c.a.x, true, var_0.c.a.x, true))), var_0);
    var var_2 = 50837u;
    var_2 = 19497u;
    var var_3 = _wgslsmith_clamp_u32(var_1.c.b, ~_wgslsmith_mod_u32(1u, 80176u), ~var_1.c.b);
    return var_0.b.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = arg_0.b.b;
    var var_1 = 1u;
    var_1 = 8131u;
    var var_2 = abs(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-25418i, -arg_0.b.e, _wgslsmith_mod_i32(arg_1.c.x, arg_0.b.c.x)), vec3<i32>(1i, 1i, 1i))));
    var_2 = ~vec3<i32>(-2147483647i, -(var_2.x ^ -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e, 2147483647i, 3404i) >> (vec3<u32>(23586u, 30172u, 0u) % vec3<u32>(32u)), min(vec3<i32>(-2147483647i, arg_0.c.e, u_input.a.x), vec3<i32>(-10443i, -9935i, var_2.x)))) >> (~(~(~vec3<u32>(18098u, 59341u, 62235u))) % vec3<u32>(32u));
    return Struct_3(Struct_1(arg_0.c.a, arg_1.b, arg_1.c, arg_1.d, arg_1.c.x | -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -14152i), vec2<i32>(20003i, -2147483647i))), 1u, vec4<bool>(arg_1.a.x, true, all(vec4<bool>(var_0, false, var_0, arg_1.a.x)) && (!arg_1.a.x & true), arg_0.b.d.x >= _wgslsmith_f_op_f32(-arg_0.c.d.x)));
}

fn func_1() -> bool {
    let var_0 = func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1573f)), 2033f, 204f), Struct_1(!func_2(), !any(vec4<bool>(true, true, false, false)), min(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(45681i, -50613i)), u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, 833f, 1318f, -334f)), ~_wgslsmith_mult_i32(u_input.a.x, 2147483647i)), Struct_1(vec3<bool>(true, true, true), true, u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(687f, -633f, 530f, 1276f), vec4<f32>(1000f, 231f, -286f, -1944f), vec4<bool>(false, false, false, false)))), countOneBits(17064i))), Struct_1(vec3<bool>(false, true, true), !any(func_3(901f, vec4<f32>(1032f, 1590f, 1000f, 458f), Struct_3(Struct_1(vec3<bool>(true, false, false), false, vec2<i32>(u_input.a.x, -2147483647i), vec4<f32>(-1391f, -325f, 817f, 1000f), -47497i), 4294967295u, vec4<bool>(false, false, true, false))).xz), max(~u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2788f, 434f, 756f, 631f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1873f, 1047f, 295f, 1401f)))) * vec4<f32>(1f, -1440f, _wgslsmith_div_f32(-441f, -1227f), _wgslsmith_f_op_f32(692f + 1330f))), _wgslsmith_clamp_i32(-13857i, u_input.a.x, max(u_input.a.x, u_input.a.x >> (37896u % 32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2135f, 369f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 811f))), true)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, 469f) + vec2<f32>(-831f, 2484f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1974f, 514f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 3124f) - vec2<f32>(1126f, -756f)))))));
    var var_1 = Struct_1(func_3(_wgslsmith_f_op_f32(round(var_0.a.d.x)), _wgslsmith_f_op_vec4_f32(sign(var_0.a.d)), Struct_3(var_0.a, 1u, !var_0.c)), !func_2().x, u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1583f), _wgslsmith_f_op_f32(var_0.a.d.x * var_0.a.d.x), 747f, -1131f)) - _wgslsmith_f_op_vec4_f32(var_0.a.d + _wgslsmith_f_op_vec4_f32(func_4(Struct_2(var_0.a.d.zzx, Struct_1(vec3<bool>(false, false, var_0.c.x), var_0.a.b, vec2<i32>(2147483647i, 1i), var_0.a.d, 0i), var_0.a), Struct_1(vec3<bool>(var_0.c.x, true, true), false, var_0.a.c, var_0.a.d, -14234i), vec2<f32>(var_0.a.d.x, var_0.a.d.x)).a.d + vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x)))), u_input.a.x);
    var_1 = Struct_1(select(select(!(!vec3<bool>(var_0.c.x, false, var_1.a.x)), var_0.c.wyz, vec3<bool>(false, var_0.a.a.x, true && var_0.a.a.x)), var_0.a.a, !var_1.b), true && all(var_1.a.zx), var_0.a.c, var_0.a.d, u_input.a.x);
    var_1 = func_4(Struct_2(vec3<f32>(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(324f + var_1.d.x)), var_0.a.d.x, -1591f), var_0.a, var_0.a), Struct_1(func_4(Struct_2(var_1.d.xzy, func_4(Struct_2(vec3<f32>(var_0.a.d.x, var_1.d.x, var_0.a.d.x), Struct_1(var_0.a.a, var_0.c.x, vec2<i32>(40559i, -1i), vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_1.d.x, var_1.d.x), 43952i), Struct_1(vec3<bool>(var_1.a.x, false, true), var_1.a.x, vec2<i32>(var_1.e, -32537i), vec4<f32>(var_1.d.x, var_0.a.d.x, -1000f, var_0.a.d.x), u_input.a.x)), var_0.a, var_1.d.zy).a, Struct_1(var_1.a, var_1.a.x, var_1.c, vec4<f32>(var_1.d.x, -2242f, var_0.a.d.x, 565f), var_0.a.c.x)), func_4(Struct_2(var_0.a.d.zzw, var_0.a, Struct_1(var_0.c.wyz, true, var_1.c, vec4<f32>(988f, 323f, 2122f, 1090f), 2147483647i)), func_4(Struct_2(var_0.a.d.ywx, Struct_1(vec3<bool>(var_1.a.x, var_1.b, var_1.b), var_0.c.x, vec2<i32>(var_1.c.x, -1i), vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_1.d.x, 724f), -2147483647i), var_0.a), Struct_1(vec3<bool>(true, false, var_0.a.b), false, vec2<i32>(u_input.a.x, 0i), var_1.d, u_input.a.x), var_1.d.yz).a, _wgslsmith_f_op_vec2_f32(step(var_1.d.xw, var_1.d.wx))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.d.x)))).a.a, true, max(vec2<i32>(var_1.c.x ^ -1i, _wgslsmith_mult_i32(var_0.a.e, var_0.a.c.x)), var_0.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, _wgslsmith_f_op_f32(max(var_0.a.d.x, -294f)), -518f, _wgslsmith_f_op_f32(-126f * var_1.d.x)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -348f), func_4(Struct_2(vec3<f32>(-330f, var_0.a.d.x, -252f), Struct_1(var_0.c.xxw, var_1.b, u_input.a, var_0.a.d, -11190i), var_0.a), Struct_1(var_0.c.yxz, var_0.c.x, var_0.a.c, vec4<f32>(var_1.d.x, -463f, var_1.d.x, var_0.a.d.x), u_input.a.x), vec2<f32>(-616f, var_0.a.d.x)).a.d.x, _wgslsmith_f_op_f32(-843f + 1225f), -1386f)), -var_0.a.e), var_0.a.d.yz).a;
    var_1 = func_4(Struct_2(var_1.d.xzw, func_4(Struct_2(var_0.a.d.ywx, func_4(Struct_2(vec3<f32>(var_1.d.x, var_1.d.x, -1893f), var_0.a, var_0.a), var_0.a, var_0.a.d.zz).a, var_0.a), Struct_1(var_1.a, var_0.a.b, select(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(var_1.c.x, 0i), true), var_0.a.d, -1i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a.d.yw * var_0.a.d.wy), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.d.x, 1359f))), var_1.a.x))).a, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, var_1.d.x, var_0.a.d.x)), Struct_1(vec3<bool>(true, var_0.c.x, var_0.a.a.x), var_0.a.a.x, var_1.c, var_0.a.d, 43662i), func_4(Struct_2(var_0.a.d.xxy, var_0.a, var_0.a), Struct_1(vec3<bool>(var_0.c.x, var_0.a.a.x, var_1.b), false, vec2<i32>(-49968i, var_1.c.x), var_0.a.d, -2147483647i), vec2<f32>(-681f, -923f)).a), func_4(Struct_2(vec3<f32>(var_1.d.x, var_0.a.d.x, 1000f), Struct_1(vec3<bool>(true, var_1.a.x, false), var_1.a.x, u_input.a, var_0.a.d, 52032i), var_0.a), func_4(Struct_2(var_0.a.d.zwz, Struct_1(vec3<bool>(true, var_1.a.x, var_0.c.x), true, var_0.a.c, var_0.a.d, u_input.a.x), var_0.a), var_0.a, var_0.a.d.yx).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1419f, 1024f))).a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_0.a.d.zw))))).a), Struct_1(func_3(_wgslsmith_f_op_f32(floor(var_1.d.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(343f)), -1183f, -1102f, 873f), var_0), !func_2().x, firstLeadingBit(abs(var_1.c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_1.d.x, 878f)) + vec4<f32>(var_0.a.d.x, var_1.d.x, var_1.d.x, -1559f)))), _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-2152f)), 594f))))).a;
    return var_0.a.d.x < var_0.a.d.x;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(u_input.a.x, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(386f, -598f, 980f), vec3<f32>(-1271f, -372f, 1000f))))), func_4(Struct_2(vec3<f32>(236f, 416f, -641f), Struct_1(vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x, vec2<i32>(u_input.a.x, 0i), vec4<f32>(787f, -1752f, 225f, -361f), u_input.a.x), Struct_1(vec3<bool>(true, true, true), true, vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(205f, -2135f, 1118f, -1106f), u_input.a.x)), Struct_1(vec3<bool>(arg_1.x, true, arg_1.x), arg_1.x, vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(-447f, -494f, -1952f, 1029f), u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1359f, 1169f))).a, func_4(Struct_2(vec3<f32>(534f, -1266f, -1000f), Struct_1(vec3<bool>(arg_1.x, true, arg_0), arg_1.x, u_input.a, vec4<f32>(-1570f, -1058f, -1000f, -1241f), 0i), Struct_1(vec3<bool>(false, arg_0, false), false, vec2<i32>(u_input.a.x, 48607i), vec4<f32>(907f, 1044f, 1283f, -280f), 6440i)), func_4(Struct_2(vec3<f32>(-596f, -116f, -1000f), Struct_1(vec3<bool>(arg_0, true, true), arg_1.x, u_input.a, vec4<f32>(-653f, 461f, 1000f, -1000f), u_input.a.x), Struct_1(vec3<bool>(arg_0, arg_1.x, arg_1.x), arg_1.x, vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(751f, 392f, -1000f, 1300f), u_input.a.x)), Struct_1(vec3<bool>(arg_1.x, false, true), false, u_input.a, vec4<f32>(533f, -701f, -1392f, -647f), 61100i), vec2<f32>(-1137f, -691f)).a, vec2<f32>(-1589f, -429f)).a), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, 377f, 1187f)), Struct_1(vec3<bool>(true, arg_0, true), true, u_input.a, vec4<f32>(990f, -1000f, -516f, -496f), 2147483647i), Struct_1(vec3<bool>(arg_0, arg_1.x, arg_0), arg_1.x, u_input.a, vec4<f32>(-709f, -317f, 1469f, -714f), 23478i)), Struct_1(!vec3<bool>(arg_1.x, arg_0, true), u_input.a.x == 1i, vec2<i32>(10338i, u_input.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(572f, 1000f, 240f, 450f), vec4<f32>(217f, 1443f, -1998f, -299f)), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1415f, -652f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-228f, 1000f) + vec2<f32>(1055f, -1572f)))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, -3473f))))).a, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(163f, -590f, -346f), vec3<f32>(-662f, 142f, 786f)))), Struct_1(!vec3<bool>(arg_0, arg_1.x, arg_0), arg_1.x, firstTrailingBit(u_input.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-539f, 402f, 214f, -106f))), firstTrailingBit(-1i)), func_4(Struct_2(vec3<f32>(-501f, 1000f, -1340f), Struct_1(vec3<bool>(false, arg_0, false), arg_0, u_input.a, vec4<f32>(1319f, 846f, 876f, -271f), u_input.a.x), Struct_1(vec3<bool>(arg_0, false, arg_0), arg_1.x, vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(-958f, 225f, 129f, -1380f), u_input.a.x)), Struct_1(vec3<bool>(true, arg_1.x, arg_1.x), arg_1.x, vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(780f, -1000f, 602f, -171f), u_input.a.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -2420f)))).a), Struct_1(!func_2(), true, -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.a.x, u_input.a.x)), vec4<f32>(1f, 1f, 1f, 1f), i32(-1i) * -u_input.a.x), vec2<f32>(-622f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(316f, -151f)))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(723f, -1029f, 948f) + vec3<f32>(182f, 1247f, 1535f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(568f, 766f, 1320f) * vec3<f32>(-1898f, -1684f, 770f)))), func_4(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-624f, -989f, -392f), vec3<f32>(-273f, 1112f, 1085f)), func_4(Struct_2(vec3<f32>(346f, -1660f, 1571f), Struct_1(vec3<bool>(arg_1.x, true, false), arg_1.x, vec2<i32>(-2147483647i, u_input.a.x), vec4<f32>(-2266f, 315f, -602f, 1591f), 38907i), Struct_1(vec3<bool>(false, arg_1.x, true), false, u_input.a, vec4<f32>(-898f, 1390f, -421f, 943f), 2147483647i)), Struct_1(vec3<bool>(false, arg_1.x, false), arg_0, u_input.a, vec4<f32>(-1375f, 324f, -546f, -1012f), -5402i), vec2<f32>(1008f, 1115f)).a, Struct_1(vec3<bool>(arg_0, true, arg_1.x), true, u_input.a, vec4<f32>(-758f, 209f, -897f, -2165f), u_input.a.x)), Struct_1(vec3<bool>(false, false, arg_0), false == arg_1.x, firstTrailingBit(u_input.a), vec4<f32>(708f, -1822f, -958f, 314f), _wgslsmith_mult_i32(0i, 7734i)), vec2<f32>(255f, _wgslsmith_f_op_f32(step(1166f, 514f)))).a, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, -157f, 945f)), Struct_1(vec3<bool>(arg_1.x, arg_0, arg_0), arg_1.x, u_input.a, vec4<f32>(-137f, 232f, 1157f, -993f), -5966i), func_4(Struct_2(vec3<f32>(-1483f, -308f, -1282f), Struct_1(vec3<bool>(false, true, arg_1.x), arg_0, u_input.a, vec4<f32>(-814f, -933f, 187f, 269f), 44126i), Struct_1(vec3<bool>(false, arg_0, true), arg_0, vec2<i32>(19822i, -1i), vec4<f32>(2043f, -1772f, -1273f, 1887f), 1i)), Struct_1(vec3<bool>(false, arg_0, false), true, vec2<i32>(-44307i, 1i), vec4<f32>(1825f, 1271f, -179f, -1174f), -1i), vec2<f32>(1000f, 1289f)).a), Struct_1(!vec3<bool>(false, arg_1.x, false), true, abs(u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(1074f, 1014f, -471f, -1139f), vec4<f32>(1209f, 359f, -554f, -452f)), u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-955f, -431f) + vec2<f32>(-2100f, -846f)))).a));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(any(vec4<bool>(false, true, true, true)), func_1(), false, any(vec4<bool>(false, false, true, false))))), vec2<bool>(true, any(func_4(Struct_2(vec3<f32>(-767f, 190f, 1000f), Struct_1(vec3<bool>(true, false, true), false, u_input.a, vec4<f32>(1803f, -1019f, -468f, 1451f), 2147483647i), Struct_1(vec3<bool>(false, true, false), false, vec2<i32>(u_input.a.x, 1i), vec4<f32>(799f, -940f, 1283f, -1922f), u_input.a.x)), func_4(Struct_2(vec3<f32>(-249f, 587f, 2003f), Struct_1(vec3<bool>(false, true, false), true, u_input.a, vec4<f32>(1000f, -797f, -423f, -1344f), u_input.a.x), Struct_1(vec3<bool>(false, false, false), true, u_input.a, vec4<f32>(497f, 373f, 489f, -876f), -1i)), Struct_1(vec3<bool>(false, true, false), false, u_input.a, vec4<f32>(544f, -1288f, 215f, 478f), -3980i), vec2<f32>(631f, -1263f)).a, vec2<f32>(350f, 543f)).a.a.zy)));
    let var_1 = var_0.c.d.x;
    let var_2 = select(vec3<bool>(true, var_0.c.b, var_0.b.a.x), func_3(_wgslsmith_div_f32(var_0.c.d.x, -1589f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_1, 1145f, var_1))))), Struct_3(func_4(var_0, var_0.c, vec2<f32>(var_0.a.x, 1568f)).a, 1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20150u, 1u), vec3<u32>(13821u, 30440u, 4294967295u)) % 32u), func_4(var_0, var_0.b, var_0.a.xz).c)), func_5(var_0.b.a.x && func_2().x, var_0.b.a.zz).b.a.x);
    var var_3 = _wgslsmith_mod_i32(var_0.b.e, ~1i);
    let var_4 = ~vec2<u32>(select(14171u, firstTrailingBit(0u), true && func_5(var_2.x, var_2.zx).c.a.x), select(1u, 1u, any(var_2.zz)) | 39025u);
    var var_5 = var_0.b.c;
    let var_6 = _wgslsmith_mult_u32(var_4.x, _wgslsmith_dot_vec2_u32(var_4, var_4));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, ~var_6));
}

