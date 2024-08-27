struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(507f, 451f), vec2<f32>(1000f, -1357f), vec2<f32>(-1000f, 1733f), vec2<f32>(-292f, -1044f), vec2<f32>(-153f, 546f), vec2<f32>(378f, -638f), vec2<f32>(-1562f, -365f), vec2<f32>(1556f, -874f), vec2<f32>(-1414f, -1673f), vec2<f32>(-768f, 973f), vec2<f32>(-916f, 533f), vec2<f32>(544f, -142f), vec2<f32>(210f, -372f), vec2<f32>(634f, -245f), vec2<f32>(-152f, -1000f), vec2<f32>(-422f, 305f), vec2<f32>(-337f, 795f), vec2<f32>(214f, 115f), vec2<f32>(1610f, 1118f), vec2<f32>(1156f, -906f), vec2<f32>(353f, 1416f), vec2<f32>(225f, 1000f), vec2<f32>(-294f, -336f), vec2<f32>(-212f, 1654f), vec2<f32>(426f, -1003f), vec2<f32>(1987f, 1536f), vec2<f32>(-170f, 1311f), vec2<f32>(-512f, 1000f), vec2<f32>(-339f, -1038f), vec2<f32>(-145f, -348f), vec2<f32>(1183f, 242f), vec2<f32>(-1573f, 393f));

var<private> global2: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.c.yz, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_div_f32(-1191f, global0[_wgslsmith_index_u32(1u, 4u)])))))), !(!select(select(vec4<bool>(true, false, arg_1.a.x, false), arg_1.c, true), select(vec4<bool>(false, arg_1.c.x, arg_1.c.x, true), vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.a.x), arg_1.a.x), arg_1.a.x)), 1124f);
    global0 = array<f32, 4>();
    return select(vec2<bool>(true, any(select(!vec3<bool>(arg_1.c.x, arg_1.a.x, true), !vec3<bool>(arg_1.a.x, arg_1.c.x, true), arg_1.c.yzy))), vec2<bool>(arg_1.c.x, false), arg_1.c.xx);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = !vec3<bool>(!(global0[_wgslsmith_index_u32(arg_0, 4u)] < -1015f), any(func_3(-28623i, Struct_1(vec2<bool>(false, true), global0[_wgslsmith_index_u32(arg_0, 4u)], vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(u_input.c.x, 4u)]))), false);
    var var_1 = (select(0i, ~_wgslsmith_div_i32(arg_1, global2.x), !var_0.x) & arg_2) & 7044i;
    var var_2 = 4294967295u;
    var var_3 = -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1, arg_2), global2.wz, var_0.x), global2.zw), _wgslsmith_add_i32(1i, -22134i)) < 2019i;
    return Struct_1(select(var_0.yz, select(var_0.zx, select(func_3(-15033i, Struct_1(var_0.zy, 1015f, vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(arg_0, 4u)])), !vec2<bool>(var_0.x, var_0.x), var_0.x), !var_0.xz), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~4294967295u), 4u)] + -368f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0, 4u)])) * global0[_wgslsmith_index_u32(u_input.e, 4u)]))))), select(vec4<bool>(all(vec4<bool>(true, var_0.x, false, var_0.x)), false, var_0.x, select(false, var_0.x, var_0.x)), !select(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, false, false, true), true), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(59906u, 4u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f + global0[_wgslsmith_index_u32(u_input.e, 4u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f * global0[_wgslsmith_index_u32(~18451u, 4u)]) + -1010f))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<f32, 4>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(18440u, u_input.c.x, u_input.c.x, arg_0.x), vec4<u32>(arg_0.x, u_input.d, u_input.d, u_input.e)), u_input.e, _wgslsmith_mult_u32(countOneBits(25770u), arg_0.x >> (4294967295u % 32u))), 4u)])), -353f);
    global0 = array<f32, 4>();
    let var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b.x, global2.x, global2.x, u_input.b.x)) | _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 2147483647i, 31673i, -1i), vec4<i32>(global2.x, -2642i, u_input.a, u_input.b.x)), abs(~vec4<i32>(21204i, -32628i, u_input.b.x, u_input.a))), vec4<i32>(-3020i, -(~abs(-2147483647i)), _wgslsmith_sub_i32(1i, global2.x), 68179i));
    global0 = array<f32, 4>();
    return Struct_1(arg_1.c.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2055f - 2120f), var_0) * global0[_wgslsmith_index_u32(reverseBits(~14111u), 4u)]) - -1327f), vec4<bool>(false, arg_1.c.x, arg_1.c.x, true & (arg_0.x > 38715u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1330f - -187f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 32731u, 15319u, 0u), vec4<u32>(0u, u_input.e, u_input.e, 121375u)) ^ (0u >> (u_input.e % 32u)), 4u)])));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~4294967295u | _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c.x, 13017u, u_input.d) ^ vec4<u32>(~u_input.e, ~u_input.d, 21330u, abs(1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c), 69999u, u_input.c.x, 1u));
    var var_1 = Struct_1(!vec2<bool>(_wgslsmith_f_op_f32(635f - -1391f) >= global0[_wgslsmith_index_u32(~76848u, 4u)], true), arg_0, vec4<bool>(true, false | (true && any(vec3<bool>(true, true, true))), !(!any(vec4<bool>(true, false, true, false))), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0)))));
    let var_2 = u_input.d;
    let var_3 = 2623i;
    global1 = array<vec2<f32>, 32>();
    return func_4(vec2<u32>(~u_input.e, 7494u), func_2(countOneBits(max(~var_2, countOneBits(var_2))), u_input.b.x, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, select(false, true, true)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-346f - global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), -1156f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 4u)])))), !(!vec4<bool>(true, true, true, -11859i != u_input.b.x)), -255f);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.e, 4u)])));
    let var_3 = func_1(_wgslsmith_f_op_f32(-var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~min(69083i, global2.x) << (56003u % 32u)), _wgslsmith_f_op_f32(trunc(var_3.d)), _wgslsmith_add_u32(0u >> (u_input.e % 32u), _wgslsmith_sub_u32(~u_input.e, u_input.e)));
}

