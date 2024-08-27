struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<u32, 27>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 68354u, 0u, 28163u);

var<private> global2: i32;

var<private> global3: array<Struct_5, 16>;

var<private> global4: f32 = 1000f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global4 = _wgslsmith_f_op_f32(sign(725f));
    let var_0 = any(vec3<bool>(true, _wgslsmith_f_op_f32(select(456f, 1030f, true)) <= 498f, true));
    global3 = array<Struct_5, 16>();
    let var_1 = u_input.a;
    global3 = array<Struct_5, 16>();
    return 647f;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-1479f + -1235f))))), -1707f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-915f, _wgslsmith_f_op_f32(f32(-1f) * -640f)))));
    global2 = u_input.a;
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-countOneBits(1i << (1u % 32u)), arg_0 ^ arg_0, 2147483647i), vec3<i32>(1i, arg_0, arg_0));
    var var_3 = 1u;
    return ~(~_wgslsmith_clamp_u32(var_1, ~max(21953u, 1u), ~35916u));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_u32(arg_0.b.b, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14049u, 27u)] >> (arg_0.b.a.c % 32u), 27u)], func_2(arg_0.e.d)), _wgslsmith_clamp_u32(global1.x, 74881u ^ global1.x, 16128u)), global0[_wgslsmith_index_u32(func_2(arg_2.x), 27u)], _wgslsmith_mod_u32(arg_0.b.e.c.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, arg_0.e.c, 8155u), arg_0.b.b) % 32u), _wgslsmith_dot_vec3_u32(~global1.wxz, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.e.c, 1u, 43818u), arg_0.b.b.zww))), countOneBits(~global0[_wgslsmith_index_u32(select(arg_0.e.c, 37005u, false), 27u)])));
    let var_1 = arg_0.b.e;
    var var_2 = !(var_1.a < _wgslsmith_f_op_f32(f32(-1f) * -180f));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-437f, arg_0.c, arg_0.b.c.a, var_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(ceil(1683f)), var_1.a, var_1.a) + vec4<f32>(_wgslsmith_f_op_f32(501f * 260f), _wgslsmith_f_op_f32(max(-1116f, arg_0.c)), _wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(907f * -208f))) * vec4<f32>(-1000f, arg_0.b.e.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(844f, arg_0.c) - _wgslsmith_f_op_f32(min(arg_0.c, -232f))), var_1.a)), false));
    var var_4 = Struct_5(all(arg_0.b.c.b.wz) && var_1.c.e, arg_0.b, _wgslsmith_f_op_f32(step(arg_0.c, var_3.x)), firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(-arg_0.d.x, -35765i), 1i, -u_input.a)), arg_0.e);
    return Struct_2(_wgslsmith_f_op_f32(func_3()), !var_4.b.c.b, !select(arg_0.b.c.b.zz, !vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_4.a, true)), abs(51943i));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_4) -> bool {
    let var_0 = ~(1u << (abs(_wgslsmith_sub_u32(global1.x, _wgslsmith_div_u32(arg_2.e.c.c, global1.x))) % 32u));
    global4 = _wgslsmith_f_op_f32(trunc(arg_1.x));
    return !arg_2.e.b;
}

