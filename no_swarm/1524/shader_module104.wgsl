struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2134f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(min(~(~vec2<u32>(u_input.e, 0u)) << (~firstTrailingBit(vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)), (firstTrailingBit(vec2<u32>(1u, u_input.b)) << (max(vec2<u32>(703u, 0u), vec2<u32>(u_input.e, 44413u)) % vec2<u32>(32u))) ^ vec2<u32>(max(u_input.e, u_input.b), u_input.d)), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.d & 18669u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 1u, u_input.b)), ~vec3<u32>(u_input.e, u_input.d, 1u))), u_input.e));
    let var_1 = ~(~vec2<u32>(var_0.x, 10355u));
    let var_2 = u_input.d;
    return reverseBits(30292i) > ~reverseBits(_wgslsmith_clamp_i32(-u_input.c, -u_input.a.x, select(u_input.a.x, -13457i, true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(arg_1.c.c.x * _wgslsmith_f_op_f32(abs(arg_1.c.c.x)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.a.c.x, -342f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1006f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-440f + -314f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-113f, 997f, arg_1.a.a)))))), arg_1.c.a));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f + _wgslsmith_f_op_f32(1271f + arg_1.b)))), arg_1.a.c.x, true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.b)))));
    var var_0 = arg_1.c.b;
    return _wgslsmith_f_op_vec3_f32(-var_0.d.c);
}

fn func_2(arg_0: u32) -> i32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(156f * 2676f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(718f, 1f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-798f, -1357f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f - -1154f)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1037f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1517f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(trunc(2043f))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(func_4(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(6044u, u_input.e, 4294967295u), vec3<u32>(arg_0, 0u, 9572u)), vec3<u32>(arg_0, 0u, 8375u)), Struct_4(Struct_1(any(vec4<bool>(false, true, true, true)), select(false, false, false), vec3<f32>(-640f, 228f, var_0.x), ~vec4<i32>(u_input.c, -2828i, -56022i, -33989i)), 1722f, Struct_3(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), Struct_2(vec3<i32>(u_input.a.x, 1i, u_input.c), vec3<u32>(6835u, u_input.e, arg_0), Struct_1(false, true, vec3<f32>(843f, -1477f, 818f), vec4<i32>(u_input.c, u_input.c, -1i, 13264i)), Struct_1(false, true, vec3<f32>(355f, 2137f, 404f), vec4<i32>(u_input.c, 1i, -34751i, u_input.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-503f, 351f, var_0.x) + vec3<f32>(var_0.x, 869f, -428f)), vec2<u32>(u_input.d, 4294967295u) & vec2<u32>(4294967295u, arg_0), func_3()), true), 4294967295u)), vec4<bool>(func_3(), true, select(~u_input.e, _wgslsmith_add_u32(109553u, arg_0), u_input.a.x == u_input.a.x) >= ~(~arg_0), select(true, true, true)), ((u_input.a.x >> (u_input.b % 32u)) | u_input.a.x) & (u_input.c & reverseBits(0i)), max(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.c, u_input.c, 1343i, 2147483647i)), firstLeadingBit(vec4<i32>(-19787i, 62823i, 42684i, u_input.c) ^ vec4<i32>(u_input.c, 1i, 31230i, u_input.a.x))) >> (~(~abs(vec4<u32>(arg_0, u_input.d, arg_0, 32373u))) % vec4<u32>(32u)));
    global0 = var_0.x;
    return var_1.c;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec3<bool>) -> bool {
    let var_0 = arg_1.c.b;
    let var_1 = vec4<bool>(arg_1.a.a & !arg_2.x, arg_2.x, !(!(!(arg_0 > -2147483647i))), !(!var_0.d.b));
    var var_2 = firstLeadingBit(arg_1.c.b.d.d);
    var_2 = (vec4<i32>(-1i) * -(firstTrailingBit(vec4<i32>(u_input.c, -2147483647i, -1i, arg_1.c.b.d.d.x)) ^ min(arg_1.a.d, var_0.c.d))) & arg_1.a.d;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1218f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.c.x, _wgslsmith_f_op_f32(-arg_1.c.c.x)))), true)));
    return any(select(select(vec2<bool>(true, all(vec3<bool>(true, true, false))), var_1.zy, true | var_1.x), !(!vec2<bool>(true, var_1.x)), any(select(!vec3<bool>(false, var_1.x, arg_1.a.b), vec3<bool>(true, false, var_0.d.b), arg_2))));
}

