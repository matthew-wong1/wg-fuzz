struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(12456u, 4294967295u, 4294967295u, 1u, 4294967295u, 0u, 1u, 5225u, 60875u, 40083u, 19992u, 49399u, 0u, 4294967295u, 51321u, 68832u, 11117u, 26822u, 0u, 54162u);

var<private> global1: i32;

var<private> global2: f32 = -1717f;

var<private> global3: array<Struct_2, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(1724f, global3[_wgslsmith_index_u32(58261u, 21u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(var_0.b.b.zww));
    let var_2 = select(~(~14396u), 17881u, var_0.b.c.x);
    var var_3 = Struct_4(_wgslsmith_div_f32(var_0.b.b.x, var_1.x), Struct_2(u_input.d << (min(40082u, global0[_wgslsmith_index_u32(1u, 20u)]) % 32u), vec4<f32>(_wgslsmith_div_f32(1085f, _wgslsmith_div_f32(var_0.a, var_1.x)), var_0.a, 1415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f * var_1.x) - var_1.x)), select(!var_0.b.c, !(!vec3<bool>(true, var_0.b.c.x, true)), false)));
    var var_4 = ~(~countOneBits(~65573u)) & u_input.d;
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_3.b.a), vec2<u32>(reverseBits(global0[_wgslsmith_index_u32(var_2, 20u)]), ~17767u)) & _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 67460u, 4294967295u), vec3<u32>(var_2, 41401u, 34454u))), vec3<u32>(var_3.b.a, var_0.b.a, 23233u) & abs(vec3<u32>(37056u, var_2, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, var_0.b.a)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    global2 = -1000f;
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = func_3();
    global1 = firstLeadingBit(reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, -33282i), u_input.b.zx)));
    return Struct_3(true, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1f))))), ~arg_0.xwz, Struct_1(!(!select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), false)), _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(arg_0.xzw, arg_0.wxw), firstLeadingBit(firstTrailingBit(74512u))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), _wgslsmith_f_op_vec2_f32(arg_2.zy - vec2<f32>(arg_2.x, arg_2.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-819f, arg_2.x))), vec2<f32>(arg_2.x, arg_2.x)))), !(!(!select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, true, arg_1, true), vec4<bool>(true, arg_1, arg_1, false)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global2 = -190f;
    var var_0 = func_2(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_3.a, arg_2.b.a, arg_2.b.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 1u, 5944u, 685u), vec4<u32>(29268u, global0[_wgslsmith_index_u32(arg_3.a, 20u)], 1u, u_input.d)))), _wgslsmith_mod_vec4_u32(select(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 24409u, arg_2.b.a, 19773u)), min(vec4<u32>(75512u, 1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18250u, 20u)], 20u)]), vec4<u32>(9920u, 4294967295u, 45109u, 41574u)), all(arg_3.c)), vec4<u32>(u_input.a, 1u ^ arg_3.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 20u)], 97972u), 20u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]))), arg_3.c.x, _wgslsmith_f_op_vec3_f32(-arg_2.b.b.ywy));
    let var_1 = arg_3.c;
    var var_2 = Struct_4(788f, arg_3);
    var var_3 = true;
    return var_0.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> f32 {
    global3 = array<Struct_2, 21>();
    global2 = -2212f;
    let var_0 = arg_0;
    var var_1 = -2147483647i;
    var var_2 = max(vec2<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(func_2(vec4<u32>(arg_1.c, arg_1.c, arg_2, 0u), true, var_0.b.zwy).c.x, max(global0[_wgslsmith_index_u32(22717u, 20u)], arg_1.c))), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 4294967295u), ~max(vec2<u32>(0u, 0u), vec2<u32>(43877u, arg_1.c)))), ~(~(~vec2<u32>(55559u, global0[_wgslsmith_index_u32(arg_1.c, 20u)]))));
    return _wgslsmith_f_op_f32(round(func_2(vec4<u32>(~_wgslsmith_mod_u32(u_input.a, 0u), 34150u, min(55141u, arg_0.a), ~arg_0.a), !(!(74737u <= var_0.a)), arg_0.b.wzy).d.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-648f, _wgslsmith_f_op_f32(1071f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-112f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(33552u, 21u)], func_1(vec3<f32>(2194f, -656f, 399f), vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.d, 20u)]), Struct_4(-760f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34774u, 20u)], 21u)]), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 21u)]), 4294967295u))))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-1639f, -940f)), _wgslsmith_f_op_f32(min(-2316f, _wgslsmith_f_op_f32(step(-1881f, 323f)))), 1662f), vec3<f32>(-183f, _wgslsmith_f_op_f32(f32(-1f) * -2826f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(626f, -1236f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_1 = -(max(select(u_input.b << (vec3<u32>(66132u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(1i, u_input.b.x, u_input.c.x), vec3<bool>(true, true, false)), u_input.b) ^ _wgslsmith_div_vec3_i32(~(-vec3<i32>(0i, u_input.c.x, 0i)), u_input.b));
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f * -455f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1877f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))));
    var var_3 = Struct_2(22480u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-584f * 1041f), func_2(vec4<u32>(22934u, u_input.a, u_input.d, u_input.d), false, vec3<f32>(var_0.x, -1639f, var_0.x)).b, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(734f))))), !vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), !(u_input.a >= 24698u), all(vec3<bool>(true, true, true))));
    let var_4 = var_1.x;
    let var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(reverseBits(u_input.c), countOneBits(u_input.c)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(29269u, 83188u, u_input.d, var_3.a) & vec4<u32>(4294967295u, u_input.a, 4294967295u, var_3.a), ~vec4<u32>(201u, 1u, 71350u, var_3.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(var_3.a, 20u)], 85023u), ~vec4<u32>(21582u, var_3.a, var_3.a, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 20u)], 20u)], u_input.a, 0u), vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(33346u, 20u)], u_input.a, 0u)))), abs(global0[_wgslsmith_index_u32(0u, 20u)] << ((1u & var_3.a) % 32u))));
}

