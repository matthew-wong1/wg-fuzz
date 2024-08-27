struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_4,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-1272f * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~abs(abs(vec4<u32>(6318u, u_input.a.x, 679u, 45220u))), _wgslsmith_f_op_f32(f32(-1f) * -120f), ~firstLeadingBit(_wgslsmith_div_u32(u_input.b, u_input.a.x))), abs(-vec3<i32>(u_input.c, abs(-14815i), -2147483647i)), ~(~40837u), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(650f, 2146f, 786f) * vec3<f32>(1000f, -747f, -418f)))))), ~vec4<u32>(~4294967295u, select(0u, 1u, false), ~0u, _wgslsmith_add_u32(u_input.b, u_input.a.x)), _wgslsmith_f_op_f32(floor(-1346f)), 1u), _wgslsmith_add_vec3_u32(vec3<u32>(min(u_input.b, 1u), max(1u, 17000u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 5756u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4698u, 0u, u_input.b))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(43666u, u_input.a.x, 40368u) << (vec3<u32>(u_input.a.x, 17465u, 31450u) % vec3<u32>(32u)), vec3<u32>(912u, u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), vec3<u32>(u_input.b, 83264u, u_input.b))), vec3<u32>(17939u, 4294967295u, 4294967295u) >> (~vec3<u32>(1u, 1518u, u_input.b) % vec3<u32>(32u)))));
    var var_1 = max(~var_0.c | _wgslsmith_mod_u32(~_wgslsmith_add_u32(39924u, 0u), 45473u), ~_wgslsmith_add_u32(u_input.b, u_input.a.x));
    let var_2 = select(select(select(vec4<bool>(true, var_0.d.a.x <= -344f, true, any(vec2<bool>(true, false))), vec4<bool>(all(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, false, false, false)), true), _wgslsmith_f_op_f32(-var_0.a.c) == _wgslsmith_f_op_f32(max(var_0.a.c, 142f))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, false, true))), vec4<bool>(!(true & any(vec3<bool>(false, true, false))), all(vec3<bool>(true, true, true)), true, !select(true, false, true)), vec4<bool>(true, u_input.b <= (u_input.b << (~11708u % 32u)), any(vec3<bool>(true, true, true)) & (60840u < ~u_input.a.x), false));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1280f, 844f, var_0.d.c))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(952f, -159f, 196f), vec3<f32>(1000f, var_0.d.c, 1825f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a), var_0.d.a) + vec3<f32>(_wgslsmith_f_op_f32(-475f + var_0.a.a.x), var_0.d.a.x, -1000f))), ~var_0.a.b, 540f, u_input.a.x >> (0u % 32u));
    let var_4 = var_3.a.x;
    return -364f;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> vec3<f32> {
    var var_0 = (~(min(-4284i, u_input.d.x) << (~u_input.b % 32u)) & 0i) & ~reverseBits(reverseBits(-14094i));
    let var_1 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(func_3()));
    var_0 = arg_0.x;
    var_0 = _wgslsmith_sub_i32(u_input.c, (max(-arg_0.x, 0i) | _wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.c >> (u_input.b % 32u))) | ~max(u_input.d.x, 26626i));
    var_0 = 28559i;
    return vec3<f32>(299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * 555f))) - _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, -606f))))) + _wgslsmith_f_op_f32(round(var_1))), -632f);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-309f * -558f)) * arg_2)));
    return Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, arg_2, var_0))))) + _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, u_input.c), vec3<i32>(u_input.d.x, -8428i, u_input.c)), vec4<f32>(1000f, var_0, -927f, -722f)))), abs(vec4<u32>(firstTrailingBit(u_input.b), ~29131u, max(u_input.a.x, 1u), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + 1060f) * var_0), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 20053u, 68629u) | vec4<u32>(29944u, 30205u, u_input.b, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b), vec4<u32>(25276u, u_input.a.x, u_input.b, u_input.b)))), !(!select(vec2<bool>(arg_0, arg_1), select(vec2<bool>(false, true), vec2<bool>(arg_1, arg_1), true), !vec2<bool>(arg_1, false))), Struct_4(u_input.d.x, ~_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 6375u, 1u)), vec3<u32>(u_input.a.x, 4294967295u, 16611u) << (vec3<u32>(u_input.a.x, 1308u, 4294967295u) % vec3<u32>(32u))), var_0, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_2, arg_2)), vec3<f32>(arg_2, 1400f, 1681f))), ~vec4<u32>(u_input.b, u_input.b, 1u, u_input.a.x) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 71175u, 16119u, 10222u), vec4<u32>(1u, 4797u, u_input.b, u_input.a.x)), _wgslsmith_f_op_f32(floor(arg_2)), ~(~u_input.a.x))), vec4<bool>(arg_0, any(vec3<bool>(all(vec3<bool>(arg_0, false, arg_0)), all(vec4<bool>(arg_1, true, false, arg_0)), select(arg_0, true, false))), arg_1, false), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1209f, -486f, -355f)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.b, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.b, 41227u, 80006u, 25778u)), 1204f, ~1u), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-283f, -827f, -1743f)), reverseBits(vec4<u32>(0u, u_input.a.x, 3941u, 33602u)), _wgslsmith_div_f32(1046f, -950f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 72611u, 3631u, u_input.b), vec4<u32>(u_input.a.x, 27217u, u_input.a.x, u_input.b))), countOneBits(vec3<i32>(-1i, 68727i, -51750i)), _wgslsmith_mult_u32(countOneBits(u_input.a.x), 0u), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1304f, 1000f, arg_2)), vec4<u32>(u_input.b, 9780u, u_input.b, u_input.a.x), -178f, u_input.b), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 0u), min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 113246u), vec4<u32>(50894u, 37790u, 1u, 1u)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-761f + var_0), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -467f)), vec4<u32>(~u_input.a.x, abs(u_input.a.x), 39204u | u_input.b, ~69133u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * -1000f), _wgslsmith_mult_u32(u_input.a.x, u_input.b)), arg_0, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 279f, -1368f)), ~vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(1000f + 1060f), ~4294967295u), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -38309i, u_input.c), vec3<i32>(u_input.c, -3218i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 5295i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, -7669i))), u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-782f, 438f, -1005f), vec3<f32>(1101f, -241f, var_0))), ~vec4<u32>(u_input.b, u_input.a.x, 63840u, u_input.b), _wgslsmith_f_op_f32(sign(1000f)), ~0u), min(vec3<u32>(u_input.b, 0u, 1u) ^ vec3<u32>(u_input.a.x, u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_5, arg_3: Struct_5) -> Struct_4 {
    var var_0 = arg_3;
    var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-359f, arg_3.c.c, 1000f, arg_2.e.a.c)))))) + vec4<f32>(arg_2.e.c.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.c, -1000f)), _wgslsmith_f_op_f32(abs(arg_3.c.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.c + arg_2.c.d.a.x)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)), arg_2.c.c, var_0.c.d.a.x, 820f))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f), 1227f)));
    var_0 = Struct_5(func_1(var_0.d.x, arg_3.b.x, _wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(-1i) * -arg_3.e.b.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1), var_1))).x).c.d, arg_3.b, func_1(any(arg_3.d.zwz), true, _wgslsmith_f_op_vec3_f32(func_2(var_0.e.b.b, var_1)).x).c, vec4<bool>(select(arg_3.b.x, any(arg_2.d.yz), arg_0 && true), false, true, !(!(!arg_2.e.d))), func_1(any(arg_3.d.zyy), !(!arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_3.e.e.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -359f, var_0.c.d.c, -274f)))).x)).e);
    return arg_2.c;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e.a.a.x + _wgslsmith_div_f32(733f, 717f))) - 1372f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(396f, -796f), _wgslsmith_f_op_f32(106f * _wgslsmith_div_f32(arg_1.d.a.x, 758f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2305f + arg_3.a.c) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_dot_vec4_u32(arg_3.b.a.b, vec4<u32>(1u, arg_2, arg_3.b.a.d, arg_1.b.x)) > 1u)))));
    var var_1 = arg_2 << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_3.c.b.yx, select(arg_3.e.e.zy, ~arg_1.b.zy, vec2<bool>(true, true))), func_1(arg_3.d, !all(vec3<bool>(arg_3.d, arg_3.d, true)), _wgslsmith_f_op_f32(abs(-831f))).c.b.x) % 32u);
    let var_2 = arg_3.b.b.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.b.a.a);
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.a.a);
    return func_1(!(false != all(select(vec4<bool>(arg_3.d, arg_3.d, true, true), vec4<bool>(arg_3.d, false, arg_3.d, false), vec4<bool>(arg_3.d, false, false, true)))), true, 473f).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x))));
    let var_1 = ~_wgslsmith_div_u32(40865u, abs(_wgslsmith_sub_u32(~4294967295u, ~u_input.b)));
    var_0 = vec3<u32>(4294967295u, 0u << (_wgslsmith_add_u32(var_0.x, u_input.a.x) % 32u), ~(~_wgslsmith_mult_u32(var_1, var_0.x)) ^ u_input.b);
    var_0 = select(vec3<u32>(~(~1u) ^ _wgslsmith_sub_u32(0u & u_input.a.x, 27551u), 4294967295u, _wgslsmith_add_u32(1u, ~(~var_0.x))), firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(6235u, 4294967295u, 0u), vec3<u32>(var_1, 28473u, 8157u)), vec3<u32>(15874u, u_input.b, var_1), ~vec3<u32>(var_0.x, 0u, var_1)))), any(vec3<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), true)));
    let var_2 = ~(-2147483647i);
    var_0 = vec3<u32>(4294967295u, u_input.b, var_0.x);
    let var_3 = Struct_5(func_5(vec2<f32>(1f, 1f), func_4(all(vec4<bool>(true, true, true, true)), ~_wgslsmith_sub_u32(62422u, var_1), func_1(true, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -819f)), func_1(all(vec2<bool>(true, true)), true, -243f)), ~34942u, func_1(_wgslsmith_f_op_f32(func_3()) >= 824f, !any(vec3<bool>(false, false, true)), -288f).e), !func_1(all(func_1(true, false, -735f).d.xyz), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1168f - 643f) + 510f)).d.xz, func_4(true != any(vec4<bool>(true, false, true, false)), _wgslsmith_clamp_u32(func_5(vec2<f32>(-224f, -1786f), Struct_4(-12690i, vec3<u32>(u_input.b, var_1, 1u), 778f, Struct_1(vec3<f32>(1152f, 150f, 213f), vec4<u32>(78206u, 4294967295u, 14216u, 67727u), -1673f, u_input.b)), 7888u, Struct_3(Struct_1(vec3<f32>(921f, -1000f, -1000f), vec4<u32>(var_1, var_1, var_0.x, u_input.a.x), 699f, 21818u), Struct_2(Struct_1(vec3<f32>(-645f, -1001f, 1056f), vec4<u32>(u_input.b, var_1, 4294967295u, 0u), 391f, u_input.a.x), vec3<i32>(12615i, u_input.d.x, -25449i), var_1, Struct_1(vec3<f32>(-1000f, -899f, 2522f), vec4<u32>(var_1, u_input.a.x, 5097u, var_0.x), 217f, u_input.b), vec3<u32>(13314u, var_0.x, var_0.x)), Struct_1(vec3<f32>(-653f, 1990f, 1262f), vec4<u32>(var_1, 67737u, 24093u, 30071u), -776f, 39324u), true, Struct_2(Struct_1(vec3<f32>(2172f, -1000f, 894f), vec4<u32>(u_input.b, var_0.x, var_1, 90498u), 235f, u_input.b), vec3<i32>(var_2, var_2, 0i), 1u, Struct_1(vec3<f32>(432f, 253f, -462f), vec4<u32>(1u, u_input.b, var_0.x, u_input.a.x), 440f, var_0.x), vec3<u32>(13915u, 26545u, 5301u)))).b.x & ~u_input.b, _wgslsmith_sub_u32(127208u, u_input.a.x) | _wgslsmith_sub_u32(var_0.x, u_input.b), var_0.x), func_1(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), any(vec3<bool>(true, false, true)) & false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1135f)))), Struct_5(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, 789f)), Struct_4(1i, vec3<u32>(var_1, var_0.x, u_input.b), -1262f, Struct_1(vec3<f32>(628f, 341f, -2263f), vec4<u32>(var_0.x, 5318u, 1389u, var_0.x), -2131f, var_0.x)), 4294967295u, func_1(false, true, -1439f).e), func_1(true, true, 396f).d.yz, func_4(any(vec4<bool>(true, true, false, true)), _wgslsmith_add_u32(var_1, u_input.a.x), Struct_5(Struct_1(vec3<f32>(-226f, 1192f, -169f), vec4<u32>(var_0.x, 4294967295u, var_1, 1u), 1190f, 26386u), vec2<bool>(true, false), Struct_4(20798i, vec3<u32>(4294967295u, 5500u, var_1), -312f, Struct_1(vec3<f32>(-393f, -1000f, 742f), vec4<u32>(4294967295u, 44304u, var_1, 1u), 130f, var_0.x)), vec4<bool>(false, false, false, true), Struct_3(Struct_1(vec3<f32>(784f, -1152f, -947f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, var_1), -2343f, 1u), Struct_2(Struct_1(vec3<f32>(1398f, 1012f, 552f), vec4<u32>(u_input.b, 1u, 4294967295u, var_1), 299f, var_1), vec3<i32>(22599i, u_input.d.x, var_2), var_0.x, Struct_1(vec3<f32>(-898f, 277f, 656f), vec4<u32>(61105u, u_input.b, 1u, u_input.b), 570f, var_1), vec3<u32>(var_0.x, u_input.b, u_input.b)), Struct_1(vec3<f32>(-1000f, 1622f, -1516f), vec4<u32>(u_input.b, u_input.a.x, 37653u, 16339u), 1263f, var_0.x), false, Struct_2(Struct_1(vec3<f32>(-1261f, -1272f, 335f), vec4<u32>(91823u, 0u, var_1, 70201u), 685f, 4294967295u), vec3<i32>(var_2, -1i, u_input.c), u_input.a.x, Struct_1(vec3<f32>(-2126f, -1942f, -126f), vec4<u32>(var_1, var_1, var_1, u_input.a.x), -1163f, 1u), vec3<u32>(var_1, var_1, var_1)))), func_1(true, false, -689f)), vec4<bool>(true, true, false, true), func_1(true, true, _wgslsmith_f_op_f32(step(694f, -131f))).e)), select(!vec4<bool>(true, true, 1801u != var_1, true), vec4<bool>(true, true, true, true), false), Struct_3(Struct_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_1, var_1, u_input.b) | vec4<u32>(var_0.x, 1u, var_0.x, 16791u), vec4<u32>(u_input.b, var_0.x, u_input.a.x, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f * 428f)), var_1), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(718f, -229f, 1484f) - vec3<f32>(-699f, -769f, -1813f)), vec4<u32>(4294967295u, 61019u, var_1, 0u), _wgslsmith_f_op_f32(max(-1458f, 504f)), 14424u), vec3<i32>(~13526i, i32(-1i) * -17366i, select(u_input.c, 0i, false)), 4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1770f, 191f, 976f) * vec3<f32>(-613f, -933f, 1416f)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 53400u, var_0.x, 39390u), vec4<u32>(8666u, 1u, 1u, 36610u)), _wgslsmith_f_op_f32(ceil(987f)), countOneBits(101070u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(24764u, 4294967295u, 1u), vec3<u32>(var_1, u_input.a.x, var_1), vec3<u32>(34943u, var_0.x, 1u)), vec3<u32>(var_1, 1u, 48646u), ~vec3<u32>(u_input.a.x, var_0.x, 1u))), Struct_1(vec3<f32>(1269f, _wgslsmith_f_op_f32(f32(-1f) * -782f), -780f), reverseBits(vec4<u32>(u_input.a.x, u_input.b, 1u, var_0.x)), 974f, 4294967295u | u_input.a.x), true, func_1(true, true, -427f).e.e));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(251f, -426f)) - _wgslsmith_f_op_f32(exp2(var_3.c.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.yy, _wgslsmith_mod_vec2_u32(u_input.a, ~vec2<u32>(0u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2472f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(904f * -1374f), _wgslsmith_f_op_f32(var_3.e.e.a.a.x + var_3.a.a.x))) * -1196f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.a.x * var_3.e.a.a.x))))), var_3.c.d.b.wzw);
}

