struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(54203i, -1i, 52081u, 5133u, vec2<f32>(-2063f, -420f)), Struct_1(23292i, 38314i, 0u, 4294967295u, vec2<f32>(-955f, -278f)), Struct_1(-1760i, 1i, 48743u, 0u, vec2<f32>(201f, -1000f)), Struct_1(1i, -1i, 0u, 1u, vec2<f32>(894f, 813f)), Struct_1(-6429i, -41711i, 50584u, 59666u, vec2<f32>(935f, 183f)), Struct_1(i32(-2147483648), 2147483647i, 0u, 55859u, vec2<f32>(-777f, -108f)), Struct_1(-1i, 2376i, 0u, 4294967295u, vec2<f32>(-466f, -323f)), Struct_1(-37110i, i32(-2147483648), 4294967295u, 74811u, vec2<f32>(530f, 897f)), Struct_1(i32(-2147483648), -1i, 4294967295u, 1u, vec2<f32>(-1579f, 1527f)), Struct_1(0i, 10236i, 4294967295u, 4294967295u, vec2<f32>(707f, 1470f)), Struct_1(26395i, 1i, 1u, 4294967295u, vec2<f32>(-1000f, 232f)), Struct_1(0i, -16234i, 0u, 0u, vec2<f32>(-104f, -663f)), Struct_1(-27599i, 0i, 0u, 18962u, vec2<f32>(-1000f, -399f)), Struct_1(-1i, 10409i, 4294967295u, 0u, vec2<f32>(2124f, 219f)), Struct_1(26024i, 875i, 4294967295u, 10443u, vec2<f32>(725f, 487f)), Struct_1(32320i, -13310i, 12319u, 102124u, vec2<f32>(-281f, -158f)), Struct_1(2147483647i, -2715i, 1u, 42964u, vec2<f32>(1331f, -258f)), Struct_1(0i, -44431i, 58631u, 4294967295u, vec2<f32>(-1016f, -474f)), Struct_1(1819i, -70539i, 4294967295u, 4294967295u, vec2<f32>(-150f, -948f)), Struct_1(2147483647i, -52324i, 1u, 4294967295u, vec2<f32>(-1038f, -461f)));

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: f32;

var<private> global3: array<u32, 30>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 0u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: bool) -> f32 {
    global1 = array<vec3<i32>, 30>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global4.zy, global4.yy), global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, arg_1), vec3<u32>(0u, 1u, 68411u))) >> (33683u % 32u), ~(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 0u)), global4.x) >> (1u % 32u), 20u)];
    global1 = array<vec3<i32>, 30>();
    var var_1 = !arg_0.yz;
    global1 = array<vec3<i32>, 30>();
    return 1000f;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_div_i32(i32(-1i) * -(~u_input.b.x), _wgslsmith_div_i32(~arg_0.b, -2147483647i)), ~(~arg_1.x >> (0u % 32u)) ^ arg_0.d, ~u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_0.e.x) + arg_0.e.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x)))));
    let var_1 = 1u <= _wgslsmith_sub_u32(~(global3[_wgslsmith_index_u32(select(0u, var_0.d, true), 30u)] >> (1u % 32u)), ~global4.x);
    global2 = _wgslsmith_f_op_f32(func_2(select(vec3<bool>(false, var_1, reverseBits(17561u) != _wgslsmith_dot_vec2_u32(global4.zy, vec2<u32>(global4.x, 21107u))), vec3<bool>(false, !var_1, true), false), select(0u, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~1u, 30u)], abs(1u) >> ((u_input.a & 0u) % 32u)), !any(select(vec2<bool>(var_1, true), vec2<bool>(true, true), var_1))), all(vec2<bool>(var_1, any(vec2<bool>(var_1, true)))) | (_wgslsmith_f_op_f32(func_2(!vec3<bool>(var_1, var_1, false), 0u, var_1 && var_1)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.e.x)) * _wgslsmith_f_op_f32(var_0.e.x * var_0.e.x)))));
    let var_2 = ~arg_1 ^ _wgslsmith_sub_vec3_u32(arg_1, arg_1 ^ ~(vec3<u32>(1u, 33011u, var_0.d) ^ vec3<u32>(0u, u_input.c, arg_0.c)));
    let var_3 = arg_1.x;
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)), arg_0.e.x, any(select(vec2<bool>(true, true), vec2<bool>(var_1, false), true)))), var_0.e.x);
}

fn func_1(arg_0: u32) -> vec2<f32> {
    global3 = array<u32, 30>();
    let var_0 = global0[_wgslsmith_index_u32(~(~(~58627u)), 20u)];
    var var_1 = vec4<bool>(all(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false)), all(vec4<bool>(true, true, true, true)), true, false & !((var_0.e.x != -2669f) & true));
    var_1 = vec4<bool>(any(!(!select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(false, false, true, var_1.x), var_1.x))), var_1.x && false, !var_1.x, _wgslsmith_f_op_f32(step(var_0.e.x, _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), ~u_input.a, true)))) > -205f);
    global3 = array<u32, 30>();
    return _wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.b.x, reverseBits(1i), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~(~3376u), 30u)], abs(_wgslsmith_add_u32(75717u, global4.x))), ~4294967295u, var_0.e), vec3<u32>(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(65099u, var_0.c, u_input.c, u_input.c)), ~firstLeadingBit(vec4<u32>(0u, 1u, u_input.a, var_0.c))), firstLeadingBit(1u), ~43453u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_div_u32(u_input.d >> (85535u % 32u), u_input.d), u_input.c), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(510f, 327f, 705f))))))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.c & global3[_wgslsmith_index_u32(u_input.c, 30u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(707f, -659f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(837f, _wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(1u, 30u)], true))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_vec2_f32(func_1(4294967295u)).x))))), ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 2290f)), _wgslsmith_f_op_f32(407f * -1472f), true)))));
}

