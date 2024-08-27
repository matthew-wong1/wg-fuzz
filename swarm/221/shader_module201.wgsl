struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-12432i, -34429i, -32984i, i32(-2147483648), 1i, 15320i, 54843i, i32(-2147483648), 30443i, -60265i, -63933i, 1i, 9807i, -32542i, 1i, 0i, -58472i, -29326i, -15049i, 2147483647i, 8679i, 6574i, 2147483647i);

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(28830u, vec3<bool>(true, true, true), vec4<f32>(297f, 1711f, 683f, -717f), Struct_2(vec4<bool>(true, true, true, false), 2147483647i, 2954f)), Struct_3(10896u, vec3<bool>(true, true, true), vec4<f32>(-446f, 806f, 260f, 1290f), Struct_2(vec4<bool>(true, false, true, false), -1i, 101f)), Struct_3(1u, vec3<bool>(true, true, false), vec4<f32>(1000f, -288f, -1905f, 849f), Struct_2(vec4<bool>(false, false, true, false), 2147483647i, 1842f)), Struct_3(4621u, vec3<bool>(false, true, false), vec4<f32>(-749f, 829f, -540f, -606f), Struct_2(vec4<bool>(true, false, false, true), 11064i, -913f)), Struct_3(43115u, vec3<bool>(true, true, true), vec4<f32>(1000f, -1196f, 1000f, 455f), Struct_2(vec4<bool>(true, false, false, false), -24729i, 1112f)), Struct_3(1u, vec3<bool>(false, true, true), vec4<f32>(-1880f, 1000f, -697f, 972f), Struct_2(vec4<bool>(true, true, false, true), -995i, 977f)), Struct_3(1721u, vec3<bool>(true, true, false), vec4<f32>(-1044f, 733f, 191f, -1063f), Struct_2(vec4<bool>(false, false, false, false), -1814i, -839f)), Struct_3(2577u, vec3<bool>(false, false, true), vec4<f32>(-385f, 789f, -106f, 480f), Struct_2(vec4<bool>(false, true, false, true), 1i, 699f)), Struct_3(43709u, vec3<bool>(true, false, true), vec4<f32>(-1000f, 1000f, -1000f, -1089f), Struct_2(vec4<bool>(true, true, true, false), -20949i, 597f)), Struct_3(4294967295u, vec3<bool>(false, false, false), vec4<f32>(404f, 1000f, 1016f, -773f), Struct_2(vec4<bool>(true, true, false, false), i32(-2147483648), 1037f)), Struct_3(4294967295u, vec3<bool>(true, false, true), vec4<f32>(-650f, -1377f, -1342f, -1189f), Struct_2(vec4<bool>(true, true, true, false), i32(-2147483648), -647f)), Struct_3(47634u, vec3<bool>(true, true, true), vec4<f32>(-678f, 1331f, -1729f, 1137f), Struct_2(vec4<bool>(true, false, false, true), i32(-2147483648), -1038f)), Struct_3(4294967295u, vec3<bool>(true, false, false), vec4<f32>(469f, 1360f, -852f, -599f), Struct_2(vec4<bool>(true, false, false, false), 3857i, -1747f)), Struct_3(1u, vec3<bool>(false, false, false), vec4<f32>(-430f, 229f, 1172f, 651f), Struct_2(vec4<bool>(false, false, true, false), -1i, -383f)), Struct_3(19637u, vec3<bool>(true, true, false), vec4<f32>(-819f, -163f, 1531f, 474f), Struct_2(vec4<bool>(false, true, false, true), 33315i, 694f)), Struct_3(44456u, vec3<bool>(false, false, false), vec4<f32>(145f, -115f, 1167f, 1927f), Struct_2(vec4<bool>(false, true, true, false), 18678i, 169f)), Struct_3(60922u, vec3<bool>(false, true, true), vec4<f32>(678f, 1027f, -1040f, -276f), Struct_2(vec4<bool>(false, false, false, true), -11369i, 868f)), Struct_3(23105u, vec3<bool>(true, false, false), vec4<f32>(-728f, -1421f, 206f, -1000f), Struct_2(vec4<bool>(true, true, false, true), 0i, 111f)), Struct_3(15519u, vec3<bool>(false, false, false), vec4<f32>(1099f, -1000f, -1475f, -203f), Struct_2(vec4<bool>(true, true, true, false), 2147483647i, -1908f)), Struct_3(16625u, vec3<bool>(true, true, true), vec4<f32>(1554f, 405f, -763f, -3039f), Struct_2(vec4<bool>(false, true, false, true), 15496i, 343f)), Struct_3(677u, vec3<bool>(false, true, true), vec4<f32>(793f, -556f, 1472f, -316f), Struct_2(vec4<bool>(false, true, false, false), 50352i, -396f)), Struct_3(53148u, vec3<bool>(false, true, false), vec4<f32>(-1214f, -1422f, 811f, 614f), Struct_2(vec4<bool>(false, false, false, false), 2147483647i, 724f)));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    global1 = array<Struct_3, 22>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, arg_1.c.x)))))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<bool>) -> f32 {
    global3 = Struct_2(global3.a, arg_1.x, global3.c);
    global3 = Struct_2(select(global3.a, !global3.a, vec4<bool>(true, !(global3.b <= arg_1.x), !arg_2.x, true)), (i32(-1i) * -54720i) | _wgslsmith_add_i32(firstLeadingBit(u_input.c.x), global3.b), arg_0);
    let var_0 = ~u_input.d;
    global0 = array<i32, 23>();
    let var_1 = Struct_1(vec3<bool>(select(u_input.d.x < _wgslsmith_mult_u32(var_0.x, 21974u), global3.a.x, _wgslsmith_f_op_f32(-global3.c) == 454f), !any(vec3<bool>(global2.x, false, arg_2.x)), global2.x), firstLeadingBit(_wgslsmith_clamp_u32(~u_input.d.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.d.x, var_0.x), vec4<u32>(var_0.x, u_input.d.x, 1u, var_0.x)) % 32u), firstLeadingBit(u_input.d.x << (3997u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_0.x, 40980u, var_0.x), ~vec4<u32>(var_0.x, var_0.x, var_0.x, 24489u)))), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 11440u, u_input.d.x) ^ vec4<u32>(1u, 1u, 33076u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.d.x, u_input.d.x, 3332u), vec4<u32>(4294967295u, 0u, 15657u, 21622u), vec4<u32>(u_input.d.x, u_input.d.x, 43351u, 1u)))));
    return _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c - arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global3.c)), global3.c, var_1.a.x)), true)))), Struct_3(~40428u, vec3<bool>(!(481f > global3.c), var_1.a.x, select(all(vec3<bool>(global2.x, global3.a.x, true)), global3.a.x, global2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c, 456f, 2065f, arg_0) - vec4<f32>(arg_0, 168f, global3.c, -1481f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.c, -1761f, 1505f, 181f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1124f)), _wgslsmith_f_op_f32(max(arg_0, arg_0)), 149f, arg_0)), Struct_2(select(global3.a, global3.a, true), u_input.c.x & firstTrailingBit(arg_1.x), _wgslsmith_f_op_f32(step(global3.c, _wgslsmith_f_op_f32(max(612f, -1997f)))))), _wgslsmith_f_op_f32(step(global3.c, 419f)), ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.b, 50690u, 1u, u_input.d.x), firstTrailingBit(vec4<u32>(4294967295u, var_1.c, u_input.d.x, 138920u))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = arg_3.d;
    var_0 = Struct_2(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.a.x, arg_1.a.x, arg_3.b.x, global2.x), arg_3.d.a), select(vec4<bool>(arg_3.b.x, true, true, global2.x), !global3.a, select(global3.a, var_0.a, false)), any(arg_3.b) && arg_2.a.x), _wgslsmith_add_i32(~(-50662i << (0u % 32u)), 0i) | _wgslsmith_add_i32(min(_wgslsmith_sub_i32(0i, arg_0), _wgslsmith_mod_i32(var_0.b, 20659i)), reverseBits(16294i)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - arg_3.d.c), arg_3.c.x), vec2<i32>(~(-7206i) ^ arg_0, global0[_wgslsmith_index_u32(firstTrailingBit(arg_3.a), 23u)]), vec3<bool>(all(arg_2.a), global3.a.x, any(var_0.a)))));
    var var_1 = Struct_3(_wgslsmith_dot_vec2_u32(abs(~(vec2<u32>(1u, u_input.d.x) & vec2<u32>(arg_2.c, 1u))), firstLeadingBit(~vec2<u32>(1u, 1u))), vec3<bool>(any(!vec4<bool>(true, true, arg_2.a.x, global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -993f) >= var_0.c, (~arg_3.a & 4294967295u) < abs(arg_3.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)), global3.c, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-257f + 449f) + global3.c)) - arg_3.c), arg_3.d);
    var var_2 = Struct_2(!vec4<bool>(var_1.d.a.x, var_1.d.a.x, !global3.a.x | true, false), -2147483647i, var_1.d.c);
    global2 = vec3<bool>(true & all(var_0.a.zww), all(!vec2<bool>(var_2.a.x & true, !arg_2.a.x)), false);
    return vec2<i32>(17402i, -51302i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 4294967295u), vec3<bool>(true, abs(global3.b << (u_input.d.x % 32u)) == global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(18931u, ~u_input.d.x), 23u)], _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x), vec4<u32>(1u, u_input.d.x, 49800u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 106320u, 1u, 1u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))) >= 3894u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1424f, global3.c, global3.c, -241f))) - vec4<f32>(-1064f, _wgslsmith_f_op_f32(func_1(global3.c, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global3.c, vec4<u32>(u_input.d.x, 1u, 26800u, u_input.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -489f), 488f))), Struct_2(!(!vec4<bool>(true, false, global3.a.x, false)), global3.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c - 2039f) + -1669f)))));
    global1 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(7070u, func_2(-32505i, Struct_1(global3.a.wwx, 6675u, _wgslsmith_add_u32(15281u, _wgslsmith_mod_u32(4853u, 35557u))), Struct_1(var_0.d.a.wzx, abs(_wgslsmith_sub_u32(u_input.d.x, var_0.a)), 0u), Struct_3(1u << (1u % 32u), vec3<bool>(var_0.d.a.x, global3.a.x, all(vec4<bool>(true, true, global3.a.x, false))), vec4<f32>(-1972f, -364f, _wgslsmith_f_op_f32(1080f + global3.c), 1507f), Struct_2(vec4<bool>(false, true, global3.a.x, true), global3.b, _wgslsmith_f_op_f32(-global3.c)))), ~(~_wgslsmith_add_vec2_u32(select(vec2<u32>(0u, 93154u), u_input.d, vec2<bool>(true, var_0.b.x)), vec2<u32>(1128u, 7901u))), var_0.c.xz);
}

