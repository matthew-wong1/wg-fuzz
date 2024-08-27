struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = vec4<u32>(~max(arg_0.b, 75389u), 50140u, ~16436u, _wgslsmith_clamp_u32(firstLeadingBit(33581u & arg_0.b), arg_1.x, ~u_input.a));
    var var_1 = all(select(vec2<bool>((0i & arg_0.a) <= arg_0.a, 4294967295u < reverseBits(var_0.x)), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, false, false))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true))), true));
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 21438u, ~u_input.a), ~38841u, (4294967295u & var_0.x) | ~1u), var_0.xzw), ~_wgslsmith_sub_u32(23193u << (~arg_1.x % 32u), ~arg_0.b >> (_wgslsmith_mult_u32(84503u, u_input.b) % 32u)), 86730u, arg_1.x);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1462f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-411f * -688f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1704f - _wgslsmith_f_op_f32(-1312f + _wgslsmith_f_op_f32(min(-661f, -114f))))))));
    let var_2 = ~var_0.wy;
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    return _wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b & u_input.b, 58237u), func_3(Struct_2(u_input.e, 0u), vec2<u32>(u_input.a, 3303u)))), _wgslsmith_dot_vec2_u32(firstLeadingBit(~firstLeadingBit(vec2<u32>(62603u, u_input.a))), firstLeadingBit(vec2<u32>(27874u, u_input.b))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(58990i, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1526f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(972f, -177f, -1568f), vec3<f32>(507f, -361f, 393f))))), -(~u_input.d.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1086f, 1026f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(562f, 679f, true))), _wgslsmith_f_op_f32(floor(2082f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1441f, 760f, 979f) - vec3<f32>(-799f, 1000f, 1000f)) + vec3<f32>(-1919f, _wgslsmith_f_op_f32(f32(-1f) * -186f), 2424f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
    var var_2 = vec4<u32>(32150u, ~40111u, _wgslsmith_div_u32(u_input.b, var_0.b), ~(~(~var_0.b)));
    global0 = -531f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.a.x, -668f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1109f, var_1.a.x, 1000f)))), -341f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f)))), arg_0.b);
    global1 = (u_input.d.x ^ u_input.d.x) ^ (5929i << ((u_input.a ^ _wgslsmith_mult_u32(52836u, ~u_input.b)) % 32u));
    global1 = countOneBits(1i);
    global1 = firstTrailingBit(~u_input.c) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~select(vec4<u32>(34058u, 42969u, u_input.b, u_input.a), vec4<u32>(1u, 1u, u_input.a, u_input.b), false), ~(~vec4<u32>(u_input.b, 1u, u_input.b, u_input.a))), ~_wgslsmith_div_vec4_u32(vec4<u32>(12186u, 0u, 10027u, u_input.a), max(vec4<u32>(u_input.b, 41319u, u_input.b, u_input.b), vec4<u32>(u_input.a, 11195u, u_input.a, u_input.b)))) % 32u);
    var var_0 = arg_0;
    return func_1();
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    global1 = countOneBits(-(~_wgslsmith_add_i32(firstLeadingBit(u_input.d.x), -1i)));
    let var_0 = u_input.b;
    global1 = -arg_0.a;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_3.a, vec3<f32>(arg_3.b, 259f, -530f)))), _wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.x, 548f, arg_2.x), vec3<f32>(-660f, 310f, 283f)))))), _wgslsmith_div_f32(-946f, _wgslsmith_f_op_f32(select(arg_2.x, -546f, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))))));
    let var_2 = vec4<bool>(false, true, true, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)))));
    return arg_0;
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(-1524f, func_1().b);
    var var_1 = vec2<bool>(false, arg_0.x || true);
    let var_2 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(~0i, arg_1), _wgslsmith_dot_vec2_i32(u_input.d.yx ^ vec2<i32>(u_input.e, u_input.d.x), vec2<i32>(-2147483647i, u_input.d.x))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(i32(-1i) * -11782i, -u_input.c), min(-9932i, select(2147483647i, 0i, arg_0.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 12125i, 2147483647i), u_input.d), -2147483647i))), select(~u_input.a, 1u, all(arg_0)));
    global1 = func_5(arg_2, reverseBits(min(vec3<u32>(4294967295u, var_2.b, 1u), reverseBits(vec3<u32>(17725u, 101878u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1536f), _wgslsmith_f_op_f32(-540f * 219f), _wgslsmith_f_op_f32(abs(1748f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1257f, 951f, -588f))) - vec3<f32>(-743f, 1368f, -1009f)), -1142f)).a << (firstLeadingBit(arg_2.b) % 32u);
    var var_3 = func_1();
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(-var_3.a.x), var_3.b) * var_3.a), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-791f, 948f, -242f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(756f, -868f, 864f) + vec3<f32>(-683f, -1000f, 990f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1184f, -962f, -713f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(481f, 1386f, -1465f), vec3<f32>(889f, 392f, 375f), false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1153f, -241f))) * 1394f)));
    var_0 = func_6(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.b >= var_0.b), 2908i, func_5(Struct_2(~(~1i), ~4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 2066u, u_input.b), ~vec3<u32>(4294967295u, u_input.b, 4294967295u)) & ~(~vec3<u32>(u_input.a, u_input.a, u_input.b)), var_0.a, func_4(Struct_1(vec3<f32>(917f, -118f, var_0.b), _wgslsmith_f_op_f32(trunc(var_0.a.x))), func_1())), -_wgslsmith_add_i32(min(_wgslsmith_mod_i32(0i, u_input.c), u_input.d.x), 16658i));
    let var_1 = 597f;
    let var_2 = Struct_2(_wgslsmith_dot_vec4_i32(max(~vec4<i32>(u_input.e, u_input.c, -10293i, u_input.c), countOneBits(vec4<i32>(u_input.c, u_input.e, 1i, -7311i))) >> (~(vec4<u32>(4294967295u, 4294967295u, u_input.a, 2202u) & vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, u_input.c), vec4<i32>(2147483647i, u_input.c, 1i, -2167i)) ^ vec4<i32>(max(u_input.e, u_input.d.x), 19825i & u_input.e, 2147483647i << (u_input.a % 32u), abs(u_input.e))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 34876u, 0u), vec4<u32>(u_input.b, 1u, u_input.a, 55730u)), vec4<u32>(19574u >> (0u % 32u), 14949u, 0u, 0u)), firstLeadingBit(~4294967295u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(var_0.a, var_0.a.x), Struct_1(var_0.a, var_1)).a * vec3<f32>(var_1, 1000f, var_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(859f + var_0.a.x), 509f, 490f))) - _wgslsmith_f_op_vec3_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(-1533f + var_1));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(round(-1053f)), -985f), !vec3<bool>(false, true, all(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1047f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(vec2<bool>(true, true), u_input.c, Struct_2(u_input.e, 1u), 1i).b) + -317f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(func_6(vec2<bool>(false, false), var_2.a, Struct_2(u_input.e, 36975u), ~var_2.a).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))))));
}

