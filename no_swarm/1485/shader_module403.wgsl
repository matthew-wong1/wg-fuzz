struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = Struct_2(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), false)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(2705u, 76603u, 6204u, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 15929u, 39474u, 1u), vec4<u32>(48561u, 2940u, 9251u, 4294967295u), vec4<u32>(4294967295u, 0u, 79422u, 0u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(805f)) + _wgslsmith_f_op_f32(trunc(221f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1152f, _wgslsmith_f_op_f32(floor(547f)), 641f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-587f)), _wgslsmith_f_op_f32(3041f * _wgslsmith_f_op_f32(-449f + 110f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2353f, 932f, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -550f))), _wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-303f)))), u_input.a), arg_0 | abs(_wgslsmith_mod_i32(u_input.b.x & 2147483647i, 0i)), 0u);
    global0 = array<vec2<bool>, 1>();
    var var_1 = firstTrailingBit(arg_0);
    var var_2 = Struct_1(var_0.c.a, var_0.c.d.yyx, var_0.c.d.xw, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1520f - _wgslsmith_div_f32(-557f, var_0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.d.x * 1097f))), var_0.c.d.x, -893f, _wgslsmith_f_op_f32(exp2(var_0.c.d.x))), ~1i);
    let var_3 = select(vec4<bool>(all(var_0.a), var_0.a.x, true, false), !vec4<bool>(any(vec4<bool>(var_0.a.x, true, var_0.a.x, false)), true, false || var_0.a.x, true), select(select(vec4<bool>(true, all(vec2<bool>(var_0.a.x, var_0.a.x)), any(var_0.a), select(var_0.a.x, true, var_0.a.x)), !(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), select(select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(var_0.a.x, false, false, true)), vec4<bool>(var_0.a.x, false, false, var_0.a.x), select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, false), true))), !(!(!vec4<bool>(var_0.a.x, false, true, false))), !vec4<bool>(all(vec2<bool>(false, var_0.a.x)), var_0.a.x, true, true)));
    return var_0.c.a;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_1(821f, vec3<f32>(_wgslsmith_f_op_f32(143f + -269f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-224f)), -740f)), arg_1), _wgslsmith_f_op_vec2_f32(-arg_2.d.wx), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1770f, arg_2.c.x, -894f)), _wgslsmith_f_op_vec4_f32(abs(arg_2.d))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(1233f, -878f), 1615f, _wgslsmith_div_f32(-470f, -1177f)) * arg_0.c.d)), ~(~(i32(-1i) * -arg_0.c.e)));
    var var_1 = min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e, min(arg_0.b.x, 0u), ~4294967295u, 15773u), ~vec4<u32>(arg_0.e, arg_0.b.x, arg_0.e, arg_0.b.x) & ~arg_0.b, arg_0.b), firstTrailingBit(arg_0.b));
    let var_2 = var_1.xwx;
    var var_3 = ~vec3<i32>(1i, arg_0.c.e, arg_0.d);
    var var_4 = ~(vec4<i32>(-1i) * -(~(-vec4<i32>(2147483647i, u_input.b.x, arg_0.c.e, var_0.e))));
    return reverseBits(vec4<u32>(abs(4294967295u), ~min(arg_0.e, arg_0.e), ~arg_0.b.x, 12860u) >> (((~vec4<u32>(arg_0.b.x, 1u, var_2.x, var_2.x) | ~vec4<u32>(arg_0.b.x, 0u, 1u, var_2.x)) >> (arg_0.b % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = func_4(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~(~(~vec4<u32>(1u, 129244u, 0u, 1u))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(13343i, arg_0.e)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.a) * vec3<f32>(1000f, 691f, 671f)), _wgslsmith_f_op_vec3_f32(max(arg_0.d.xxx, arg_0.b)), true)), arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(-434f * arg_0.c.x), arg_0.a, arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -997f)), firstTrailingBit(-1i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(3407i, arg_0.e), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.e, 17729i), vec3<i32>(42003i, -11175i, -1i))) | -2147483647i, ~_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(14394u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(37585u, 48786u, 57848u, 45418u), vec4<u32>(4294967295u, 1u, 2849u, 69901u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1341f))), Struct_1(-2674f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(773f, arg_0.d.x, arg_0.c.x) * vec3<f32>(630f, -142f, arg_0.c.x)) * _wgslsmith_f_op_vec3_f32(arg_0.b * vec3<f32>(-423f, -229f, arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-700f, arg_0.d.x, arg_0.d.x))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(arg_0.b.yy)))), vec4<f32>(_wgslsmith_f_op_f32(-416f - _wgslsmith_f_op_f32(-arg_0.a)), arg_0.b.x, arg_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -710f)))), select(_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, u_input.b.x), arg_0.e), abs(0i), false)), select(vec3<bool>(true, true, (arg_0.a >= arg_0.a) && true), vec3<bool>(true || any(vec2<bool>(false, false)), true, true), true));
    global0 = array<vec2<bool>, 1>();
    let var_1 = vec3<i32>(firstLeadingBit(reverseBits(~25166i)), 29198i, _wgslsmith_sub_i32(select(-40652i, _wgslsmith_mod_i32(-u_input.a, u_input.a), all(vec3<bool>(false, true, false))), _wgslsmith_div_i32(i32(-1i) * -7307i, 1i)));
    global0 = array<vec2<bool>, 1>();
    let var_2 = Struct_1(-1219f, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(195f, arg_0.c.x, false)) - _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a))))), 937f, arg_0.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.d.yx))) - _wgslsmith_f_op_vec2_f32(arg_0.b.yy - vec2<f32>(-746f, arg_0.d.x))) - _wgslsmith_f_op_vec2_f32(-arg_0.c)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(837f, 853f, _wgslsmith_f_op_f32(1767f + -999f), 841f))))), var_1.x);
    return vec4<u32>(~(~(~firstLeadingBit(var_0.x))), _wgslsmith_dot_vec4_u32(var_0, var_0), 1u, var_0.x);
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, -5544i, -38828i, 0i) >> (vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(u_input.a, -53656i, u_input.a, 2147483647i) & -vec4<i32>(u_input.b.x, 1i, -75858i, -30762i)), select(vec4<i32>(12348i, u_input.a, 2454i, -7205i), ~vec4<i32>(-2147483647i, 20396i, -1i, -21085i), false) >> (func_2(Struct_1(-2140f, vec3<f32>(-838f, -194f, 822f), vec2<f32>(-294f, -382f), vec4<f32>(139f, -1608f, 1208f, 231f), 47345i)) % vec4<u32>(32u)));
    global0 = array<vec2<bool>, 1>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - -2345f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -689f)))))));
    var var_2 = !vec4<bool>(!(1u < _wgslsmith_dot_vec4_u32(vec4<u32>(23651u, 11019u, 1u, 60604u), vec4<u32>(1u, 21999u, 4294967295u, 76207u))), all(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(6892u, 1u)), 1u)]), all(vec4<bool>(true, true, true, true)) && true, true);
    var var_3 = Struct_1(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(512f, var_1, 1296f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_1), 1252f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 2231f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2487f, -1309f), vec2<f32>(var_1, var_1))), var_2.xw))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-685f - var_1))), 375f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1056f * -1000f), var_1, true)), _wgslsmith_f_op_f32(-var_1))), -1i);
    return Struct_1(_wgslsmith_f_op_f32(round(var_3.b.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - 118f), var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.a, var_3.c.x)), _wgslsmith_f_op_f32(var_1 - var_1))), _wgslsmith_f_op_f32(-var_3.c.x), -996f), _wgslsmith_f_op_vec2_f32(-var_3.d.xx), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * _wgslsmith_f_op_f32(f32(-1f) * -895f)), -1120f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~var_3.e, ~(-27094i))), var_3.a), _wgslsmith_div_f32(-1000f, -817f), _wgslsmith_f_op_f32(691f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.d.x))))), -22i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    global0 = array<vec2<bool>, 1>();
    var var_0 = Struct_1(1789f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(645f, arg_1.c.a, 456f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.d.www))), arg_1.a)), vec2<f32>(-1168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.c.x))) - 1461f)), vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-2147483647i, 1i)) * -789f)), 115f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.b.x, arg_0.a))) - _wgslsmith_f_op_f32(f32(-1f) * -891f))), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0.e, select(u_input.b.x, ~1i, true)), -arg_2.e));
    global0 = array<vec2<bool>, 1>();
    var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -598f), arg_2.c.x, any(vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e, -2147483647i, 1i, -27044i), vec4<i32>(var_0.e, 3826i, arg_2.e, arg_0.e)) >= arg_0.e, !(2661u < arg_1.b.x)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_1().b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(572f)))), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-903f, 479f, arg_3)), _wgslsmith_f_op_f32(-arg_2.b.x)))))), _wgslsmith_f_op_f32(-arg_1.c.c.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1762f, -2161f, false)) * 1000f))), _wgslsmith_f_op_f32(func_5(func_1(), Struct_2(vec3<bool>(true, true, true), abs(vec4<u32>(1u, 23102u, 7729u, 28846u)), Struct_1(262f, vec3<f32>(1386f, 447f, 225f), vec2<f32>(794f, -447f), vec4<f32>(1463f, 1752f, 1000f, 261f), 2147483647i), 1i, ~1u), func_1(), false))));
    var var_1 = Struct_2(vec3<bool>(true, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false), ~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, ~803u, countOneBits(25953u), 1u), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true))), Struct_1(-169f, vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x, -805f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(abs(1155f)), _wgslsmith_f_op_f32(-var_0.x)), !select(global0[_wgslsmith_index_u32(4942u, 1u)], vec2<bool>(true, false), false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1870f, var_0.x, var_0.x, -1194f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1707f, var_0.x, 847f, var_0.x)))), ~u_input.a), ~u_input.a, 1u);
    let var_2 = min(~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, -19249i), vec3<i32>(57125i, var_1.c.e, -2147483647i)), vec3<i32>(39321i, var_1.d, -2147483647i)), vec3<i32>(i32(-1i) * -2147483647i, 1i, 23765i)) << (max(vec3<u32>(~firstTrailingBit(4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_1.b, var_1.b), 4294967295u), 0u >> (_wgslsmith_clamp_u32(1u, 0u, 0u) % 32u)), var_1.b.xwx) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(290f + -375f), _wgslsmith_f_op_f32(select(690f, var_1.c.a, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * -388f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f - 319f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

