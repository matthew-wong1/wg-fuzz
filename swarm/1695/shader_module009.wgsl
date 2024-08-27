struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(154f, 214f, -2394f, 908f);

var<private> global1: array<u32, 13> = array<u32, 13>(1u, 1u, 0u, 81218u, 0u, 13344u, 4294967295u, 38308u, 7473u, 4294967295u, 16024u, 0u, 50769u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(global0.wzy + global0.xzy);
    let var_1 = global0.wxw;
    global1 = array<u32, 13>();
    var var_2 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(~(abs(u_input.c) ^ ~0u), 13u)]));
    var_2 = Struct_3(Struct_2(24588u));
    return ~firstTrailingBit(~(~vec3<u32>(1887u, 0u, var_2.a.a)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_3(Struct_2(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2930u, 13u)], 13u)], 13u)], 4294967295u, 116405u), vec3<u32>(u_input.c, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)])), ~vec3<u32>(8041u, 19803u, global1[_wgslsmith_index_u32(6820u, 13u)])), 13u)], 13u)]));
    var var_1 = _wgslsmith_f_op_vec3_f32(global0.yzy - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 1094f), _wgslsmith_f_op_vec3_f32(-global0.yyx))))));
    let var_2 = ~abs(func_3());
    let var_3 = !select(vec4<bool>(arg_1.x, any(arg_1.zy), !any(arg_1), _wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(85309u, 13u)]) < _wgslsmith_sub_u32(u_input.c, 0u)), vec4<bool>(arg_1.x, true, all(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(false, false, false, true), vec4<bool>(false, true, arg_1.x, false))), all(vec3<bool>(false, arg_1.x, true)) & (1020f < var_1.x)), select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(arg_1.x, arg_1.x, false, false), true), var_0.a.a == 0u), select(!vec4<bool>(arg_1.x, arg_1.x, true, false), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, false, arg_1.x), arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), ~arg_0.a.x < max(arg_0.a.x, arg_0.a.x)));
    let var_4 = ~vec2<u32>(u_input.c, var_0.a.a);
    return var_4.x;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))), 1912f, -1093f, -285f)));
    var var_0 = _wgslsmith_add_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_mod_u32(u_input.c, 90535u)), vec3<u32>(13771u ^ u_input.c, ~0u, u_input.c ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], 13u)])), vec3<u32>(u_input.c, _wgslsmith_clamp_u32(3182u, 15907u, func_2(Struct_1(vec4<i32>(u_input.b, -1i, u_input.a.x, u_input.b)), vec3<bool>(false, true, false))), reverseBits(global1[_wgslsmith_index_u32(1u, 13u)])), any(vec2<bool>(true, false)) | all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec3<u32>(18443u, ~(~global1[_wgslsmith_index_u32(~1u, 13u)]), global1[_wgslsmith_index_u32(abs(11772u ^ select(u_input.c, u_input.c, true)), 13u)]));
    var_0 = vec3<u32>(~u_input.c | func_3().x, 0u, 9189u);
    return Struct_1(abs(vec4<i32>(_wgslsmith_add_i32(reverseBits(u_input.a.x), u_input.b), u_input.a.x, u_input.b, ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1146f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1629f) * _wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.x))))))));
    var var_1 = select(!vec3<bool>(true, _wgslsmith_f_op_f32(trunc(323f)) >= _wgslsmith_div_f32(546f, 1000f), _wgslsmith_f_op_f32(min(-1266f, global0.x)) != _wgslsmith_f_op_f32(global0.x + 2369f)), !select(vec3<bool>(false, any(vec2<bool>(true, true)), true), vec3<bool>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43525u, 13u)], 13u)], 13u)] <= 56277u, false, all(vec4<bool>(false, true, false, true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47415u, 43026u), vec2<u32>(58753u, global1[_wgslsmith_index_u32(46203u, 13u)])), 13u)] != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 6966u), vec3<u32>(0u, u_input.c, u_input.c))), false);
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(~(~43915u), 13u)]);
    var_1 = !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_1.x, true), false), u_input.a.x < u_input.a.x), !(!vec3<bool>(var_1.x, true, true)), select(vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<bool>(!any(vec2<bool>(var_1.x, var_1.x)), true, !var_1.x), vec3<bool>(any(var_1.yz), var_1.x, any(vec2<bool>(var_1.x, false))));
    global1 = array<u32, 13>();
    let var_3 = firstLeadingBit(abs(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(1u, var_2.a, 1u, global1[_wgslsmith_index_u32(u_input.c, 13u)])), ~abs(vec4<u32>(var_2.a, 1u, 29905u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * global0.x))), 1584f, true))), global0.x, _wgslsmith_clamp_u32(7119u, ~u_input.c, _wgslsmith_clamp_u32(12625u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 0u), ~vec2<u32>(1u, 0u)), ~min(19426u, var_3.x))), ~(-(33243i | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, u_input.a.x, 2147483647i), var_0.a.xyx))));
}

