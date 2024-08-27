struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<vec3<f32>, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(779f));
    global0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a), max(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.a.x, u_input.d)))), _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -41485i, u_input.d, 14663i), vec4<i32>(u_input.d, u_input.d, u_input.d, 0i)), _wgslsmith_div_i32(2147483647i, 2147483647i)))) ^ _wgslsmith_clamp_i32(u_input.d, -u_input.a.x, ~(0i >> (_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.b, u_input.c.x)) % 32u)));
    global1 = array<vec3<f32>, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(913f, 2135f)) * _wgslsmith_f_op_f32(round(207f))), _wgslsmith_f_op_f32(1257f - _wgslsmith_f_op_f32(1024f + 561f)), _wgslsmith_f_op_f32(abs(-412f)), 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-184f - 818f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(684f, -1251f))), _wgslsmith_f_op_f32(751f + _wgslsmith_f_op_f32(f32(-1f) * -1781f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2145f))))));
    return ~vec4<u32>(41080u, countOneBits(u_input.c.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.e, 28288u), u_input.e << (u_input.b % 32u)), ~abs(u_input.e), 0u), u_input.c.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = abs(_wgslsmith_div_vec4_u32(select(arg_0 & arg_0, ~func_3(), true), abs(vec4<u32>(arg_0.x, arg_0.x, select(0u, 28884u, false), ~arg_0.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-549f, _wgslsmith_f_op_f32(select(-633f, _wgslsmith_f_op_f32(max(-737f, 635f)), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(477f, -880f), vec2<f32>(-469f, 799f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1485f, -495f))), vec2<bool>(false, false))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, 1338f))), arg_0.zx, -(-u_input.d << (arg_0.x % 32u)) > select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d)), _wgslsmith_mult_i32(-23831i, u_input.a.x & 0i), u_input.d >= ~(-1i)), -719f);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x * var_1.a), var_1.e, _wgslsmith_f_op_f32(ceil(var_1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(39109u, 21u)], vec3<f32>(var_1.e, var_1.b.x, var_1.a))))) + global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.c.x, ~var_0.x, _wgslsmith_mult_u32(9100u, var_0.x)), arg_0.x), 21u)])));
    global0 = 0i;
    return Struct_1(var_1.a, var_2.yx, _wgslsmith_clamp_vec2_u32(~var_1.c, vec2<u32>(var_1.c.x << (~74129u % 32u), _wgslsmith_dot_vec2_u32(arg_0.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, var_1.c.x), var_0.zy))), ~vec2<u32>(arg_0.x, _wgslsmith_sub_u32(u_input.c.x, 1u))), var_1.d && var_1.d, -177f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(656f, _wgslsmith_f_op_vec2_f32(step(arg_0.b, vec2<f32>(-1078f, _wgslsmith_f_op_f32(-2318f + _wgslsmith_f_op_f32(sign(arg_2.e)))))), arg_2.c, any(select(!(!vec2<bool>(arg_0.d, arg_2.d)), vec2<bool>(arg_0.d, !arg_2.d), all(!vec4<bool>(arg_0.d, true, arg_0.d, false)))), -1000f);
    return func_2(_wgslsmith_mult_vec4_u32(~arg_1, ~_wgslsmith_div_vec4_u32(arg_1 & vec4<u32>(1u, arg_0.c.x, 19485u, var_0.c.x), arg_1)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(arg_1, vec4<u32>(arg_1.c.x, 4294967295u, arg_0.c.x, ~(~arg_1.c.x)), Struct_1(1052f, _wgslsmith_f_op_vec2_f32(-func_4(func_2(vec4<u32>(u_input.b, arg_0.c.x, arg_1.c.x, arg_0.c.x)), reverseBits(vec4<u32>(arg_1.c.x, arg_0.c.x, 4294967295u, 4294967295u)), Struct_1(arg_1.e, arg_0.b, arg_0.c, false, -425f)).b), ~max(~vec2<u32>(79534u, u_input.c.x), vec2<u32>(1u, 45493u)), any(!select(vec2<bool>(arg_0.d, false), vec2<bool>(false, true), arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + _wgslsmith_div_f32(-499f, 1105f)))));
    var var_1 = !arg_0.d;
    let var_2 = !var_0.d;
    global1 = array<vec3<f32>, 21>();
    var var_3 = func_4(arg_0, firstLeadingBit((reverseBits(vec4<u32>(u_input.e, arg_1.c.x, u_input.c.x, u_input.c.x)) >> (vec4<u32>(u_input.e, arg_0.c.x, var_0.c.x, 0u) % vec4<u32>(32u))) << (select(~vec4<u32>(arg_0.c.x, 4294967295u, 4294967295u, var_0.c.x), vec4<u32>(arg_1.c.x, 1u, 21558u, var_0.c.x), select(vec4<bool>(true, arg_0.d, var_0.d, true), vec4<bool>(true, true, arg_0.d, false), true)) % vec4<u32>(32u))), var_0);
    return func_4(Struct_1(-2199f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, -851f)) + _wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(var_3.a, -1000f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1911f, -1338f) - vec2<f32>(892f, 750f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, var_0.e)))))), select(var_3.c, vec2<u32>(func_4(var_0, vec4<u32>(1u, var_3.c.x, 8649u, var_3.c.x), Struct_1(arg_1.b.x, arg_1.b, vec2<u32>(1u, arg_1.c.x), var_0.d, 780f)).c.x, ~arg_1.c.x), !select(vec2<bool>(var_3.d, var_2), vec2<bool>(var_2, false), vec2<bool>(false, false))), arg_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(375f + var_3.b.x)))), vec4<u32>(0u, func_3().x, ~select(14564u, var_0.c.x, var_3.d), 49338u), Struct_1(var_3.a, vec2<f32>(1000f, _wgslsmith_f_op_f32(var_3.b.x - 1872f)), arg_1.c, true, arg_0.e));
}

