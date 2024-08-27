struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> f32 {
    let var_0 = arg_1.b;
    var var_1 = select(vec2<bool>(!any(vec3<bool>(true, true, true)), true), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_div_f32(471f, 500f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b), _wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b + var_0), _wgslsmith_f_op_vec2_f32(-var_0)))));
    var_1 = !vec2<bool>(!((-1i & u_input.c.x) != -2147483647i), ~(~u_input.a) == 4294967295u);
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(568f + arg_1.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_2.b.x) - _wgslsmith_f_op_vec2_f32(arg_1.b * vec2<f32>(arg_0, -800f)))))));
    return -487f;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(-116f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, 1835f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(645f, 1789f)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(983f, 546f)))))));
    let var_1 = Struct_5(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, arg_0.x, u_input.d, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(28659u, u_input.d, u_input.b.x, 84977u), arg_0)), vec4<u32>(arg_0.x, _wgslsmith_mult_u32(1u, arg_0.x) >> (u_input.b.x % 32u), u_input.a, arg_0.x)), Struct_1(var_0.b, u_input.c.xw, u_input.a), u_input.c.xw, Struct_1(var_0.b, ~vec2<i32>(-16552i ^ arg_2.x, min(96859i, 45222i)), u_input.d), -1000f);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -573f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.b.x, Struct_4(var_0.a, vec2<f32>(var_2, var_2))))), -562f, 1679f));
    var var_4 = arg_0.yxw;
    return _wgslsmith_f_op_f32(step(var_1.b.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x))))))));
}

