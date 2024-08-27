struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(4294967295u, 11212u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 16823u), vec2<u32>(4294967295u, 40939u), vec2<u32>(970u, 0u), vec2<u32>(4294967295u, 26951u), vec2<u32>(0u, 47478u), vec2<u32>(41156u, 8158u), vec2<u32>(30846u, 7095u), vec2<u32>(6714u, 6739u), vec2<u32>(12246u, 56771u), vec2<u32>(0u, 37355u), vec2<u32>(365u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1u, 8381u));

var<private> global2: array<Struct_4, 24>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_4) -> i32 {
    global1 = array<vec2<u32>, 15>();
    let var_0 = vec2<i32>(-1i) * -(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.c, vec2<i32>(1i, -42552i)), arg_0.c) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(4943i, 23080i), _wgslsmith_add_vec2_i32(arg_0.c, arg_0.c)));
    let var_1 = 29304i;
    global1 = array<vec2<u32>, 15>();
    var var_2 = var_1;
    return var_0.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_3 {
    return Struct_3(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) + _wgslsmith_f_op_f32(1194f + arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 4u)])))))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), vec3<bool>(select(true, false, true), true, true), false), select(vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true), vec3<bool>(true, true, true), !any(vec4<bool>(false, false, false, false))), vec3<bool>(false, true, true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = abs(4341i);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 4u)])), 146f)));
    var var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(~2147483647i << (~u_input.a.x % 32u), -_wgslsmith_sub_i32(arg_1.a, arg_1.a)), ~firstLeadingBit(-(vec2<i32>(arg_1.a, arg_1.a) | vec2<i32>(arg_1.a, arg_1.a))));
    global0 = array<f32, 4>();
    let var_3 = vec4<i32>(_wgslsmith_add_i32(-min(-arg_1.a, 1i), -_wgslsmith_mult_i32(arg_1.a, 2147483647i) | max(arg_1.a >> (u_input.a.x % 32u), ~arg_1.a)), arg_1.a, _wgslsmith_sub_i32(arg_1.a, arg_1.a), func_3(~(~u_input.a.zz), -vec2<i32>(arg_1.a, abs(arg_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(arg_0.xxw)))))).a);
    return func_3(firstTrailingBit(vec2<u32>(4294967295u, reverseBits(u_input.a.x ^ 20791u))), var_3.wx, arg_0.zyx);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> f32 {
    global1 = array<vec2<u32>, 15>();
    let var_0 = 1u;
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b, 1430f, 1704f, -593f))), vec4<f32>(arg_1.b, 595f, -523f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), !arg_1.c.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(630f, global0[_wgslsmith_index_u32(27707u, 4u)], 662f, -736f) + vec4<f32>(arg_1.b, global0[_wgslsmith_index_u32(9538u, 4u)], 789f, global0[_wgslsmith_index_u32(0u, 4u)])) - vec4<f32>(-1340f, global0[_wgslsmith_index_u32(arg_0, 4u)], 528f, -1000f)))), func_3(global1[_wgslsmith_index_u32(4294967295u, 15u)], vec2<i32>(~_wgslsmith_clamp_i32(-2400i, arg_1.a, 0i), func_2(Struct_4(arg_1.a, arg_1.c.xx, vec2<i32>(arg_1.a, arg_1.a), 4294967295u, Struct_1(vec3<f32>(-1224f, 174f, 1000f), 14172u, vec2<f32>(685f, -1000f), vec2<f32>(-555f, 359f)))) >> ((1u >> (1u % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, 1606f, arg_1.b), vec3<f32>(-331f, -1313f, global0[_wgslsmith_index_u32(131813u, 4u)]))), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], -127f, 164f))))));
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1673f, 123f, -553f, -735f)), Struct_3(_wgslsmith_mod_i32(select(var_1.a, var_1.a, any(vec4<bool>(arg_1.c.x, true, arg_1.c.x, false))), -(~(-2147483647i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(arg_0), 4u)] - _wgslsmith_f_op_f32(var_1.b - var_1.b)))), !vec3<bool>(func_3(vec2<u32>(u_input.a.x, arg_0), vec2<i32>(var_1.a, -10775i), vec3<f32>(-674f, -294f, var_1.b)).c.x, -1260f >= var_1.b, true)));
    var var_2 = var_1.c.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(488f, -249f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1050f))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(76319u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 38909u), vec3<u32>(~0u, u_input.a.x, u_input.a.x), vec3<u32>(0u, abs(61337u), u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, 0u, _wgslsmith_div_u32(0u, 16849u)), ~select(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 12707u), vec3<bool>(arg_3.c.x, arg_3.c.x, false)))), u_input.a);
    global1 = array<vec2<u32>, 15>();
    let var_1 = vec2<u32>(abs(1u | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 18147u, u_input.a.x, u_input.a.x), vec4<u32>(34309u, u_input.a.x, 37231u, 1u)), firstTrailingBit(vec4<u32>(52495u, 0u, 91740u, 34437u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(24628u, abs(_wgslsmith_div_u32(u_input.a.x, 5985u)), ~_wgslsmith_div_u32(43552u, 4294967295u)), var_0));
    return vec3<bool>(false, func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-362f, -1448f, arg_1, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, -1000f, -1000f, -942f) - vec4<f32>(arg_1, arg_3.b, arg_0, global0[_wgslsmith_index_u32(14253u, 4u)])), !vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x, true))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b), 1f, -1000f, 840f))), func_3(select(min(vec2<u32>(var_1.x, var_0.x), u_input.a.xz), vec2<u32>(4294967295u, var_0.x), vec2<bool>(arg_3.c.x, arg_3.c.x)), vec2<i32>(-1i, arg_3.a) & abs(vec2<i32>(arg_3.a, arg_3.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, arg_0, global0[_wgslsmith_index_u32(var_0.x, 4u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], arg_0, -324f))))).c.x, !arg_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 24u)];
    let var_1 = func_5(-1390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(4294967295u, Struct_3(var_0.c.x ^ var_0.a, -635f, select(vec3<bool>(false, true, false), vec3<bool>(false, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, false))))) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, 28640u)), reverseBits(u_input.a >> (u_input.a % vec3<u32>(32u)))), 4u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + -674f), _wgslsmith_f_op_f32(round(1728f))), Struct_3(~(~var_0.a) << (u_input.a.x % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.e.a.x), global0[_wgslsmith_index_u32(20868u, 4u)])), vec3<bool>(var_0.b.x, var_0.b.x, !func_4(vec4<f32>(-1806f, global0[_wgslsmith_index_u32(22670u, 4u)], var_0.e.a.x, var_0.e.d.x), Struct_3(var_0.c.x, -392f, vec3<bool>(false, false, false))).c.x)));
    let var_2 = _wgslsmith_div_vec4_i32(~vec4<i32>(abs(var_0.c.x), 0i, 0i, var_0.c.x), vec4<i32>(var_0.c.x, func_2(global2[_wgslsmith_index_u32(81731u ^ var_0.e.b, 24u)]), ~1i, min(max(-2147483647i, 40977i), -6485i))) | firstLeadingBit(max(-vec4<i32>(-35687i, var_0.c.x, 0i, var_0.c.x), vec4<i32>(abs(var_0.c.x), func_4(vec4<f32>(148f, var_0.e.a.x, 1282f, global0[_wgslsmith_index_u32(1u, 4u)]), Struct_3(-13219i, var_0.e.c.x, vec3<bool>(var_1.x, true, false))).a, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, -1i)))));
    var var_3 = -(var_2.x | var_2.x);
    global2 = array<Struct_4, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.d.x, -2862f, -1000f, -849f))) * vec4<f32>(var_0.e.c.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(612u, 4u)]), _wgslsmith_f_op_f32(-390f * global0[_wgslsmith_index_u32(0u, 4u)]), 158f)))));
}

