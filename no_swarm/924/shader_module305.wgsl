struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(21263u, 2147483647i, vec4<f32>(545f, 909f, 211f, -284f), vec2<f32>(-396f, -209f)), Struct_1(4294967295u, 21221i, vec4<f32>(1198f, 979f, 872f, -1359f), vec2<f32>(-532f, -357f)), Struct_1(0u, 0i, vec4<f32>(1255f, -1000f, -1000f, 790f), vec2<f32>(-731f, 255f)), Struct_1(8351u, -20520i, vec4<f32>(-1433f, -934f, 1000f, -794f), vec2<f32>(490f, -2201f)), Struct_1(0u, 11018i, vec4<f32>(290f, -1249f, 1150f, 1085f), vec2<f32>(-800f, -905f)), Struct_1(1u, -34347i, vec4<f32>(-1438f, -492f, 1340f, -1471f), vec2<f32>(-1184f, 1451f)), Struct_1(0u, -2373i, vec4<f32>(-1386f, -1000f, 494f, -1726f), vec2<f32>(267f, -1517f)), Struct_1(0u, 54910i, vec4<f32>(-220f, -427f, 644f, -121f), vec2<f32>(1562f, 1000f)), Struct_1(1u, -44995i, vec4<f32>(118f, 905f, 676f, 630f), vec2<f32>(687f, 193f)));

var<private> global2: array<f32, 6> = array<f32, 6>(-1257f, -1102f, -613f, -1000f, -761f, -1000f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> f32 {
    global2 = array<f32, 6>();
    return _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1373f - global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d, 1u & u_input.d), 6u)])));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec4<u32> {
    global2 = array<f32, 6>();
    global2 = array<f32, 6>();
    global1 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f + -1189f) - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_0.x + -176f)), vec4<f32>(-662f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(36844u, 0u, u_input.d), 6u)], _wgslsmith_f_op_f32(-arg_2.x), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) + _wgslsmith_div_f32(968f, global2[_wgslsmith_index_u32(29679u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(27703u, 6u)] - arg_2.x)))));
    var var_1 = ~vec4<i32>(0i, u_input.a.x, _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(0i, u_input.b), u_input.a.x, _wgslsmith_div_i32(min(u_input.a.x, u_input.b), 43527i | u_input.b)), _wgslsmith_sub_i32(-47147i, -17962i));
    return vec4<u32>(40690u, u_input.d, ~countOneBits(210u), 1262u);
}

fn func_2() -> u32 {
    var var_0 = vec4<i32>(-1i) * -(-(vec4<i32>(-23225i, 2147483647i, u_input.a.x, u_input.b) & vec4<i32>(52923i, 1i, u_input.b, u_input.a.x)) << (_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.c.x, 1u, u_input.d)), u_input.c) % vec4<u32>(32u)));
    let var_1 = ~vec3<u32>(u_input.d, abs(_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.zw)) >> (47040u % 32u), u_input.c.x);
    var var_2 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(var_1.x, 6u)], 705f, global2[_wgslsmith_index_u32(var_1.x, 6u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 6u)], 1457f, -1551f, global2[_wgslsmith_index_u32(u_input.c.x, 6u)])))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(78829u, 6u)], global2[_wgslsmith_index_u32(28697u, 6u)], global2[_wgslsmith_index_u32(var_1.x, 6u)], -607f), vec4<f32>(221f, -441f, -1984f, 693f)))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(23320u, 6u)]), global2[_wgslsmith_index_u32(u_input.c.x >> (17166u % 32u), 6u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(-1009f)), global2[_wgslsmith_index_u32(8301u, 6u)], _wgslsmith_f_op_f32(197f - 270f), _wgslsmith_f_op_f32(182f - 889f)))));
    global0 = global2[_wgslsmith_index_u32(var_1.x, 6u)];
    global1 = array<Struct_1, 9>();
    return _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(~(u_input.c.x & 1u), 98691u, 1u), 23590u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(max(func_2(), arg_2.a.x), 6u)]) * _wgslsmith_div_f32(-461f, global2[_wgslsmith_index_u32(abs(4294967295u), 6u)])) - _wgslsmith_f_op_f32(step(499f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_2.a.x, 6u)])))));
    let var_1 = vec3<bool>(!arg_0, all(select(vec4<bool>(u_input.b <= u_input.a.x, !arg_0, all(vec3<bool>(false, arg_0, arg_0)), !arg_0), !vec4<bool>(arg_0, false, arg_0, false), false)), arg_0);
    let var_2 = vec2<i32>(-u_input.b, abs(-33980i));
    global0 = _wgslsmith_f_op_f32(trunc(449f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-590f - _wgslsmith_f_op_f32(-var_0)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~u_input.c.x), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(266f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1, 6u)]), _wgslsmith_f_op_f32(sign(1653f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-984f, var_0, global2[_wgslsmith_index_u32(u_input.d, 6u)])))))));
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_div_u32(~_wgslsmith_sub_u32(~76757u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 0u, 0u), vec4<u32>(51234u, 133751u, 15119u, 52533u))), (0u ^ func_1(true, u_input.c.x, Struct_2(u_input.c))) ^ u_input.d), 1u), 9u)];
    global1 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_div_vec3_u32(~(~u_input.c.xzz), ~vec3<u32>(var_0.a, select(7408u, var_0.a, true), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(u_input.d, 0u))));
    let var_2 = _wgslsmith_div_f32(159f, _wgslsmith_div_f32(1736f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(735f)))))));
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(var_1.x, 6u)], global2[_wgslsmith_index_u32(abs(4294967295u), 6u)], -6617i);
}

