struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 30> = array<f32, 30>(422f, 817f, -690f, -1000f, -1000f, 496f, -1000f, 1594f, -1624f, -1215f, 918f, -901f, 1817f, -1654f, 1350f, -1124f, 3277f, 1009f, 1140f, -699f, 1210f, 224f, 1000f, -1433f, -576f, 388f, 324f, -1308f, 1000f, -837f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4) -> bool {
    global0 = Struct_3(!(!global0.b.x), vec4<bool>(all(vec3<bool>(!global0.c, any(vec3<bool>(false, global0.a, global0.c)), global0.b.x || global0.a)), true, select(false, select(!global0.c, global0.a, true), global0.c), !any(global0.b.wwy)), 404f < arg_0.a);
    var var_0 = arg_0.a;
    let var_1 = global1[_wgslsmith_index_u32(~reverseBits(select(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u)), 13410u, global0.a)), 30u)];
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    return global0.a;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: bool) -> i32 {
    global1 = array<f32, 30>();
    var var_0 = false;
    global0 = Struct_3(!arg_3, vec4<bool>(!(!any(vec4<bool>(global0.a, false, true, global0.b.x))), !func_3(Struct_4(1385f, vec2<i32>(1i, arg_1))), true, true), any(global0.b.zy));
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    return -1i;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = select(global0.b.yy, select(select(vec2<bool>(false, any(global0.b)), vec2<bool>(any(vec3<bool>(global0.b.x, global0.b.x, false)), true), any(!vec2<bool>(global0.a, true))), global0.b.xz, all(select(!global0.b.wzz, vec3<bool>(true, global0.c, global0.c), select(vec3<bool>(global0.b.x, true, global0.c), global0.b.wyz, vec3<bool>(global0.b.x, true, global0.a))))), vec2<bool>(any(!(!global0.b.zy)), true));
    let var_1 = arg_0.x >> (firstLeadingBit(~1u) % 32u);
    var var_2 = arg_0.x;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31382u, 30u)] * global1[_wgslsmith_index_u32(0u, 30u)]) * global1[_wgslsmith_index_u32(~4294967295u, 30u)]) - _wgslsmith_f_op_f32(max(-2707f, -1905f)))), _wgslsmith_f_op_f32(min(-834f, 226f)), _wgslsmith_dot_vec4_i32(vec4<i32>(~13769i, countOneBits(-60542i), abs(firstTrailingBit(var_1)), u_input.b), _wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, -35127i, var_1, u_input.a.x), vec4<i32>(arg_0.x, var_1, var_1, arg_0.x), !global0.b), vec4<i32>(_wgslsmith_clamp_i32(u_input.b, -2147483647i, 0i), var_1, func_2(-51152i, var_1, -590f, false), ~u_input.a.x))), ~48298u);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = arg_2.c;
    let var_1 = ~countOneBits(~min(~vec3<u32>(arg_2.d, arg_2.d, arg_0), ~vec3<u32>(arg_2.d, arg_2.d, 104246u)));
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    return _wgslsmith_f_op_f32(597f + -435f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(global0.c & (-2521i >= ~u_input.b), select(global0.b.x, global0.c, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(38498u, 43331u), 30u)] < -1719f), all(vec2<bool>(true, global0.b.x | global0.c)), !any(global0.b.zx));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(56549u, 30u)], global1[_wgslsmith_index_u32(73908u, 30u)]) * vec2<f32>(-1079f, global1[_wgslsmith_index_u32(1u, 30u)])))))) - vec2<f32>(1284f, global1[_wgslsmith_index_u32(27355u, 30u)]));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_u32(1u, 56184u), ~u_input.b, func_1(vec4<i32>(24919i, u_input.b, u_input.b, -40830i)), global1[_wgslsmith_index_u32(~4294967295u, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(61647u, 30u)] - global1[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2145f, global1[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 420f)))))));
    var var_2 = abs(~vec2<u32>(~(~0u), ~(~6627u)));
    var var_3 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(~_wgslsmith_mod_u32(1u, 64480u), var_2.x << (~4294967295u % 32u))), 4294967295u);
    let var_4 = reverseBits(vec4<i32>(u_input.a.x, 40026i, _wgslsmith_mod_i32(u_input.a.x << (var_2.x % 32u), u_input.b), ~(-31386i)));
    var var_5 = Struct_2(var_1.x, global1[_wgslsmith_index_u32(var_2.x, 30u)], 4844i, ~(~201u));
    var var_6 = Struct_3(global0.b.x, select(select(!var_0, !var_0, !var_0.x), vec4<bool>(!func_3(Struct_4(1615f, var_4.yx)), var_0.x, any(vec4<bool>(true, true, true, true)), false), select(select(select(vec4<bool>(var_0.x, var_0.x, false, global0.b.x), vec4<bool>(true, global0.c, false, var_0.x), vec4<bool>(global0.a, global0.c, global0.b.x, var_0.x)), vec4<bool>(false, global0.c, global0.c, true), global0.b), global0.b, select(vec4<bool>(false, false, false, false), !var_0, u_input.a.x >= var_4.x))), all(global0.b.xz));
    var var_7 = 26245i;
    let x = u_input.a;
    s_output = StorageBuffer(-1466f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global1[_wgslsmith_index_u32(15734u, 30u)], -1265f, var_5.a) + vec4<f32>(-551f, global1[_wgslsmith_index_u32(49556u, 30u)], global1[_wgslsmith_index_u32(var_5.d, 30u)], var_1.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-527f, -791f, global1[_wgslsmith_index_u32(var_2.x, 30u)], var_1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, -1328f, 306f, 1804f) - vec4<f32>(var_5.b, var_5.a, -627f, -2230f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b, var_1.x, -502f, var_1.x)) * vec4<f32>(-413f, global1[_wgslsmith_index_u32(20621u, 30u)], -562f, -601f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_5.a)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(806f, global1[_wgslsmith_index_u32(21924u, 30u)]), vec2<f32>(237f, -1000f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, 691f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 30u)], var_1.x, 1402f, -2038f) - vec4<f32>(164f, -1231f, var_1.x, -1064f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(115f, global1[_wgslsmith_index_u32(var_5.d, 30u)], -1391f, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 30u)]), _wgslsmith_f_op_f32(-505f * -1345f), var_1.x, var_5.b))))));
}