fn func_6(arg_0: Struct_1) -> f32 {
    global0 = u_input.a.x;
    var var_0 = func_5(func_4(arg_0, vec4<u32>(~28053u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.b, 31750u, 41954u), vec4<u32>(arg_0.c.x, 18511u, 4294967295u, 4294967295u)), ~1u, ~0u), func_5(Struct_1(_wgslsmith_f_op_f32(ceil(1410f)), arg_0.b, vec2<u32>(4294967295u, arg_0.c.x), true, _wgslsmith_f_op_f32(ceil(arg_0.b.x))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -729f), vec2<f32>(831f, arg_0.e), vec2<u32>(arg_0.c.x, arg_0.c.x) & vec2<u32>(arg_0.c.x, 0u), false != arg_0.d, _wgslsmith_f_op_f32(arg_0.e - 606f)))), arg_0);
    var var_1 = _wgslsmith_dot_vec4_i32(-(vec4<i32>(-4373i, u_input.a.x, u_input.d, 2147483647i) & min(vec4<i32>(-11086i, u_input.d, u_input.a.x, u_input.a.x), vec4<i32>(u_input.d, u_input.a.x, u_input.d, 1i))), vec4<i32>(max(-2649i, u_input.d << (7084u % 32u)), firstTrailingBit(0i) ^ ~64212i, u_input.a.x, i32(-1i) * -46284i)) == ~(~1i);
    var var_2 = Struct_1(func_2(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.c.x, arg_0.c.x), ~46669u, var_0.c.x), 1u, 12691u, 4294967295u)).b.x, _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_5(arg_0, Struct_1(-1000f, vec2<f32>(arg_0.b.x, 752f), vec2<u32>(var_0.c.x, 1u), true, 1323f)).a, arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(sign(-157f)), _wgslsmith_f_op_f32(428f * 572f)), false))), _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(u_input.c.x, u_input.c.x) ^ u_input.c), countOneBits(_wgslsmith_add_vec2_u32(var_0.c | u_input.c, ~arg_0.c))), arg_0.d, arg_0.e);
    var var_3 = _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2.b.x)))))));
    return -161f;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = arg_2;
    var_0 = _wgslsmith_f_op_f32(func_6(func_5(Struct_1(arg_2, vec2<f32>(_wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(sign(arg_2))), u_input.c, true, _wgslsmith_f_op_f32(select(arg_2, -672f, true))), func_4(func_2(~vec4<u32>(arg_3, 1u, arg_3, 45888u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 0u, 0u, u_input.e), _wgslsmith_mult_vec4_u32(vec4<u32>(14767u, 109692u, arg_3, arg_3), vec4<u32>(37784u, arg_3, arg_3, 1u))), Struct_1(arg_2, vec2<f32>(arg_2, arg_2), u_input.c, !arg_0, arg_2)))));
    let var_1 = func_2(vec4<u32>(arg_3, _wgslsmith_sub_u32(~firstLeadingBit(arg_3), ~0u), ~78754u, u_input.b));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(var_1.b.x))), var_1.b, vec2<u32>(_wgslsmith_add_u32(0u, abs(~10527u)), ~max(arg_3, ~arg_3)), false, var_1.a);
    global0 = -(~(-21306i << (1u % 32u))) << (var_2.c.x % 32u);
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(129f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(any(vec4<bool>(false, false, false, false)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-205f + 1867f), 22678u))), _wgslsmith_f_op_f32(func_6(func_2(min(vec4<u32>(0u, u_input.b, 4294967295u, 43970u), vec4<u32>(u_input.e, u_input.b, 65576u, u_input.e)))))), ~select(vec2<u32>(1u, u_input.e) & vec2<u32>(652u, u_input.b), ~u_input.c, all(vec4<bool>(true, true, true, true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_1(-588f, vec2<f32>(-577f, 1009f), vec2<u32>(u_input.e, 0u), true, 1118f), Struct_1(-740f, vec2<f32>(2215f, -470f), vec2<u32>(114234u, 1u), true, -2755f)).e))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(abs(vec4<u32>(15112u, 4294967295u, u_input.b, 1u))).e));
    var var_3 = !select(!(!vec3<bool>(var_0.d, var_0.d, var_0.d)), vec3<bool>(true, false, var_0.d), var_0.d);
    global1 = array<vec3<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(7035u, 21u)], global1[_wgslsmith_index_u32(var_0.c.x, 21u)])))), global1[_wgslsmith_index_u32(func_5(var_0, Struct_1(_wgslsmith_f_op_f32(abs(-1964f)), vec2<f32>(1088f, -1408f), vec2<u32>(var_0.c.x, 1u), false & var_3.x, _wgslsmith_f_op_f32(round(998f)))).c.x, 21u)], vec3<bool>(!all(vec3<bool>(var_0.d, false, var_0.d)), all(vec3<bool>(true, true, true)), 1u != (var_0.c.x & 20470u)))), vec2<i32>(_wgslsmith_mult_i32(u_input.d, _wgslsmith_mult_i32(-71183i, u_input.d) | select(-27620i, 1i, true)), _wgslsmith_mult_i32(1i, ~u_input.a.x) ^ -u_input.a.x));
}