fn func_1() -> f32 {
    var var_0 = vec4<i32>(u_input.c.x, u_input.c.x, ~0i, u_input.c.x ^ 2147483647i);
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_sub_vec4_i32(-u_input.c, u_input.c)), u_input.c, ~firstLeadingBit(~u_input.c));
    var_0 = u_input.c;
    let var_1 = true;
    let var_2 = -u_input.c.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec4<u32>(u_input.b.x, 1u, u_input.d, 1u), -40304i & (u_input.c.x << (u_input.b.x % 32u)), select(abs(vec3<i32>(4521i, -2147483647i, -1i)), vec3<i32>(-30613i, -72559i, u_input.c.x), vec3<bool>(false, false, var_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(abs(vec4<u32>(u_input.d, 1u, u_input.b.x, u_input.a)), countOneBits(u_input.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 11865i, -22200i), var_0.xyx)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = u_input.c | ~vec4<i32>(u_input.c.x << (42705u % 32u), min(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), -u_input.c.x), _wgslsmith_mod_i32(select(1i, u_input.c.x, true), -20868i), ~u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1911f);
    let var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, arg_0.b.x, true))) > arg_0.b.x;
    var var_4 = 46019u;
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-361f, -1073f, arg_1.x) * vec3<f32>(arg_0.a, arg_1.x, 269f)), vec3<f32>(arg_1.x, arg_0.b.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 2164f, arg_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -300f, -1393f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 420f, 584f)) - vec3<f32>(arg_1.x, var_1, var_1))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_div_f32(387f, -603f), _wgslsmith_f_op_f32(step(1131f, arg_1.x))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.d.a)) + _wgslsmith_f_op_vec2_f32(arg_2.d.a + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, arg_1.a.x)))))));
    var var_1 = all(select(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), countOneBits(arg_1.c) == _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 46983u, 0u, 36534u), arg_2.a), true, 0u < arg_1.c), 4294967295u <= _wgslsmith_clamp_u32(~arg_2.a.x, min(45494u, 0u), _wgslsmith_dot_vec3_u32(arg_2.a.zzy, vec3<u32>(u_input.d, u_input.d, 1u)))));
    var var_2 = ~(~max(~arg_1.c, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, arg_1.c), ~77376u)));
    var var_3 = ~arg_2.d.b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.xw;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1058f), vec2<f32>(_wgslsmith_div_f32(1000f, -1218f), _wgslsmith_f_op_f32(2100f + -397f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1388f, -1349f) - vec2<f32>(483f, 1585f)) + vec2<f32>(-294f, 186f)), vec2<f32>(_wgslsmith_f_op_f32(floor(-235f)), _wgslsmith_f_op_f32(func_1())))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f * -1296f)), 1252f), ~u_input.c.zy, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, 15712u, 0u) & vec3<u32>(50718u, 97108u, 60727u), vec3<u32>(0u, u_input.b.x, 1u) | vec3<u32>(u_input.b.x, 4294967295u, u_input.d)), _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.b), vec3<u32>(28617u, u_input.b.x, 4294967295u)))), Struct_5(vec4<u32>(u_input.a << (u_input.b.x % 32u), min(u_input.b.x, ~40246u), 0u, 0u), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1210f, -1722f), vec2<f32>(804f, 1331f))))), _wgslsmith_mult_vec2_i32(~u_input.c.zx, -u_input.c.ww), u_input.a), vec2<i32>(select(_wgslsmith_clamp_i32(var_0.x, u_input.c.x, -64181i), var_0.x, true), ~max(33334i, var_0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(1484f, vec2<f32>(860f, 542f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1379f, -1448f)))).xx, min(u_input.c.wy, ~u_input.c.xw), _wgslsmith_add_u32(7644u & u_input.a, u_input.d)), -535f));
    var var_2 = vec2<f32>(1378f, _wgslsmith_f_op_f32(exp2(var_1.a.x)));
    var var_3 = var_2.x;
    var var_4 = min(u_input.b << (u_input.b % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(_wgslsmith_sub_u32(u_input.d, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, 59760u, 4294967295u), var_1.c), u_input.b), vec3<u32>(_wgslsmith_div_u32(u_input.d, select(1u, 1u, false)), reverseBits(abs(u_input.a)), var_1.c)));
    var var_5 = u_input.b.x;
    let var_6 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -493f, var_1.a.x, 124f) - _wgslsmith_div_vec4_f32(vec4<f32>(-860f, -1029f, -1428f, var_2.x), vec4<f32>(var_2.x, var_1.a.x, var_1.a.x, -828f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1000f, var_2.x)))))));
    let var_7 = Struct_4(var_6.x, _wgslsmith_f_op_vec3_f32(func_4(Struct_4(238f, var_1.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + var_6.x), _wgslsmith_f_op_f32(func_2(vec4<u32>(var_1.c, var_1.c, 69414u, var_1.c), select(u_input.c.x, var_1.b.x, false), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.x, u_input.c.x, 1i), vec3<i32>(u_input.c.x, var_0.x, 44026i))))))).zy);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_i32(i32(-1i) * -var_1.b.x, 2147483647i >> (var_1.c % 32u)), 1i), func_5(var_6.xyw, func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_6.ywy * var_6.wzw) * var_6.zww), var_1, Struct_5(vec4<u32>(4294967295u, 6166u, 25168u, var_1.c), func_5(vec3<f32>(1926f, var_1.a.x, var_7.b.x), var_1, Struct_5(vec4<u32>(50737u, var_1.c, 12535u, 44789u), var_1, vec2<i32>(76664i, var_1.b.x), Struct_1(var_1.a, vec2<i32>(var_1.b.x, 31345i), 26652u), 1000f)), vec2<i32>(2147483647i, u_input.c.x), func_5(vec3<f32>(393f, 441f, var_1.a.x), Struct_1(vec2<f32>(var_7.b.x, -148f), u_input.c.zw, 58654u), Struct_5(vec4<u32>(63606u, var_4.x, u_input.a, 1u), var_1, var_0, var_1, -1163f)), _wgslsmith_f_op_f32(var_7.b.x + -1422f))), Struct_5(~vec4<u32>(u_input.a, u_input.d, var_4.x, 1930u), var_1, ~(~vec2<i32>(u_input.c.x, var_0.x)), Struct_1(vec2<f32>(1f, 1f), -var_1.b, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_4.x, 87991u, 64551u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -1246f))).b.x, ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-52697i, 2147483647i, var_1.b.x, 2060i), firstTrailingBit(u_input.c), u_input.c)), ~var_4.x);
}

