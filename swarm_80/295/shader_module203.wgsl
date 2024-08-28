struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<f32> {
    global0 = false;
    global0 = false;
    var var_0 = !(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), -2147483647i >= u_input.d.x), vec3<bool>(true, select(false, true, false), any(vec3<bool>(true, true, true))), true));
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1477f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(924f * -1394f) - 708f), 1f, -133f), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), var_0.x)), 781f), ~(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) << (vec4<u32>(select(u_input.c, u_input.b.x, var_0.x), u_input.c, u_input.a, u_input.b.x) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-313f, 756f)), -1316f)), _wgslsmith_f_op_f32(abs(-918f))), -1000f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1901f, -1015f)))), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(12788i, 0i, u_input.d.x, u_input.d.x)), firstTrailingBit(abs(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)))), _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x >> (11794u % 32u), u_input.d.x, 0i & u_input.d.x) & -47110i, u_input.d.x));
    var var_2 = vec4<bool>(select(var_0.x, any(vec3<bool>(any(vec3<bool>(true, var_0.x, false)), true, true)), all(vec4<bool>(false, false, select(var_1.a.b.x, true, true), false))), any(!vec3<bool>(var_1.a.b.x, var_0.x, true)), false, var_1.a.b.x != var_1.a.b.x);
    return vec2<f32>(-1442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1336f))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = ~vec4<i32>(~1i, _wgslsmith_sub_i32(arg_0.b.x, 0i), _wgslsmith_mod_i32(-43758i, arg_0.b.x << (30444u % 32u)), 1i);
    let var_1 = arg_2;
    let var_2 = abs(vec2<i32>(~firstLeadingBit(arg_0.b.x), _wgslsmith_mult_i32(-5764i, abs(var_0.x)) & -1i));
    var var_3 = Struct_5((any(vec3<bool>(false, false, arg_0.a.b.x)) && select(arg_0.a.b.x || arg_0.a.b.x, any(vec3<bool>(true, arg_0.a.b.x, true)), any(vec2<bool>(true, true)))) | arg_0.a.b.x, arg_1.b, -var_2, arg_1.a);
    var var_4 = !select(vec2<bool>(all(!vec4<bool>(true, arg_1.a.x, var_3.b.a.b.x, false)), arg_1.b.a.b.x), vec2<bool>(true, true), vec2<bool>(arg_1.a.x, true));
    return _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -_wgslsmith_mult_i32(118i, 1159i), reverseBits(min(arg_1.b.b.x, _wgslsmith_mod_i32(arg_1.b.b.x, arg_1.b.e))), arg_0.b.x, -var_3.c.x), arg_1.b.d);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_mult_u32(3493u, u_input.b.x)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(31306u, u_input.b.x), _wgslsmith_mult_vec2_u32(u_input.b.yz, vec2<u32>(u_input.c, u_input.c)), _wgslsmith_mod_vec2_u32(u_input.b.yy, u_input.b.yy)) % vec2<u32>(32u)), u_input.b.wy), u_input.b.yw);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1124f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(step(871f, 588f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, -757f, 231f, 444f)))), vec2<bool>(!any(vec3<bool>(true, false, false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(111f * -1160f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1508f, 1976f, true))))))), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1314f, -388f, -1806f, 1176f)), vec2<bool>(true, true), -607f), vec4<i32>(u_input.d.x, ~17103i, max(u_input.d.x, 34165i), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-311f, 381f, -1197f, 129f), vec4<f32>(661f, -855f, -660f, 566f)))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(61065i, 6724i, -18098i, 2147483647i), vec4<i32>(-43787i, 2147483647i, u_input.d.x, u_input.d.x)), vec4<i32>(-10955i, u_input.d.x, u_input.d.x, -1i)), countOneBits(u_input.d.x)), Struct_3(select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.d.x <= u_input.d.x), Struct_2(Struct_1(vec4<f32>(-1072f, -215f, -1471f, 188f), vec2<bool>(true, true), -822f), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -22283i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, 10863i, u_input.d.x, u_input.d.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-441f, -581f, 900f, 1321f))), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -2147483647i), max(-22463i, 1i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(824f, 670f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1087f, 659f), vec2<f32>(-418f, 1778f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-411f, -1000f, -114f, -1955f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2018f, -952f, -1366f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-393f, 1758f, -1198f, -1106f), vec4<f32>(1948f, -1064f, 2307f, -101f))))))), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -59632i, -69389i, 1i) ^ vec4<i32>(1i, 341i, -1i, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, -2147483647i, u_input.d.x), vec4<i32>(28303i, -2147483647i, u_input.d.x, -1i)))), u_input.d.x);
    var_1 = Struct_2(Struct_1(var_1.c, vec2<bool>(var_1.a.b.x, (u_input.a <= 4294967295u) | !var_1.a.b.x), -523f), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, firstLeadingBit(u_input.d.x), var_1.e, -2147483647i), _wgslsmith_div_vec4_i32(var_1.b & vec4<i32>(0i, 1i, -60278i, 1i), vec4<i32>(u_input.d.x, -2147483647i, 63462i, 40518i)), vec4<i32>(u_input.d.x, firstLeadingBit(u_input.d.x), 1i, abs(var_1.e))), min(~countOneBits(var_1.d), var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-801f - var_1.a.a.x) - var_1.a.a.x), _wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1259f * var_1.a.a.x), -895f))), ~var_1.b, var_1.e);
    var var_2 = var_1.c.x;
    global0 = var_1.a.b.x && var_1.a.b.x;
    return var_1.a.b.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_5 {
    var var_0 = arg_0.x;
    global0 = false;
    var_0 = min(arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, reverseBits(~0u)), 46187u, 45539u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2637f, 948f, 1793f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1181f, 1161f, 1519f), vec3<f32>(-2136f, 675f, 1951f))))));
    var var_2 = vec4<bool>(all(vec3<bool>(false, (arg_1.x >= arg_1.x) && all(vec4<bool>(false, true, true, true)), true)), true, !(!(!func_2())), false);
    return Struct_5(!any(select(vec4<bool>(true, true, var_2.x, true), !vec4<bool>(var_2.x, true, var_2.x, var_2.x), false)), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, -1064f, 762f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -124f, 548f, var_1.x))), vec2<bool>(true, true), var_1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, -1i, u_input.d.x, -14915i), select(vec4<i32>(u_input.d.x, 0i, 63530i, -2296i), vec4<i32>(-55492i, u_input.d.x, -31431i, -1i), var_2.x)) << (~vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 1098f, -1000f, -1251f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 339f) - vec4<f32>(591f, -119f, var_1.x, 687f)))))), arg_1, _wgslsmith_mod_i32(min(2147483647i, arg_1.x), -u_input.d.x) & (arg_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.b.x, 57572u), u_input.b) % 32u))), arg_1.ww, vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))) >= _wgslsmith_f_op_f32(abs(var_1.x))));
}

