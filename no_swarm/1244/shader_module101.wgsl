struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + -205f)), _wgslsmith_f_op_f32(-arg_0.b))) + arg_0.b);
    global0 = arg_0.b;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-694f, _wgslsmith_f_op_f32(402f * arg_0.b)))) + 225f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-154f, arg_0.b, arg_0.b))), vec3<f32>(743f, arg_0.b, _wgslsmith_div_f32(arg_0.b, -470f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, 686f), vec3<f32>(-880f, -110f, arg_0.b)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_4 {
    global0 = arg_0.x;
    let var_0 = Struct_5(_wgslsmith_f_op_f32(step(853f, arg_0.x)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), var_0.a)) + _wgslsmith_f_op_f32(var_0.a * -1366f)) + _wgslsmith_f_op_f32(796f + _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f), -1505f))));
    let var_1 = _wgslsmith_mod_i32(~(-2147483647i), arg_3.a);
    let var_2 = arg_0.wwy;
    return Struct_4(-_wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(0i, -2147483647i, arg_3.a, 1i)), vec4<i32>(5801i | var_1, -1i, var_1 ^ 0i, var_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(44930u, var_0.a, 2147483647i, Struct_1(arg_3.a), vec3<u32>(arg_1, arg_1, arg_1))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_2.x, 698f)), _wgslsmith_f_op_vec3_f32(trunc(arg_0.wwx)))), Struct_3(arg_3, Struct_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1, arg_1), _wgslsmith_add_u32(arg_1, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) * -188f), 0i, Struct_1(arg_3.a), max(~vec3<u32>(1950u, 1u, arg_1), ~vec3<u32>(arg_1, 1u, 2269u))), 1440f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(exp2(arg_3.x));
    global0 = _wgslsmith_f_op_f32(-1881f * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_1.c.b)).x * _wgslsmith_f_op_f32(exp2(arg_0.b.b))));
    var var_0 = reverseBits(reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_2.c.b.d.a, arg_0.b.c) << (33228u % 32u), i32(-1i) * -2147483647i)));
    var_0 = 66434i;
    let var_1 = arg_2.b.zz;
    return firstLeadingBit(firstTrailingBit(arg_0.b.e));
}

