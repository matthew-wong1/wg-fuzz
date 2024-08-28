struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool) -> u32 {
    return ~u_input.a;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = global0.c.x;
    let var_1 = vec4<bool>(true, true, (func_3(global0.d.d.x <= global0.d.d.x) != 33703u) && all(global0.a), false);
    var var_2 = ~(((_wgslsmith_clamp_i32(1i, 6620i, 1i) | (-1i << (arg_0 % 32u))) >> (87582u % 32u)) & (~14559i >> (~(~u_input.a) % 32u)));
    var_0 = global0.c.x;
    var var_3 = min(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(18771u, u_input.a, 1u)), ~countOneBits(vec3<u32>(arg_0, 1u, arg_0))), select(~vec3<u32>(24695u, 102076u, 4294967295u), vec3<u32>(u_input.a, 38493u, 49335u), vec3<bool>(var_1.x, true, global0.d.e)) >> ((~vec3<u32>(4294967295u, 0u, u_input.a) | firstTrailingBit(vec3<u32>(1u, 28700u, u_input.a))) % vec3<u32>(32u))) & select(~vec3<u32>(max(u_input.a, u_input.a), u_input.a, arg_0), _wgslsmith_div_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(6769u, u_input.a, 45723u), vec3<u32>(u_input.a, 9819u, 9934u)), _wgslsmith_div_vec3_u32(vec3<u32>(20519u, 4294967295u, 90958u), vec3<u32>(arg_0, u_input.a, 1u)), select(global0.a.xyw, var_1.zwx, false)), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(10327u, u_input.a, u_input.a)), ~arg_0)), !any(select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, global0.d.e), vec4<bool>(var_1.x, var_1.x, global0.a.x, var_1.x))));
    return -35217i >> ((arg_0 & u_input.a) % 32u);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = 28450i != _wgslsmith_add_i32(-47812i, _wgslsmith_clamp_i32(-(i32(-1i) * -1i), _wgslsmith_add_i32(_wgslsmith_div_i32(38117i, 19176i), 31562i << (u_input.a % 32u)), -4362i ^ func_2(u_input.a)));
    global0 = Struct_2(global0.a, global0.b, global0.a.zxy, Struct_1(423f, -2236f, _wgslsmith_f_op_f32(sign(-330f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(global0.d.d)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b.x, -137f))))), !global0.d.e), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1971f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.c + global0.e.c) + global0.d.b) * 358f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(149f * -1166f))))), vec2<f32>(-1103f, _wgslsmith_f_op_f32(317f - global0.e.c)), 1u >= (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(1u, arg_0, 17643u)) | ~1u)));
    let var_1 = -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 851i), vec3<i32>(-29659i, 31534i, -39373i)), countOneBits(vec3<i32>(-17702i, 12800i, -42403i))), vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-14701i, -49077i, -2568i), vec3<i32>(-21006i, 20986i, 2058i)), ~vec3<i32>(13521i, 1i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, -1i) << (vec3<u32>(arg_0, arg_0, 34890u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, -22358i, -2147483647i))));
    global0 = Struct_2(vec4<bool>(!(all(vec4<bool>(true, true, global0.a.x, var_0)) | false), all(vec3<bool>(all(vec4<bool>(false, var_0, false, false)), all(vec2<bool>(false, true)), global0.e.e)), global0.d.b <= global0.e.c, false), _wgslsmith_div_vec4_f32(vec4<f32>(-1074f, global0.e.c, 2308f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f) + _wgslsmith_f_op_f32(select(524f, -514f, false)))), global0.b), select(global0.c, vec3<bool>(true || global0.e.e, any(select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), var_0)), true), var_0), global0.d, global0.d);
    var var_2 = -var_1;
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-755f * global0.b.x) - global0.d.a), _wgslsmith_f_op_f32(func_1(~4294967295u)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d.b)))));
    let var_1 = Struct_4(select(vec4<bool>(false, !(global0.a.x != global0.e.e), global0.d.e, global0.e.e), vec4<bool>(!global0.d.e, true, !(!global0.a.x), true && !global0.c.x), global0.c.x), Struct_2(vec4<bool>(true, any(global0.a), (u_input.a | u_input.a) <= abs(u_input.a), select(global0.a.x || global0.c.x, false, all(global0.c.yx))), _wgslsmith_f_op_vec4_f32(floor(global0.b)), select(select(select(vec3<bool>(global0.d.e, global0.a.x, global0.e.e), vec3<bool>(true, false, false), global0.a.yzx), select(global0.c, global0.a.xxw, global0.e.e), global0.c), vec3<bool>(false, true, any(global0.c.zy)), global0.a.yww), Struct_1(_wgslsmith_f_op_f32(max(global0.e.b, global0.e.d.x)), _wgslsmith_f_op_f32(562f + -1462f), global0.e.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.a, -1378f)), global0.d.d), global0.d.e), Struct_1(global0.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.d.x - -1000f) * -931f), global0.e.d.x, vec2<f32>(-507f, _wgslsmith_f_op_f32(round(global0.e.b))), true)), vec2<bool>(global0.d.e, true), ~max(~(vec4<u32>(0u, 14742u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) % vec4<u32>(32u))), abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.b.d.c)), global0.b.x) - var_1.b.e.a);
    var var_2 = Struct_3(!vec4<bool>(false, global0.e.e, select(false, any(vec2<bool>(true, global0.a.x)), var_1.b.c.x | false), false), _wgslsmith_f_op_vec4_f32(-global0.b));
    var var_3 = var_2.b.x;
    let var_4 = min(vec2<i32>(-1i, ~firstLeadingBit(~15739i)), firstLeadingBit(select(abs(vec2<i32>(47848i, 0i)), vec2<i32>(2147483647i, 19033i), vec2<bool>(var_2.a.x, false))) << (firstTrailingBit(_wgslsmith_sub_vec2_u32(~var_1.d.yx, var_1.d.wz << (vec2<u32>(var_1.d.x, 0u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(max(-_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_4.x), vec2<i32>(16311i, var_4.x)), var_4), -(-vec2<i32>(0i, 0i) >> (_wgslsmith_sub_vec2_u32(var_1.d.yz, vec2<u32>(var_1.d.x, var_1.d.x)) % vec2<u32>(32u)))));
}

