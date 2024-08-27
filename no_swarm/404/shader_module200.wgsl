struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(-1000f, 2760f);

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(13676i, -1i, 11183i), vec3<i32>(-21851i, 37812i, -12245i), vec3<i32>(-6068i, 0i, 67015i), vec3<i32>(-12782i, 1i, -20310i), vec3<i32>(i32(-2147483648), -1i, 21787i), vec3<i32>(-47971i, 9017i, -48977i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(18434i, 2147483647i, -40529i), vec3<i32>(-48168i, 43403i, 1985i), vec3<i32>(1824i, 2147483647i, 1i), vec3<i32>(-16290i, 0i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), -21104i), vec3<i32>(i32(-2147483648), 1i, -5825i), vec3<i32>(52328i, 50361i, 6222i), vec3<i32>(20002i, 0i, -28800i), vec3<i32>(32825i, -41995i, -1i), vec3<i32>(-147i, -19624i, 2147483647i), vec3<i32>(1i, 0i, -5784i), vec3<i32>(-480i, 40484i, 1i), vec3<i32>(0i, -26038i, 0i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(628f, arg_0, global1.x), vec3<f32>(-616f, arg_0, -172f))))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -250f, 1788f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global1.x, 1109f) - vec3<f32>(global1.x, arg_0, -543f)))))));
    var var_1 = -2147483647i;
    let var_2 = arg_2 ^ ((~arg_3 & -1i) >> (reverseBits(u_input.a.x) % 32u));
    var var_3 = countOneBits(-_wgslsmith_dot_vec2_i32(countOneBits(arg_1.a), reverseBits(vec2<i32>(1i, 37215i))));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(284f, 1053f) - 439f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-var_0.x)), vec3<f32>(-1219f, global1.x, -1098f));
    return arg_3;
}

fn func_2() -> f32 {
    var var_0 = vec4<i32>(global2.a.x, min((-5527i & global2.a.x) << (_wgslsmith_add_u32(u_input.a.x >> (u_input.a.x % 32u), global2.b.x << (1u % 32u)) % 32u), -1i), func_3(-889f, Struct_1(vec2<i32>(-28136i, global2.a.x), abs(vec4<u32>(1u, u_input.a.x, 1u, global2.b.x))), 13157i, _wgslsmith_add_i32(global2.a.x, reverseBits(1i))) ^ global2.a.x, -firstLeadingBit(abs(1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-759f, 176f, false)))))), _wgslsmith_f_op_f32(ceil(-1733f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(-global1.x))));
    let var_2 = 59775u << (min(u_input.a.x, 4294967295u) % 32u);
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(-2558f, var_1.x))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), true))));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.yz)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1007f);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(abs(global2.a) | reverseBits(~global2.a), global2.a), vec4<u32>(u_input.a.x, 26689u, _wgslsmith_add_u32(global2.b.x, u_input.a.x), ~(~u_input.a.x)) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(40490u, global2.b.x), vec2<u32>(u_input.a.x, global2.b.x)) >> (~u_input.a.x % 32u), u_input.a.x, 3595u, 84262u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(-1022f, _wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_div_f32(-801f, -743f), true))))), true, var_0);
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(25443u, 43933u, var_1.c.b.x), var_0.b.wzz ^ var_1.c.b.zyy) << (firstLeadingBit(max(var_1.c.b.x, 18771u)) % 32u)) <= (var_1.c.b.x >> (min(global2.b.x, ~4294967295u) % 32u));
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2.ww)) + vec2<f32>(arg_1, _wgslsmith_f_op_f32(1293f - arg_2.x)))));
    var var_3 = var_0.b.x;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    global0 = min(_wgslsmith_sub_u32(~global2.b.x, _wgslsmith_sub_u32(arg_0.b.x, select(1u, 4294967295u, arg_2.x | false))), arg_3.b.b.x);
    global3 = array<vec3<i32>, 21>();
    var var_0 = -13579i;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -575f, 1000f, global1.x))))), Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_i32(countOneBits(arg_3.b.a), vec2<i32>(arg_0.a.x, arg_3.b.a.x))), global2.b), u_input.a.x);
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.zz))));
    return func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-805f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(386f))))), _wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_3.a)) - arg_3.a));
}

fn func_5(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_div_u32(global2.b.x, 0u);
    global3 = array<vec3<i32>, 21>();
    let var_1 = func_4(vec3<f32>(-225f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1897f - -1413f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(func_1(arg_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0.a, 1002f, global1.x)), !vec3<bool>(arg_0.b, arg_0.b, arg_0.b), Struct_2(vec4<f32>(global1.x, arg_0.a, 903f, global1.x), Struct_1(vec2<i32>(-2147483647i, arg_0.c.a.x), vec4<u32>(var_0, var_0, u_input.a.x, 0u)), var_0)).a, _wgslsmith_f_op_f32(-func_4(vec3<f32>(970f, arg_0.a, global1.x), global1.x, vec4<f32>(-1000f, global1.x, global1.x, -1119f)).a)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.a))))), 461f, _wgslsmith_f_op_f32(ceil(-1046f)))).c;
    var var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.x)))), global1.x, global1.x), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.a)), func_1(Struct_1(vec2<i32>(21345i, arg_0.c.a.x), arg_0.c.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, arg_0.a, global1.x) + vec4<f32>(-1152f, -765f, 803f, global1.x)), select(vec3<bool>(true, arg_0.b, false), vec3<bool>(true, false, true), vec3<bool>(false, arg_0.b, arg_0.b)), Struct_2(vec4<f32>(-374f, global1.x, -330f, -1467f), Struct_1(arg_0.c.a, global2.b), global2.b.x)).a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -269f), arg_0.a, -501f, global1.x) - vec4<f32>(arg_0.a, global1.x, _wgslsmith_f_op_f32(238f + arg_0.a), _wgslsmith_f_op_f32(trunc(-160f))))));
    var var_3 = _wgslsmith_div_i32(firstTrailingBit(abs(0i ^ ~arg_0.c.a.x)), 1i);
    return _wgslsmith_mod_u32(~var_2.c.b.x, 0u);
}

