struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(105750u, 58268u, 18189u, 4294967295u, 4294967295u, 0u, 68833u, 40036u, 4294967295u, 48354u, 62258u, 0u, 38163u, 1u, 15177u, 1u, 48007u, 1u, 1u, 1u, 0u, 87457u, 37540u, 11061u, 0u, 0u, 36736u, 4294967295u, 41856u, 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = 1u;
    var var_1 = vec3<i32>(-2147483647i, 39988i >> (_wgslsmith_add_u32(~55277u, max(var_0, 0u)) % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(countOneBits(arg_2.a.c)), _wgslsmith_clamp_vec3_i32(arg_2.b.c, u_input.b.www, vec3<i32>(-2147483647i, 0i, -52079i)))) >> (vec3<u32>(abs(abs(var_0)), arg_2.a.b.x, arg_2.b.b.x) % vec3<u32>(32u));
    var var_2 = 2147483647i;
    var var_3 = arg_2;
    var_3 = arg_2;
    return !arg_0.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = -20651i;
    let var_1 = select(arg_0.c.x >> (35815u % 32u), arg_2.x, true) & max(-1i, countOneBits(arg_0.c.x << (global0[_wgslsmith_index_u32(arg_0.b.x, 30u)] % 32u)));
    global0 = array<u32, 30>();
    var_0 = -(arg_0.c.x ^ var_1);
    let var_2 = _wgslsmith_mult_vec3_i32(arg_3, -(~arg_0.c));
    return arg_0.a;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(u_input.a, 0u)) << (u_input.a % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], _wgslsmith_mod_u32(40814u, 4294967295u), u_input.a, _wgslsmith_add_u32(50136u, 0u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(20223u, 30u)], 1u, 18319u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u, arg_3, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -1074f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1500f, arg_1, -1261f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 563f, -1063f))), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-936f, arg_1, 1567f), vec3<f32>(671f, arg_1, arg_2), false))))));
    global0 = array<u32, 30>();
    return select(!select(select(!vec4<bool>(true, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, true, arg_0, true), false), !vec4<bool>(arg_0, arg_0, arg_0, false)), vec4<bool>(true, arg_0 & arg_0, true, arg_0), true), select(vec4<bool>(true, !func_2(vec3<bool>(true, arg_0, arg_0), Struct_1(vec4<bool>(false, arg_0, arg_0, false), vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], arg_3, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, 43098i), var_1, -1000f), Struct_2(Struct_1(vec4<bool>(true, arg_0, false, false), vec3<u32>(arg_3, u_input.a, 28734u), u_input.b.zxw, var_1, var_1.x), Struct_1(vec4<bool>(true, true, arg_0, arg_0), vec3<u32>(6357u, 78488u, 18885u), u_input.b.xzz, vec3<f32>(419f, arg_2, arg_1), 1491f), vec2<i32>(0i, 8108i))), true, false & !arg_0), !func_3(Struct_1(vec4<bool>(true, true, true, arg_0), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 30u)], 4294967295u), vec3<i32>(0i, u_input.c, u_input.b.x), var_1, var_1.x), var_1, u_input.b, vec3<i32>(u_input.c, -24325i, u_input.b.x)), func_3(Struct_1(!vec4<bool>(true, true, true, arg_0), min(vec3<u32>(1u, global0[_wgslsmith_index_u32(87438u, 30u)], 27122u), vec3<u32>(0u, 0u, 0u)), vec3<i32>(2147483647i, u_input.b.x, u_input.c), vec3<f32>(977f, var_1.x, 724f), var_1.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, arg_2, 689f), var_1, vec3<bool>(true, arg_0, arg_0))))), max(-vec4<i32>(-1i, 29556i, u_input.c, u_input.c), -u_input.b), u_input.b.xyw).x), vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)) == arg_2, !arg_0, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(any(func_1(true, _wgslsmith_f_op_f32(728f * 697f), _wgslsmith_div_f32(169f, 438f), 32896u)), select(true, true, true), !func_1(select(true, true, true), _wgslsmith_div_f32(706f, 1000f), -766f, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2657u, 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(0u, 30u)])).x, (u_input.a >= abs(1u)) == true), vec3<u32>(~global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(18389u, 4294967295u)), abs(vec2<u32>(u_input.a, 47287u))), u_input.a), ~countOneBits(~0u)), min(_wgslsmith_div_vec3_i32(u_input.b.wyz, u_input.b.zyy), ~vec3<i32>(-8666i, ~32317i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -319f), -106f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(393f + -249f), _wgslsmith_div_f32(-1377f, -410f), select(false, true, false))))), 1289f);
    global0 = array<u32, 30>();
    let var_1 = var_0.c.x;
    global0 = array<u32, 30>();
    let var_2 = all(var_0.a);
    let var_3 = u_input.b.x;
    global0 = array<u32, 30>();
    let var_4 = Struct_1(!(!(!(!vec4<bool>(true, false, var_2, var_2)))), var_0.b, vec3<i32>(firstLeadingBit((-63393i << (var_0.b.x % 32u)) & var_0.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.c.x, var_0.c.x), var_0.c), ~vec3<i32>(var_3, 25018i, 1i)), ~(-_wgslsmith_dot_vec2_i32(var_0.c.xx, u_input.b.xx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_0.e, -127f) + var_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, 150f, var_0.e))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d + vec3<f32>(var_0.d.x, var_0.d.x, var_0.e)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, var_0.e, var_0.e), vec3<f32>(-165f, -102f, 901f), var_0.a.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(753f + -1902f)) - -1561f))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~select(u_input.a, max(2251u, 0u), false)), 297u, ~4294967295u);
}