fn func_5(arg_0: vec3<bool>) -> u32 {
    var var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, ~(global1.x << (global1.x % 32u))), ~4294967295u), 27u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-360f, -740f, 500f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, -1428f, -1128f, 575f)))))));
    global3 = array<Struct_5, 16>();
    var var_2 = true;
    let var_3 = Struct_5(arg_0.x, Struct_4(Struct_1(-vec3<i32>(-1i, u_input.a, 3220i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, u_input.a)), global1.x, -2147483647i, false), firstLeadingBit(vec4<u32>(global1.x ^ global0[_wgslsmith_index_u32(4294967295u, 27u)], 44027u, ~4294967295u, ~global1.x)), func_1(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(31182u, 27u)], 4294967295u, global1.x, global1.x), vec4<u32>(1u, 32708u, 4294967295u, 0u)), 16u)], vec4<i32>(30897i, u_input.a << (global1.x % 32u), _wgslsmith_sub_i32(0i, u_input.a), firstLeadingBit(u_input.a)), vec4<i32>(u_input.a & -1i, 1i, _wgslsmith_sub_i32(-11282i, 1i), _wgslsmith_sub_i32(-2147483647i, u_input.a))), -u_input.a, Struct_3(var_1.x, func_1(Struct_5(false, Struct_4(Struct_1(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec2<i32>(21093i, u_input.a), 47690u, u_input.a, arg_0.x), vec4<u32>(43443u, global1.x, global1.x, 1u), Struct_2(var_1.x, vec4<bool>(false, arg_0.x, arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), 6457i), 2147483647i, Struct_3(-321f, false, Struct_1(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec2<i32>(0i, 48263i), 86651u, 0i, arg_0.x), 11350i)), -1747f, vec3<i32>(u_input.a, 1i, -11248i), Struct_1(vec3<i32>(u_input.a, u_input.a, 0i), vec2<i32>(1i, u_input.a), global0[_wgslsmith_index_u32(47756u, 27u)], -24674i, false)), firstLeadingBit(vec4<i32>(44573i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(-50836i, u_input.a, 18097i, -2147483647i)).c.x, Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a, 0i), vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec2<i32>(u_input.a, 0i), ~1u, ~u_input.a, !arg_0.x), _wgslsmith_mult_i32(u_input.a, -2147483647i & u_input.a))), -710f, vec3<i32>(u_input.a, firstLeadingBit(_wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(-1i, u_input.a))), select(abs(u_input.a), u_input.a, 364f >= var_1.x) ^ u_input.a), Struct_1(abs(select(vec3<i32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<i32>(60683i, u_input.a, u_input.a)), true)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 41871i)), ~vec2<i32>(u_input.a, -1i)), select(-vec2<i32>(-58556i, 22492i), vec2<i32>(-1i, u_input.a) ^ vec2<i32>(u_input.a, u_input.a), arg_0.x)), ~5326u, -(-u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 0u), vec2<u32>(1u, 4294967295u)) % 32u)), !func_1(Struct_5(arg_0.x, Struct_4(Struct_1(vec3<i32>(u_input.a, 1i, u_input.a), vec2<i32>(-43266i, u_input.a), global1.x, 1i, false), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 4740u, 1u, global1.x), Struct_2(597f, vec4<bool>(arg_0.x, false, arg_0.x, false), vec2<bool>(arg_0.x, false), u_input.a), 0i, Struct_3(-410f, true, Struct_1(vec3<i32>(38414i, -34415i, u_input.a), vec2<i32>(u_input.a, u_input.a), global1.x, 1745i, true), 2147483647i)), 263f, vec3<i32>(u_input.a, 0i, u_input.a), Struct_1(vec3<i32>(u_input.a, -1i, u_input.a), vec2<i32>(u_input.a, u_input.a), global1.x, u_input.a, true)), vec4<i32>(5921i, u_input.a, u_input.a, -1i) >> (vec4<u32>(global1.x, global1.x, 3047u, 19284u) % vec4<u32>(32u)), countOneBits(vec4<i32>(1i, -2147483647i, u_input.a, -15380i))).b.x));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(-2147483647i << (global1.x % 32u));
    var var_0 = global3[_wgslsmith_index_u32(func_5(vec3<bool>(true, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) * _wgslsmith_f_op_f32(776f - -853f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-248f)), -304f, _wgslsmith_f_op_f32(step(177f, -1719f)), -1111f), Struct_4(Struct_1(vec3<i32>(u_input.a, 22314i, -2426i), vec2<i32>(18351i, u_input.a), global1.x, 16915i, true), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 27u)], global1.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 27u)], 27u)], 27u)])), func_1(Struct_5(false, Struct_4(Struct_1(vec3<i32>(u_input.a, 1i, 11887i), vec2<i32>(2147483647i, 2147483647i), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 27u)], 27u)], 14238i, false), vec4<u32>(7849u, global1.x, 45452u, 1u), Struct_2(-537f, vec4<bool>(true, false, true, true), vec2<bool>(true, true), 2147483647i), -11032i, Struct_3(981f, true, Struct_1(vec3<i32>(u_input.a, u_input.a, -23441i), vec2<i32>(-2147483647i, -1i), 36429u, 16972i, true), -13676i)), 213f, vec3<i32>(u_input.a, u_input.a, -2147483647i), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<i32>(2147483647i, 0i), global0[_wgslsmith_index_u32(0u, 27u)], -34347i, false)), vec4<i32>(u_input.a, -30446i, -12806i, u_input.a), vec4<i32>(27492i, 24918i, u_input.a, u_input.a)), ~28416i, Struct_3(-1340f, false, Struct_1(vec3<i32>(-54418i, u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), 4294967295u, u_input.a, true), -1i))), false)), 16u)];
    let var_1 = Struct_3(var_0.b.c.a, true, var_0.b.a, u_input.a);
    global0 = array<u32, 27>();
    global4 = _wgslsmith_div_f32(var_0.c, -1092f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.a, var_0.c, 374f)))));
}