fn func_1() -> vec2<f32> {
    var var_0 = 713f;
    let var_1 = ~func_4(Struct_3(Struct_1(u_input.a.x), Struct_2(7598u, -1643f, 2147483647i, Struct_1(-19461i), vec3<u32>(27339u, 53479u, 6163u)), -144f), func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-621f, -1000f, -922f, -340f))), 1u, vec4<i32>(u_input.a.x, 1i, 0i, u_input.a.x), Struct_1(u_input.a.x)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, 853f, -1316f, -669f) + vec4<f32>(697f, 684f, -1548f, 440f)), 1u, -vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 2147483647i), Struct_1(2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, -171f, -634f, -1879f))) ^ func_4(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1910f, 1777f, 340f, 610f))))), reverseBits(~1u), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-364i, 0i, u_input.a.x, 0i), vec4<i32>(-1i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(u_input.a.x)).c, func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1401f + 1000f), _wgslsmith_f_op_f32(2182f + 1134f), _wgslsmith_f_op_f32(305f + -676f)), ~1u, reverseBits(vec4<i32>(u_input.a.x, -44375i, 39146i, u_input.a.x) & vec4<i32>(-15211i, -2147483647i, u_input.a.x, 2147483647i)), Struct_1(1i)), Struct_4(~min(u_input.a.x, -5725i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -517f, -163f) - vec3<f32>(1738f, -260f, -1403f)))), func_2(vec4<f32>(-1000f, -554f, -540f, -319f), ~0u, reverseBits(vec4<i32>(-41998i, u_input.a.x, 44630i, 0i)), func_2(vec4<f32>(642f, -617f, -266f, 1000f), 4294967295u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(0i)).c.a).c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(354f, -170f, -696f, 108f))), vec4<f32>(203f, 422f, -840f, -617f))))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1923f);
    let var_2 = var_1.zx;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1997f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1857f), 683f)))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1217f) + -824f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-539f)), _wgslsmith_f_op_f32(f32(-1f) * -900f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1671f, 298f))), _wgslsmith_f_op_f32(f32(-1f) * -410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1229f + -480f)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> vec3<u32> {
    global0 = 1f;
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2))) * _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(-arg_2))), 1u, vec4<i32>(-125i, max(1i, 8134i), arg_1.a, max(-2147483647i, arg_3) >> (_wgslsmith_dot_vec3_u32(func_4(Struct_3(arg_1, Struct_2(7222u, arg_2.x, u_input.a.x, Struct_1(0i), vec3<u32>(17466u, 32877u, 11438u)), arg_2.x), Struct_4(28689i, vec3<f32>(1463f, arg_2.x, 1781f), Struct_3(Struct_1(-47872i), Struct_2(75168u, 362f, arg_3, Struct_1(arg_3), vec3<u32>(1u, 62234u, 52341u)), arg_2.x)), Struct_4(2147483647i, vec3<f32>(arg_2.x, 1866f, -614f), Struct_3(Struct_1(u_input.a.x), Struct_2(4294967295u, arg_0.x, 2147483647i, arg_1, vec3<u32>(64474u, 26873u, 1u)), arg_2.x)), arg_2), vec3<u32>(1u, 1u, 1u)) % 32u)), func_2(arg_2, select(firstLeadingBit(1u), _wgslsmith_sub_u32(1u, select(0u, 105188u, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -71082i, 1i, arg_3), reverseBits(vec4<i32>(0i, 7839i, -9972i, 13262i))), -reverseBits(vec4<i32>(-1i, u_input.a.x, arg_1.a, u_input.a.x))), func_2(_wgslsmith_div_vec4_f32(arg_2, _wgslsmith_div_vec4_f32(arg_2, vec4<f32>(1124f, arg_0.x, arg_2.x, arg_0.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 79112u, 4294967295u, 4294967295u), vec4<u32>(16653u, 12356u, 1u, 41372u)), vec4<u32>(6004u, 1u, 4294967295u, 0u)), ~vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, arg_1.a) ^ (vec4<i32>(u_input.a.x, -53448i, -22506i, -2147483647i) | vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), arg_1).c.b.d).c.b.d).c;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-842f - _wgslsmith_f_op_f32(f32(-1f) * -1857f)) * arg_2.x));
    var var_1 = vec2<bool>(false, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), _wgslsmith_sub_i32(u_input.a.x, var_0.b.d.a) < arg_1.a)));
    var var_2 = var_0;
    return vec3<u32>(var_0.b.a, 4294967295u, var_0.b.a);
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<u32>) -> f32 {
    global0 = -1121f;
    var var_0 = _wgslsmith_f_op_vec2_f32(max(arg_0.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yw - arg_0.zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.yw)) - _wgslsmith_f_op_vec2_f32(-arg_0.yy)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_vec2_f32(func_1()).x) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), arg_0, false))), arg_0))), 1u, vec4<i32>(13554i, abs(i32(-1i) * -2231i), 2147483647i >> (func_5(arg_0.wx, func_2(vec4<f32>(var_0.x, arg_0.x, 231f, var_0.x), arg_1.x, vec4<i32>(-1188i, 2147483647i, -22432i, 3373i), Struct_1(u_input.a.x)).c.b.d, _wgslsmith_div_vec4_f32(vec4<f32>(145f, -1889f, arg_0.x, arg_0.x), vec4<f32>(-419f, -499f, arg_0.x, arg_0.x)), 1i).x % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, ~(-23168i)), _wgslsmith_div_i32(u_input.a.x ^ u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)))), Struct_1(_wgslsmith_mult_i32(~u_input.a.x, 28420i))).b.yy;
    let var_2 = firstLeadingBit(u_input.a.zx) & (u_input.a.zz | -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(u_input.a.x, 2147483647i)));
    global0 = arg_0.x;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1043f, -1344f, 1214f, 899f), vec4<f32>(-967f, 1316f, 443f, -419f), true)), vec4<f32>(-1159f, 841f, 1631f, 275f), all(vec3<bool>(false, false, true))))))), func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(410f, 1000f)), _wgslsmith_f_op_vec2_f32(func_1()))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-342f, -501f, -1000f, -1468f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(480f, -112f, -562f, 786f) * vec4<f32>(-104f, 914f, -1682f, 789f))), 4294967295u, vec4<i32>(-u_input.a.x, ~0i, 1i, countOneBits(33226i)), Struct_1(u_input.a.x | 1i)).c.b.d, vec4<f32>(-967f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(501f, 533f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(947f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-552f * 1161f), _wgslsmith_f_op_f32(f32(-1f) * -1430f), false))), ~0i)));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(32813i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, -49996i))) & select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a.xx), u_input.a.zy, vec2<bool>(false, false)), reverseBits(~u_input.a.zz << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), select(vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(1i, -41712i, u_input.a.x, 1i), false)), func_2(vec4<f32>(-1410f, var_0, -390f, 1412f), firstLeadingBit(4294967295u), vec4<i32>(1i, u_input.a.x, 1i, 29165i), Struct_1(u_input.a.x)).c.a.a, 2147483647i), -26754i);
    var var_2 = Struct_2(abs(5009u), var_0, -(~u_input.a.x), Struct_1(var_1.x), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~max(vec3<u32>(49036u, 401u, 35042u), vec3<u32>(42038u, 1u, 4294967295u)))));
    var var_3 = u_input.a.xy;
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f) + -479f), _wgslsmith_dot_vec4_i32(firstLeadingBit(~(~vec4<i32>(-1i, 38450i, var_1.x, 10062i))), -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-54532i, -1i, var_1.x, var_3.x), vec4<i32>(0i, -2147483647i, u_input.a.x, 37829i), vec4<i32>(var_1.x, -2147483647i, var_1.x, u_input.a.x)))), Struct_1(-2147483647i), abs(vec3<u32>(1u, ~(~0u), 56817u)));
    var var_4 = all(vec3<bool>(true, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_5 = Struct_2(~var_2.e.x, var_2.b, 49180i, var_2.d, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-2147483647i & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.xx, u_input.a.yy), vec2<i32>(u_input.a.x, var_2.c)), func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_5.b), var_5.b, _wgslsmith_f_op_f32(660f * 647f), -184f), 0u | (10543u << (var_5.a % 32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_3.x, var_2.d.a, var_5.c), vec4<i32>(0i, u_input.a.x, var_5.c, var_2.c)), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, -642f, var_2.b, var_0), vec4<f32>(var_5.b, var_5.b, var_0, var_2.b), true)), ~var_5.e.x, abs(vec4<i32>(-42991i, u_input.a.x, var_3.x, var_3.x)), func_2(vec4<f32>(var_0, var_2.b, -940f, var_5.b), var_5.a, vec4<i32>(var_3.x, u_input.a.x, 2147483647i, var_1.x), var_2.d).c.a).c.a).a, var_2.d.a), var_1, _wgslsmith_mult_u32(4294967295u, var_5.a), 33628u);
}