fn func_1() -> f32 {
    var var_0 = -120f;
    var var_1 = func_5(func_2(1u), Struct_4(Struct_1(true, u_input.c < -1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(326f, -1197f, 1459f), vec3<f32>(-1994f, 434f, 564f), true)), vec4<i32>(-14326i, u_input.c, -2603i, u_input.c) ^ vec4<i32>(u_input.c, -26739i, -1i, u_input.a.x)), _wgslsmith_f_op_f32(-323f + 2034f), Struct_3(-885f, Struct_2(vec3<i32>(2147483647i, u_input.a.x, -24880i), vec3<u32>(1652u, 0u, 1u), Struct_1(true, true, vec3<f32>(656f, -1633f, 1014f), vec4<i32>(u_input.c, u_input.c, u_input.a.x, -4425i)), Struct_1(true, true, vec3<f32>(1135f, 361f, 1705f), vec4<i32>(26096i, -26908i, u_input.a.x, 1i))), vec3<f32>(-586f, 1214f, -446f), vec2<u32>(4294967295u, u_input.b), true), true && select(false, false, true)), vec3<bool>(select(u_input.c == 1i, true, true), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)))) | (any(vec3<bool>(func_3(), true, func_3())) != true);
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f) + _wgslsmith_f_op_f32(floor(141f))))), Struct_2(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-7232i, 49056i, u_input.a.x), vec3<i32>(u_input.a.x, -25128i, u_input.c))), ~reverseBits(u_input.c), -u_input.a.x | ~u_input.c), ~(~vec3<u32>(u_input.b, u_input.d, u_input.e)), Struct_1(false, true, vec3<f32>(1f, 1f, 1f), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, 2147483647i)), ~vec4<i32>(u_input.c, u_input.c, -21088i, u_input.c))), Struct_1(true, true, _wgslsmith_f_op_vec3_f32(func_4(~vec3<u32>(80498u, u_input.d, 0u), Struct_4(Struct_1(false, false, vec3<f32>(531f, -1000f, 1000f), vec4<i32>(-20844i, -3245i, u_input.c, -40244i)), 919f, Struct_3(228f, Struct_2(vec3<i32>(u_input.a.x, u_input.c, 2147483647i), vec3<u32>(u_input.d, u_input.e, 1u), Struct_1(false, false, vec3<f32>(-2439f, 345f, -352f), vec4<i32>(u_input.c, u_input.c, u_input.c, -45342i)), Struct_1(true, false, vec3<f32>(821f, 435f, 1418f), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 2147483647i))), vec3<f32>(1234f, -1000f, 1105f), vec2<u32>(u_input.e, 1u), true), false), 71630u)), -(vec4<i32>(u_input.c, 1i, u_input.a.x, 50480i) | vec4<i32>(u_input.a.x, u_input.c, u_input.c, 0i)))), vec3<f32>(1754f, 820f, _wgslsmith_f_op_f32(sign(-2084f))), countOneBits(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(u_input.d, 53589u)), min(countOneBits(vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(4294967295u, u_input.d)))), all(vec2<bool>(true, true)));
    var var_3 = Struct_4(Struct_1(var_2.b.d.a, var_2.e, vec3<f32>(var_2.b.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x + -588f) * _wgslsmith_f_op_f32(floor(289f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.d.c.x))), vec4<i32>(-2147483647i, -10182i ^ -u_input.c, firstLeadingBit(abs(2147483647i)), _wgslsmith_mod_i32(35031i, min(2147483647i, u_input.c)))), _wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1602f, _wgslsmith_f_op_f32(sign(636f))))), Struct_3(969f, Struct_2(vec3<i32>(u_input.c << (1u % 32u), reverseBits(35210i), abs(32567i)), min(_wgslsmith_clamp_vec3_u32(var_2.b.b, var_2.b.b, vec3<u32>(20074u, 43659u, 1u)), abs(var_2.b.b)), var_2.b.d, var_2.b.c), vec3<f32>(-1360f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2.c.x, var_2.b.d.c.x)))), _wgslsmith_f_op_f32(-283f - -533f)), _wgslsmith_clamp_vec2_u32((vec2<u32>(25637u, 59991u) >> (var_2.b.b.yz % vec2<u32>(32u))) << (select(var_2.d, var_2.b.b.zy, vec2<bool>(var_2.e, false)) % vec2<u32>(32u)), var_2.b.b.zz | vec2<u32>(var_2.d.x, u_input.b), ~(~var_2.b.b.zy)), func_5(i32(-1i) * -20199i, Struct_4(Struct_1(var_2.e, true, vec3<f32>(261f, var_2.b.d.c.x, 1930f), var_2.b.c.d), _wgslsmith_f_op_f32(f32(-1f) * -1014f), Struct_3(var_2.b.d.c.x, var_2.b, vec3<f32>(var_2.a, var_2.c.x, -784f), vec2<u32>(var_2.d.x, 45207u), true), true), vec3<bool>(!var_2.e, var_2.b.c.c.x > -376f, true))), any(vec2<bool>(true, func_3())));
    var_0 = -715f;
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1f)))) - _wgslsmith_f_op_f32(f32(-1f) * -2259f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f)));
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-593f, -1438f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1701f - -585f) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_div_f32(1017f, 1017f)))), vec4<bool>(true, true, true, true), _wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), ~reverseBits(vec4<i32>(0i, i32(-1i) * -6156i, _wgslsmith_clamp_i32(u_input.a.x, u_input.c, u_input.a.x), _wgslsmith_add_i32(u_input.c, u_input.c))));
    var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f * var_0.a.x))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_0.a.x) * _wgslsmith_f_op_f32(func_1()))), var_0.a.x), select(!vec4<bool>(false, true, var_0.a.x < -1061f, var_0.b.x), vec4<bool>(true, all(!var_0.b.yy), var_0.b.x, !var_0.b.x), true), u_input.c, _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_0.d, ~firstTrailingBit(var_0.d)), vec4<i32>(firstTrailingBit(42500i), _wgslsmith_mod_i32(50285i, firstLeadingBit(20192i)), 80542i >> (u_input.e % 32u), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(f32(-1f) * -1168f));
}

