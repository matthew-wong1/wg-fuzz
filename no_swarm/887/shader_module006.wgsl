struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> f32 {
    let var_0 = 1f;
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    let var_1 = firstLeadingBit(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(65133u, 4294967295u, u_input.b.x, arg_1.x) >> (vec4<u32>(u_input.a, 31758u, 6711u, 53544u) % vec4<u32>(32u)), select(u_input.b, u_input.b, vec4<bool>(false, arg_0.x, false, arg_0.x)))));
    let var_2 = u_input.b.yx;
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 19>();
    let var_0 = Struct_3(_wgslsmith_div_f32(1168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1745f)) * _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), ~vec2<u32>(1u, u_input.b.x))))));
    var var_1 = Struct_1(max(_wgslsmith_add_vec4_i32(select(vec4<i32>(global0[_wgslsmith_index_u32(47416u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(1473u, 19u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 0i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]), true), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 13839i, global0[_wgslsmith_index_u32(2225u, 19u)], -3153i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], 0i))) >> (vec4<u32>(~0u, 0u, u_input.a, abs(23551u)) % vec4<u32>(32u)), vec4<i32>(-abs(0i), max(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 88771u, u_input.a), u_input.b.wyx), 19u)]), i32(-1i) * -1i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i ^ global0[_wgslsmith_index_u32(33313u, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13464u, 0u, u_input.a), 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)] ^ global0[_wgslsmith_index_u32(u_input.a, 19u)], ~(-33001i)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4053u, u_input.b.x, u_input.a), u_input.b, vec4<u32>(u_input.b.x, 11866u, 69578u, 62793u)), ~vec4<u32>(4294967295u, 1991u, u_input.a, 1u)) % vec4<u32>(32u)), ~(-vec4<i32>(2147483647i, 2147483647i, 14249i, 18064i))), select(true, _wgslsmith_f_op_f32(var_0.a - var_0.a) >= var_0.a, true));
    global0 = array<i32, 19>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1255f - 1366f), _wgslsmith_f_op_f32(var_0.a - var_0.a))) * vec2<f32>(-949f, var_0.a)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, -855f)), vec2<f32>(-344f, 1700f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1488f), _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -1272f), vec2<f32>(var_0.a, var_0.a)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(975f, var_0.a)))))), var_1.c | all(vec4<bool>(var_1.c, false, var_1.c, var_1.c)))));
    return Struct_3(-668f);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_div_f32(arg_0, -404f));
    var_0 = func_2();
    let var_1 = vec3<u32>(~(~15196u), select(~(~(~36402u)), abs(~arg_3.x) >> (arg_3.x % 32u), select(!arg_1.x, false, true)), ~(~(~0u)));
    return _wgslsmith_f_op_f32(func_3(!select(arg_1.yy, select(!arg_1.wz, !arg_1.yz, vec2<bool>(false, arg_1.x)), arg_1.wz), u_input.b.wy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1990f), 1281f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1683f, vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(1u, 19u)], vec2<u32>(u_input.b.x, u_input.b.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(567f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1092f))))));
    let var_1 = Struct_5(func_2(), 31375u, vec3<u32>(0u, u_input.b.x, u_input.b.x & u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a, var_1.a.a))), 1f)));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1908f, var_2) + vec2<f32>(var_2, var_1.a.a)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-182f + var_1.a.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a + var_1.a.a), _wgslsmith_f_op_f32(floor(var_1.a.a))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-330f, var_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, var_2) + vec2<f32>(var_1.a.a, var_0.a))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.a + 442f), _wgslsmith_f_op_f32(f32(-1f) * -371f)))));
    let var_4 = Struct_4(countOneBits(u_input.b.wzz), Struct_1(reverseBits(countOneBits(select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], 0i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(var_1.b, 19u)], 45207i, -2147483647i), vec4<bool>(false, true, false, false)))), vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -2147483647i), ~global0[_wgslsmith_index_u32(126367u, 19u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_1.c.x, 19u)], global0[_wgslsmith_index_u32(3118u, 19u)]), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 4027i)) | (~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(var_1.c.x, 19u)], 6230i, global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<i32>(global0[_wgslsmith_index_u32(27125u, 19u)], 2147483647i, -50494i, -1i))), true), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, false))), vec2<bool>(any(vec3<bool>(true, true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), Struct_2(select(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), true), _wgslsmith_f_op_f32(step(var_2, var_2)) >= _wgslsmith_f_op_f32(-var_0.a)), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(6098i, 19435i, 0i), ~global0[_wgslsmith_index_u32(u_input.a, 19u)], -61990i, abs(global0[_wgslsmith_index_u32(64144u, 19u)])), abs(abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(10848u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 4108i))), false), Struct_1(vec4<i32>(-1i, -6697i, -2147483647i, ~(-5724i)), vec4<i32>(-1i) * -vec4<i32>(-20942i, -2147483647i, -2147483647i, global0[_wgslsmith_index_u32(0u, 19u)]), true)), func_2());
    let var_5 = var_4.c.x;
    let var_6 = var_1;
    let var_7 = all(!select(vec4<bool>(true, !var_5, select(false, var_4.b.c, var_5), var_4.c.x == var_5), !vec4<bool>(false, var_5, var_5, true), true));
    global0 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(174f, var_6.a.a))), -1230f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_4.e.a, var_2), _wgslsmith_f_op_f32(-var_1.a.a))))));
}

