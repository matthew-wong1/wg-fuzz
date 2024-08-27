struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 1i);

var<private> global1: vec4<u32>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32, arg_3: bool) -> vec2<u32> {
    var var_0 = Struct_1(120f, u_input.a, vec4<bool>(all(select(select(arg_0.yx, vec2<bool>(arg_1, arg_0.x), true), vec2<bool>(arg_0.x, arg_3), global1.x == global1.x)), !(!arg_1), !arg_3, true));
    global2 = 0i;
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(-12739i, var_0.b.x), vec2<i32>(var_0.b.x, ~(~var_0.b.x)));
    let var_1 = global1.x;
    global2 = ~_wgslsmith_mod_i32(1i >> (~select(1u, u_input.c.x, var_0.c.x) % 32u), _wgslsmith_mod_i32(~u_input.e.x, global0.x));
    return ~u_input.c >> ((~vec2<u32>(~4294967295u, ~global1.x) << (vec2<u32>(arg_2, 0u) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    global1 = abs(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(52711u, 55751u), u_input.c), ~(~vec2<u32>(global1.x, 4469u))), _wgslsmith_mult_u32(~_wgslsmith_add_u32(global1.x, u_input.c.x), global1.x & 4294967295u), 1u, _wgslsmith_dot_vec2_u32(func_3(vec4<bool>(true, true, false, true), true, 31360u, global0.x >= -1i), min(abs(global1.xy), u_input.c >> (u_input.c % vec2<u32>(32u))))));
    global0 = u_input.e.xz;
    global1 = vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(~(~global1.www)), ~reverseBits(global1.xyy)), u_input.b, ~7997u << (_wgslsmith_mod_u32(4294967295u, arg_0) % 32u), min(min(~_wgslsmith_div_u32(arg_0, global1.x), _wgslsmith_mult_u32(73235u, ~arg_0)), 45206u));
    global0 = vec2<i32>(i32(-1i) * -71857i, min(countOneBits(1i), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.e.x, -14919i)), vec2<i32>(u_input.a.x, global0.x) & vec2<i32>(-1i, global0.x))));
    global1 = ~max(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 0u, 30891u, global1.x), vec4<u32>(0u, _wgslsmith_div_u32(4294967295u, 7245u), ~1u, 13643u)), vec4<u32>(arg_0, 66551u, min(firstLeadingBit(62728u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 52034u, 26813u, 17431u), vec4<u32>(1u, arg_0, arg_0, 60872u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(119419u, u_input.c.x), _wgslsmith_add_vec2_u32(global1.ww, vec2<u32>(8015u, 1u)))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(110f, 1113f, 1053f, -810f) * vec4<f32>(-403f, 1092f, -1387f, 134f)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(575f, -1584f, 780f, 1315f), vec4<f32>(-486f, 769f, 376f, 1195f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-529f, -1765f, -330f, -519f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1665f, -780f, -1025f, 476f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-446f, -2062f, 1465f, -652f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(429f, 1000f)), 1054f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -1171f)) * _wgslsmith_f_op_f32(trunc(773f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-234f))) - 1f), _wgslsmith_f_op_f32(-600f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) - _wgslsmith_f_op_f32(-1329f - -100f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = abs(abs(reverseBits(reverseBits(~vec2<u32>(u_input.d, 20717u)))));
    let var_1 = -1085f;
    global1 = _wgslsmith_div_vec4_u32(~select(~vec4<u32>(18047u, 11778u, u_input.c.x, global1.x), vec4<u32>(~global1.x, select(global1.x, global1.x, arg_2.x), _wgslsmith_mult_u32(844u, 654u), _wgslsmith_clamp_u32(24500u, global1.x, global1.x)), false), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(global1.x, 50654u), ~59154u, select(23651u, u_input.d, true), 1u), vec4<u32>(0u, _wgslsmith_mult_u32(~var_0.x, ~global1.x), countOneBits(func_3(arg_3.c, false, 4294967295u, arg_3.c.x).x), min(_wgslsmith_clamp_u32(u_input.b, 0u, 90060u), _wgslsmith_dot_vec3_u32(vec3<u32>(42546u, u_input.d, var_0.x), vec3<u32>(42234u, global1.x, 1449u)))), ~select(abs(vec4<u32>(20998u, 28279u, 6409u, 4294967295u)), vec4<u32>(0u, global1.x, 52123u, 1u), true)));
    let var_2 = ~_wgslsmith_add_vec4_u32(~countOneBits(~vec4<u32>(var_0.x, 76811u, 1u, u_input.d)), _wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(0u, 1u, u_input.c.x, global1.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, global1.x, global1.x, global1.x), ~vec4<u32>(4294967295u, 4294967295u, u_input.c.x, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 4294967295u, global1.x), vec4<u32>(29715u, 0u, global1.x, 4294967295u)))));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(select(906f, 1740f, arg_1.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(firstTrailingBit(69127u))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) * _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_vec2_f32(select(arg_0.wz, vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 701f))), _wgslsmith_f_op_f32(f32(-1f) * -302f)), any(vec4<bool>(true, all(vec4<bool>(arg_2.x, arg_1.c.x, arg_2.x, arg_1.c.x)), true, arg_2.x)))));
    return arg_3;
}

fn func_1() -> vec4<u32> {
    let var_0 = global1.x;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(func_2(4294967295u)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(1570f))))), u_input.e.xy, !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true))), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(true, true, true)))), false), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1749f) * -202f))), u_input.a, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))));
    return vec4<u32>(32777u, 61756u, u_input.b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    global1 = ~(~var_0) | _wgslsmith_clamp_vec4_u32(~select(var_0 | var_0, select(var_0, vec4<u32>(u_input.d, u_input.d, global1.x, 58428u), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), countOneBits(_wgslsmith_sub_vec4_u32(var_0, var_0) << (select(var_0, var_0, false) % vec4<u32>(32u))), countOneBits(vec4<u32>(countOneBits(7364u), 51060u, var_0.x << (4294967295u % 32u), max(var_0.x, 4294967295u))));
    var var_1 = u_input.e;
    let var_2 = 1492f;
    global0 = vec2<i32>(global0.x, 2147483647i);
    let var_3 = Struct_1(-769f, -vec2<i32>(-26759i, ~var_1.x ^ _wgslsmith_div_i32(global0.x, u_input.e.x)), !vec4<bool>(!any(vec3<bool>(false, true, false)), true, !select(true, true, false), !any(vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(858f, var_0.x, u_input.b, ~(-14861i));
}

