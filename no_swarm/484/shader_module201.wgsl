struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-24715i, 0i, 2147483647i);

var<private> global1: array<i32, 20>;

var<private> global2: Struct_1;

var<private> global3: vec4<f32> = vec4<f32>(-475f, 136f, 273f, -621f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, abs(_wgslsmith_clamp_u32(u_input.a, 44626u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 0u, 137656u)))), 4294967295u), abs(~(~max(vec3<u32>(4294967295u, 19766u, u_input.a), vec3<u32>(0u, 4556u, 41398u)))), vec3<u32>(_wgslsmith_add_u32(0u, u_input.a) >> (~u_input.a % 32u), 4294967295u, ~(~u_input.a | ~2265u)));
    return -411f;
}

fn func_3() -> i32 {
    global1 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-593f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) + -372f)) + global3.x);
    var var_1 = -5813i;
    global0 = array<i32, 3>();
    var var_2 = select(!select(!vec3<bool>(false, global2.a.x, true), vec3<bool>(all(vec4<bool>(true, global2.c, false, global2.b.x)), global0[_wgslsmith_index_u32(41422u, 3u)] >= -27509i, true & global2.b.x), select(!global2.a, global2.a, global2.b.x)), select(select(!(!global2.a), !global2.a, select(select(vec3<bool>(global2.a.x, true, global2.b.x), global2.a, true), !global2.a, true)), select(!select(vec3<bool>(global2.a.x, false, false), vec3<bool>(global2.c, false, global2.a.x), global2.b.x), select(global2.a, select(vec3<bool>(false, true, global2.c), vec3<bool>(false, global2.a.x, global2.a.x), global2.c), any(vec4<bool>(true, global2.a.x, true, false))), global2.b.x), global2.a.x), select(select(global2.a, vec3<bool>(global2.a.x | true, 1u > u_input.a, true), global2.a), global2.a, global2.c));
    return global1[_wgslsmith_index_u32(countOneBits(~u_input.a), 20u)];
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_4 {
    global2 = Struct_1(vec3<bool>(!arg_0.a.x, true, global2.c), vec2<bool>(true, all(!select(vec3<bool>(arg_0.b.x, false, false), vec3<bool>(arg_2.a.x, false, false), arg_2.a))), true, 34743i, vec4<i32>(arg_0.d, func_3(), arg_2.e.x, abs(-22923i)));
    var var_0 = Struct_4(arg_0, false);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(global3.xz - _wgslsmith_f_op_vec2_f32(max(global3.ww, vec2<f32>(_wgslsmith_f_op_f32(global3.x + arg_1), _wgslsmith_f_op_f32(select(arg_1, -346f, var_0.b)))))), vec4<i32>(func_3(), global1[_wgslsmith_index_u32(33467u, 20u)], ~(~var_0.a.d), abs(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a, ~u_input.a, firstLeadingBit(10126u)), 20u)])));
    var var_2 = u_input.a;
    global1 = array<i32, 20>();
    return Struct_4(var_0.a, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<u32>) -> f32 {
    let var_0 = Struct_1(!vec3<bool>(true, true, global2.c), !select(!arg_0, global2.a.yz, !arg_2.b), !any(vec4<bool>(true, !arg_2.b, true, true)), i32(-1i) * -max(-19578i, 1i), global2.e);
    var var_1 = -abs(vec3<i32>(655i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(40495i, 8473i), vec2<i32>(var_0.e.x, -2147483647i)), -1i));
    var var_2 = ~max(~arg_3.x, 9506u << (u_input.a % 32u));
    let var_3 = vec4<i32>(firstTrailingBit(firstLeadingBit(-arg_1.a.x | global1[_wgslsmith_index_u32(arg_3.x, 20u)])), select(var_0.e.x, -26158i, true), -_wgslsmith_dot_vec4_i32(global2.e, vec4<i32>(countOneBits(-20427i), reverseBits(arg_1.a.x), ~global0[_wgslsmith_index_u32(0u, 3u)], arg_2.a.e.x)), func_2(Struct_1(!select(arg_2.a.a, global2.a, var_0.a), vec2<bool>(all(global2.a), any(vec4<bool>(false, arg_0.x, arg_0.x, false))), arg_0.x, ~(~10220i), global2.e), -1099f, func_2(Struct_1(vec3<bool>(global2.b.x, var_0.b.x, arg_2.b), vec2<bool>(var_0.b.x, global2.a.x), all(arg_0), firstLeadingBit(global1[_wgslsmith_index_u32(92935u, 20u)]), global2.e), _wgslsmith_f_op_f32(-1433f * _wgslsmith_f_op_f32(trunc(global3.x))), arg_2.a).a).a.d);
    var_2 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(arg_3.x, 4294967295u), 136489u), ~_wgslsmith_add_vec2_u32(select(arg_3.xx, vec2<u32>(arg_3.x, 0u), true), arg_3.yz));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(358f + global3.x))), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1846f)) - _wgslsmith_f_op_f32(-1993f + global3.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(846f, global3.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, 2787f, all(arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(global2.c, true, global2.a.x));
    var_0 = global2.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(-1000f * global3.x))), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) + _wgslsmith_f_op_f32(-global3.x)))));
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-890f - var_1.x), var_1.x, _wgslsmith_f_op_f32(-696f * _wgslsmith_f_op_f32(func_4(global2.a.xy, Struct_2(vec2<i32>(-26710i, global1[_wgslsmith_index_u32(1u, 20u)])), func_2(Struct_1(global2.a, var_0.yy, false, 33249i, vec4<i32>(-66189i, global1[_wgslsmith_index_u32(u_input.a, 20u)], -9319i, 1i)), -2491f, Struct_1(vec3<bool>(global2.c, var_0.x, global2.a.x), var_0.xz, true, -2147483647i, global2.e)), reverseBits(vec3<u32>(u_input.a, 1u, 43160u)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(max(-579f, -1049f)), _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-943f, var_1.x, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-328f, var_1.x, var_1.x, var_1.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -934f, -382f, var_1.x)), vec4<f32>(global3.x, global3.x, 632f, global3.x), vec4<bool>(false, global2.c, false, global2.a.x))))));
    global2 = Struct_1(!global2.a, var_0.xy, true, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-42455i, global0[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), countOneBits(global2.e)), func_2(Struct_1(select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, global2.a.x, var_0.x), !global2.a), var_0.zz, !select(var_0.x, false, var_0.x), _wgslsmith_add_i32(reverseBits(global1[_wgslsmith_index_u32(1u, 20u)]), max(global1[_wgslsmith_index_u32(2936u, 20u)], 12112i)), _wgslsmith_div_vec4_i32(global2.e, _wgslsmith_mod_vec4_i32(global2.e, vec4<i32>(0i, global2.e.x, global2.d, global2.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(890f, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1345f, global3.x))), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, var_0.x), vec3<bool>(global2.b.x, global2.b.x, false)), var_0.xx, global2.a.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(2574i, global0[_wgslsmith_index_u32(91873u, 3u)], -1i), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], global2.d)), global2.e)).a.e);
    var_0 = global2.a;
    global1 = array<i32, 20>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-704f, global3.x, global2.c)) * _wgslsmith_f_op_f32(-global3.x))))), var_1.x, _wgslsmith_div_f32(1520f, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 335f) * _wgslsmith_f_op_f32(step(var_1.x, 327f)))))), _wgslsmith_div_f32(-1277f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * -1749f), _wgslsmith_f_op_f32(ceil(var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.a, 3466u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, 4294967295u, min(u_input.a, u_input.a))), ~(~(~vec3<u32>(u_input.a, u_input.a, 556u)))), 16391u, -(vec4<i32>(global0[_wgslsmith_index_u32(max(0u, u_input.a), 3u)], ~global0[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 3u)], 2147483647i), ~0i) << (vec4<u32>(_wgslsmith_sub_u32(75423u, u_input.a), u_input.a << (u_input.a % 32u), u_input.a, ~12898u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(59904u, 4294967295u, 1u, 5800u), countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), vec4<u32>(1u, 9462u, 24516u, 1u) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 56170u), vec4<u32>(u_input.a, u_input.a, 0u, 0u))), -1i);
}