fn func_6(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -970f, global1.x) * vec3<f32>(-148f, global1.x, -1674f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1966f, -272f))), vec3<bool>(true, true, true)))));
    global1 = var_0.zz;
    let var_1 = select(global2.b, vec4<u32>(select(~4294967295u, ~firstTrailingBit(u_input.a.x), !(346f >= global1.x)), global2.b.x, func_1(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1167f, global1.x, var_0.x)), _wgslsmith_f_op_f32(select(485f, var_0.x, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, global1.x, 922f))).c, vec4<f32>(2168f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-1673f)), -721f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), Struct_2(vec4<f32>(-551f, global1.x, -1931f, var_0.x), Struct_1(vec2<i32>(arg_0, 89255i), global2.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(global2.b.x, 0u, 1u, 4294967295u)))).c.b.x, _wgslsmith_sub_u32(firstLeadingBit(global2.b.x), 4294967295u)), !vec4<bool>(true || all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(f32(-1f) * -2263f) <= _wgslsmith_f_op_f32(func_2()), !all(vec4<bool>(true, true, true, false)), true));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) * var_0.x), func_1(Struct_1(vec2<i32>(-global2.a.x, ~arg_0), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1, global2.b, vec4<u32>(0u, 35977u, u_input.a.x, 27400u)), ~global2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x + global1.x), _wgslsmith_f_op_f32(190f - -2260f), _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-global1.x))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), true), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(269f, global1.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(864f, 411f, 1069f, 450f)))), Struct_1(global2.a, func_1(Struct_1(vec2<i32>(arg_0, global2.a.x), vec4<u32>(68554u, 27060u, 4294967295u, 1u)), vec4<f32>(1474f, global1.x, var_0.x, 586f), vec3<bool>(false, false, false), Struct_2(vec4<f32>(-412f, 973f, -676f, global1.x), Struct_1(global2.a, global2.b), 4294967295u)).c.b), _wgslsmith_mod_u32(max(var_1.x, u_input.a.x), 1u))).b, Struct_1(vec2<i32>(-51915i, -_wgslsmith_sub_i32(global2.a.x, arg_0)), ~global2.b));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-1f), _wgslsmith_mult_i32(0i, global2.a.x) != _wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(var_2.c.a.x, global2.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-5872i, var_2.c.a.x, arg_0, var_2.c.a.x) << (vec4<u32>(u_input.a.x, 40475u, var_2.c.b.x, 0u) % vec4<u32>(32u)), vec4<i32>(-20193i, var_2.c.a.x, -19835i, 1i))), Struct_1(vec2<i32>(40307i, reverseBits(-6932i)), ~var_2.c.b));
    return Struct_1(vec2<i32>(var_2.c.a.x, var_3.c.a.x), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global2.a.x >> (~func_5(func_1(Struct_1(global2.a, vec4<u32>(global2.b.x, 16589u, u_input.a.x, 0u)), vec4<f32>(186f, global1.x, 301f, 945f), vec3<bool>(false, false, false), Struct_2(vec4<f32>(1386f, -1220f, global1.x, global1.x), Struct_1(vec2<i32>(global2.a.x, 1i), global2.b), u_input.a.x))) % 32u));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) * _wgslsmith_f_op_f32(global1.x + 1523f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x)))))), _wgslsmith_f_op_f32(abs(-837f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, -439f, global1.x, global1.x)))))))).c;
    let var_1 = select(true, !(_wgslsmith_f_op_f32(global1.x * func_4(vec3<f32>(115f, 948f, global1.x), global1.x, vec4<f32>(1000f, global1.x, 1369f, global1.x)).a) == -281f), !func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1582f, -2013f) - vec3<f32>(417f, -1469f, -677f)) + vec3<f32>(597f, global1.x, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, 1552f, _wgslsmith_div_f32(-1154f, global1.x))).b);
    var var_2 = true;
    global2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(-266f, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(1000f, global1.x, -2179f))))), func_1(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-90516i, global2.a.x), ~vec2<i32>(21021i, var_0.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(83033u, 53679u, 0u, var_0.b.x) | vec4<u32>(1u, 14717u, u_input.a.x, 12540u), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u)))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(517f, -400f)), -1100f, _wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-357f, 2879f, -1095f, -539f) * vec4<f32>(global1.x, 566f, -1456f, global1.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1239f, global1.x, -574f, global1.x))))), !select(!vec3<bool>(true, var_1, var_1), !vec3<bool>(var_1, var_1, true), !var_1), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), vec4<f32>(-824f, global1.x, global1.x, global1.x), true)), func_6(func_6(-34899i).a.x), firstLeadingBit(global2.b.x))).a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, -150f, -327f, global1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, -283f, -587f, global1.x)))))).c;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1616f), -1311f, global1.x, global1.x), _wgslsmith_f_op_f32(max(233f, _wgslsmith_f_op_f32(-1000f + 1399f))));
}

