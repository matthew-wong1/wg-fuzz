struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: array<bool, 27>;

var<private> global1: array<u32, 17>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(4294967295u, 4294967295u, 39956u), 1u, vec3<i32>(-42102i, 0i, 0i));

var<private> global3: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    var var_0 = -749f;
    var var_1 = 1288f;
    global3 = 1u;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1094f, _wgslsmith_f_op_f32(min(-231f, 1000f))))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-246f)), _wgslsmith_f_op_f32(abs(-1034f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(250f, -1598f)), -1176f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-794f, -287f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-860f, -473f), vec2<f32>(-321f, -1680f)))))));
    let var_3 = 4294967295u;
    return vec3<u32>(_wgslsmith_div_u32(~var_3 | _wgslsmith_add_u32(arg_0.b, 27779u), _wgslsmith_div_u32(arg_0.b, _wgslsmith_add_u32(var_3, 0u))) & 1u, ~2024u >> (~min(global2.b << (global1[_wgslsmith_index_u32(u_input.b, 17u)] % 32u), abs(global1[_wgslsmith_index_u32(0u, 17u)])) % 32u), 1u);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> bool {
    var var_0 = vec2<bool>(u_input.c >= ((1i << (global2.b % 32u)) << (firstLeadingBit(0u) % 32u)), false);
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.a, func_3(Struct_1(global2.a, 4294967295u, vec3<i32>(u_input.e, global2.c.x, -41950i)), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b, 17u)], 17u)], 4294967295u, 89947u), 0u, vec3<i32>(1225i, 0i, 0i)), -21734i), select(global2.a >> (vec3<u32>(u_input.b, global2.b, u_input.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(global2.a, global2.a), global0[_wgslsmith_index_u32(~u_input.b, 27u)])), vec3<u32>(90069u, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, global2.a.x), 17u)], ~17938u), (_wgslsmith_clamp_vec3_u32(global2.a, vec3<u32>(109600u, global2.a.x, 0u), vec3<u32>(4294967295u, global2.a.x, u_input.b)) << (vec3<u32>(1u, global2.b, 79416u) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(global2.a, global2.a)), global2.b, vec3<i32>(1i, -_wgslsmith_div_i32(-arg_1.x, 12337i), -(~(-global2.c.x))));
    let var_2 = Struct_1(vec3<u32>(4294967295u, reverseBits(_wgslsmith_div_u32(max(15991u, 0u), max(47406u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 17u)], 17u)]))), 4294967295u & global2.a.x), min(_wgslsmith_mult_u32(1u, 25686u) | u_input.b, ~_wgslsmith_clamp_u32(var_1.a.x, 4294967295u, 16019u)) & ~var_1.a.x, select(~abs(u_input.d), ~global2.c, any(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 27u)], true, true), vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(35215u, 27u)], var_0.x), vec4<bool>(false, var_0.x, global0[_wgslsmith_index_u32(16226u, 27u)], arg_0)))));
    let var_3 = 0u;
    var var_4 = true;
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = !(!(!(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.a, arg_2.xzy), 27u)])));
    global1 = array<u32, 17>();
    let var_1 = -176f;
    global1 = array<u32, 17>();
    var var_2 = !(!select(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 27u)], var_0, true, global0[_wgslsmith_index_u32(1476u, 27u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 27u)], false, global0[_wgslsmith_index_u32(global2.a.x, 27u)]), select(vec4<bool>(var_0, var_0, global0[_wgslsmith_index_u32(arg_1.b, 27u)], true), vec4<bool>(true, var_0, true, global0[_wgslsmith_index_u32(arg_2.x, 27u)]), false), var_0), select(vec4<bool>(false, var_0, true, global0[_wgslsmith_index_u32(arg_2.x, 27u)]), !vec4<bool>(false, var_0, false, false), !vec4<bool>(var_0, true, false, true))));
    return !vec4<bool>((var_2.x | !var_2.x) || false, func_2(true, min(vec4<i32>(-1i, arg_1.c.x, -2147483647i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.a.x, u_input.c, 24594i), vec4<i32>(global2.c.x, global2.c.x, 0i, u_input.a.x)))), true, true || all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 27u)], true, true, var_0)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(round(-138f));
    let var_1 = Struct_1(func_3(Struct_1(~vec3<u32>(u_input.b, 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 17u)]), 30679u >> (u_input.b % 32u), u_input.d), Struct_1(global2.a, firstLeadingBit(global2.b >> (0u % 32u)), vec3<i32>(-2147483647i, -74676i, 1i)), u_input.c), 4294967295u, vec3<i32>(_wgslsmith_sub_i32(-1i, -1i), global2.c.x, global2.c.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-996f + 953f), var_0) - vec2<f32>(-2313f, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -805f)) + vec2<f32>(var_0, -1479f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(780f, var_0))), arg_2)))));
    global3 = firstLeadingBit(40311u);
    var var_3 = _wgslsmith_f_op_f32(431f + _wgslsmith_f_op_f32(var_0 + -820f));
    return StorageBuffer(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-129f, -200f)) * var_2.x) + _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(max(884f, -1761f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f - _wgslsmith_f_op_f32(select(280f, -268f, true))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - -568f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.a, ~_wgslsmith_dot_vec3_u32(global2.a | reverseBits(global2.a), ~vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 17u)], 1u)), (-(~vec3<i32>(-67151i, 15563i, -1i)) ^ select(abs(vec3<i32>(u_input.e, global2.c.x, 20028i)), global2.c, select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(92774u, 27u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(41469u, 27u)], true), vec3<bool>(global0[_wgslsmith_index_u32(23350u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])))) >> (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_add_u32(30146u, global2.a.x)), abs(~u_input.b), global2.a.x) % vec3<u32>(32u)));
    var var_1 = Struct_1(~var_0.a, 4294967295u, global2.c);
    let x = u_input.a;
    s_output = func_4(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(~4294967295u, 27u)], true, !global0[_wgslsmith_index_u32(55450u, 27u)]), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false, global0[_wgslsmith_index_u32(var_0.b, 27u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], false, false, global0[_wgslsmith_index_u32(72801u, 27u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.b, 27u)], true)), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(54957u, 27u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 27u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(63462u, 27u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)], false, false)), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.b, 27u)], any(vec2<bool>(true, true)), true, true), global0[_wgslsmith_index_u32(global2.a.x, 27u)]), select(func_1(362f, var_0, vec4<u32>(global2.a.x, 1u, 4294967295u, var_1.b)), vec4<bool>(!global0[_wgslsmith_index_u32(38977u, 27u)], select(true, true, global0[_wgslsmith_index_u32(var_1.a.x, 27u)]), true, true), !vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 27u)]))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, 17200u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 17u)], 17u)], global2.b), firstLeadingBit(vec4<u32>(0u, var_1.a.x, 1u, var_1.b)) << (vec4<u32>(global2.a.x, 95661u, 0u, 4294967295u) % vec4<u32>(32u))), 4294967295u), true);
}

