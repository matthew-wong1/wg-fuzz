struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, false, true, false, true, false, true, true, true, false, true, true, true, false, false, false, true);

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-54254i, Struct_1(false, vec2<bool>(false, true), 1u), 135f, 0i), Struct_2(-38573i, Struct_1(true, vec2<bool>(true, true), 6759u), -512f, -1i), Struct_2(i32(-2147483648), Struct_1(true, vec2<bool>(false, false), 0u), -1521f, -29352i), Struct_2(-10776i, Struct_1(false, vec2<bool>(true, false), 30410u), 323f, -31635i), Struct_2(i32(-2147483648), Struct_1(true, vec2<bool>(true, false), 4294967295u), -188f, 0i), Struct_2(-1i, Struct_1(false, vec2<bool>(true, false), 17732u), -1000f, 2147483647i), Struct_2(1i, Struct_1(false, vec2<bool>(true, false), 40906u), 1677f, -26656i), Struct_2(-1i, Struct_1(true, vec2<bool>(false, true), 15973u), 1743f, -8232i), Struct_2(-1i, Struct_1(true, vec2<bool>(true, true), 7335u), -542f, 2147483647i), Struct_2(15370i, Struct_1(false, vec2<bool>(true, false), 40962u), 773f, 2147483647i), Struct_2(9688i, Struct_1(false, vec2<bool>(false, true), 1u), -726f, 0i), Struct_2(i32(-2147483648), Struct_1(true, vec2<bool>(true, true), 64683u), -1896f, -18471i), Struct_2(-1i, Struct_1(true, vec2<bool>(true, true), 4294967295u), 316f, i32(-2147483648)), Struct_2(1i, Struct_1(true, vec2<bool>(true, true), 35725u), -1000f, 10709i), Struct_2(67777i, Struct_1(true, vec2<bool>(true, false), 25176u), 501f, -15875i), Struct_2(-1i, Struct_1(true, vec2<bool>(false, true), 0u), -1133f, 2201i), Struct_2(-72554i, Struct_1(true, vec2<bool>(false, false), 1u), -462f, 55665i), Struct_2(10009i, Struct_1(false, vec2<bool>(false, false), 65129u), -446f, i32(-2147483648)), Struct_2(-13096i, Struct_1(true, vec2<bool>(true, false), 0u), -750f, -3740i), Struct_2(25512i, Struct_1(true, vec2<bool>(false, true), 1u), 648f, 1i), Struct_2(1i, Struct_1(true, vec2<bool>(false, false), 41225u), 1000f, -1i));

var<private> global2: vec2<f32> = vec2<f32>(-598f, -314f);

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(44587u, u_input.a.x), 21u)];
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x + var_0.c)));
    let var_2 = -1i;
    global1 = array<Struct_2, 21>();
    var_1 = -637f;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_clamp_i32(var_0.a, var_2, var_0.d), 46893i), select(_wgslsmith_mod_vec2_i32(vec2<i32>(19587i, 2147483647i), vec2<i32>(1i, 1i)), vec2<i32>(~var_0.d, _wgslsmith_mult_i32(-14368i, var_0.d)), global0[_wgslsmith_index_u32(~min(u_input.a.x, 1u), 18u)])) & 0i;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    let var_0 = u_input.a.yy;
    let var_1 = func_3();
    global0 = array<bool, 18>();
    global1 = array<Struct_2, 21>();
    global0 = array<bool, 18>();
    return _wgslsmith_dot_vec3_u32(u_input.a, ~(~(~u_input.a)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-1369f - arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_0.c) * _wgslsmith_f_op_f32(673f + 1000f))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -476f)))));
    global1 = array<Struct_2, 21>();
    let var_1 = min(~(~arg_0.b.c), _wgslsmith_div_u32(107640u, ~_wgslsmith_mult_u32(u_input.a.x << (arg_0.b.c % 32u), _wgslsmith_mult_u32(arg_0.b.c, u_input.a.x))));
    let var_2 = 602f;
    let var_3 = _wgslsmith_dot_vec4_u32(~(select(abs(vec4<u32>(48111u, u_input.a.x, 1u, arg_0.b.c)), ~vec4<u32>(u_input.a.x, var_1, var_1, 4294967295u), select(vec4<bool>(global0[_wgslsmith_index_u32(76365u, 18u)], global3.x, arg_0.b.a, true), vec4<bool>(arg_0.b.b.x, true, false, true), vec4<bool>(arg_0.b.b.x, false, global0[_wgslsmith_index_u32(96442u, 18u)], false))) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, 0u, arg_0.b.c, 2212u), vec4<u32>(39356u, 6042u, var_1, 54877u)), vec4<u32>(var_1, 4294967295u, 1u, var_1)) % vec4<u32>(32u))), ~vec4<u32>(var_1, func_2(abs(arg_0.b.c), !vec3<bool>(global3.x, global0[_wgslsmith_index_u32(2377u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), arg_0.a | arg_0.a), 1u, min(var_1, 1u)));
    return 127f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-global2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) + -353f));
    var var_1 = max(countOneBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), 1u);
    var var_2 = _wgslsmith_f_op_f32(371f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-856f + global2.x))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(func_1(Struct_2(-41435i, Struct_1(global3.x, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), 0u), global2.x, -2147483647i), vec4<i32>(-1i, 2975i, 8242i, 1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, 320f) - vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -253f) - vec2<f32>(301f, -369f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 2003f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-671f, 174f), vec2<f32>(-1392f, -1180f), vec2<bool>(global3.x, false)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 537f)))))));
    var_0 = _wgslsmith_f_op_f32(-211f - -251f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 6618i, 1i), vec4<i32>(30814i, 29287i, 0i, 1i)), select(-2147483647i, -1i, global0[_wgslsmith_index_u32(4294967295u, 18u)]))), ~(-12238i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, 1785f), _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2453f), _wgslsmith_f_op_f32(-global2.x))))), u_input.a.x);
}