fn func_5(arg_0: Struct_5) -> f32 {
    let var_0 = func_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yw, vec2<u32>(1u, select(u_input.c, u_input.b.x, arg_0.b.a.b.x))), u_input.b.xy, vec2<u32>(~u_input.a, 17445u)), countOneBits(vec4<i32>(-1i) * -arg_0.b.d));
    let var_1 = var_0.b.d;
    var var_2 = !arg_0.d.x;
    var_2 = false;
    let var_3 = 347f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f - 984f) - var_0.b.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(3622i, 9637i), u_input.d))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(u_input.b.zx, vec4<i32>(u_input.d.x, -39047i, -u_input.d.x, _wgslsmith_mult_i32(var_0.x, -28338i))))));
    var_0 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, var_1, var_1, -230f))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), -724f), ~select(firstTrailingBit(vec4<i32>(u_input.d.x, -16325i, u_input.d.x, -9157i)), vec4<i32>(var_0.x, u_input.d.x, 6541i, u_input.d.x), u_input.c <= 80461u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(abs(238f)), _wgslsmith_f_op_f32(floor(var_1)), -426f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 225f, -345f, -391f)), _wgslsmith_div_vec4_f32(vec4<f32>(932f, var_1, var_1, -718f), vec4<f32>(1072f, -201f, -503f, var_1))), true)), min(-abs(vec4<i32>(u_input.d.x, var_0.x, u_input.d.x, -1i)), -countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, var_0.x, u_input.d.x))), -select(~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(33950i, 64604i, u_input.d.x, var_0.x), vec4<i32>(29202i, 2147483647i, 59069i, u_input.d.x)), true)), Struct_3(vec2<bool>(true, true), func_1(~(u_input.b.zz >> (vec2<u32>(9378u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.x, 13551i, u_input.d.x, 1i), -vec4<i32>(1i, var_0.x, -28632i, u_input.d.x))).b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1000f) - vec2<f32>(1000f, -287f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2233f, -1430f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -333f))), vec2<f32>(_wgslsmith_div_f32(-939f, 693f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1)))))).wz;
    var_0 = ~(u_input.d | ~reverseBits(-u_input.d));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1276f, -1159f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1000f + var_1), 1144f)), vec4<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) * 1182f), 330f, var_1), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_1(vec2<u32>(u_input.c, 32599u), vec4<i32>(-23748i, -30044i, 0i, -7527i)).b.a.b.x), !any(vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

