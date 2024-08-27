struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 19>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 21400u, 53971u), 26115i, -665f, vec3<bool>(true, true, false));

var<private> global3: vec2<i32>;

var<private> global4: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<i32>(2147483647i, global2.b);
    global2 = Struct_1(firstLeadingBit(max(firstLeadingBit(vec4<u32>(1u, 1u, 0u, 4294967295u)), reverseBits(vec4<u32>(arg_3.a.x, 4294967295u, global2.a.x, 19910u)))), _wgslsmith_dot_vec3_i32(-select(u_input.a.xzz, u_input.a.yzy, !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 19u)], false, global1[_wgslsmith_index_u32(0u, 19u)])), firstLeadingBit(~u_input.a.yxy)), arg_3.c, !global2.d);
    let var_1 = Struct_1((vec4<u32>(4294967295u, firstTrailingBit(1u), 12331u, 19550u) | ~arg_2) ^ global2.a, 2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(-global2.c)))), arg_3.c)), !global2.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1597f, 1157f, -1060f, -180f) - vec4<f32>(-1000f, global2.c, 2855f, 1808f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1408f, var_1.c, 392f, global2.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, arg_3.c, arg_3.c, arg_3.c) - vec4<f32>(arg_3.c, 1229f, global2.c, arg_3.c)) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.c, arg_3.c, 1029f, -1971f), vec4<f32>(1357f, arg_3.c, 683f, -2688f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.c)) + arg_3.c), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -256f)), 1f))));
    let var_3 = arg_3;
    return -(~(-select(var_3.b, select(-1i, 1i, false), arg_2.x >= 27238u)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = max(u_input.a.wy, countOneBits(vec2<i32>(-1i, 41049i ^ ~global2.b)));
    let var_0 = -func_3(~global2.a, true, ~select(vec4<u32>(0u, 18376u, u_input.b, 1u), global2.a, global2.d.x | global1[_wgslsmith_index_u32(1u, 19u)]), Struct_1(vec4<u32>(4294967295u, 1u, ~u_input.b, 91894u), -2147483647i, _wgslsmith_f_op_f32(trunc(-1000f)), vec3<bool>(true, u_input.b > global2.a.x, global2.d.x)));
    let var_1 = Struct_1(global2.a | firstTrailingBit(global2.a), _wgslsmith_mod_i32(_wgslsmith_mod_i32(max(2147483647i, var_0), -11281i), ~(-select(global2.b, var_0, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(163f))) - arg_0) * -351f), global2.d);
    let var_2 = max(-1i, 0i);
    var var_3 = !(!(!(4294967295u <= _wgslsmith_mult_u32(var_1.a.x, 0u))));
    return Struct_1(~(~global2.a | global2.a), global2.b, _wgslsmith_f_op_f32(select(var_1.c, 694f, false)), select(select(vec3<bool>(global1[_wgslsmith_index_u32(~global2.a.x, 19u)], var_1.d.x || false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a.x, 1u), 19u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global2.d.x), !vec3<bool>(true, var_1.d.x, false), vec3<bool>(false, var_1.d.x, global2.d.x)), select(vec3<bool>(global2.d.x, global1[_wgslsmith_index_u32(global2.a.x, 19u)], false), !var_1.d, select(false, true, global2.d.x))), !vec3<bool>(!global2.d.x, false, all(vec3<bool>(false, global1[_wgslsmith_index_u32(12134u, 19u)], global2.d.x))), global2.d));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    var var_0 = func_2(-1000f);
    global1 = array<bool, 19>();
    global2 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.c - func_2(_wgslsmith_f_op_f32(-global2.c)).c), var_0.c)));
    var var_1 = func_2(-246f);
    var var_2 = vec3<i32>(min(min(func_2(252f).b, -(~1i)), 1i), ~(~global3.x), global3.x);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 19>();
    var var_0 = _wgslsmith_clamp_u32(~select(~85454u, ~(~12008u), !all(global2.d)), 60361u << (firstLeadingBit(u_input.b) % 32u), global2.a.x);
    var var_1 = Struct_1(vec4<u32>(1u, func_1(global2.a.yxx, -2147483647i, _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, global2.a.x, 38728u), ~vec3<u32>(4294967295u, u_input.b, global2.a.x))), u_input.b, u_input.b), -2147483647i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-319f, global2.c, global2.d.x)), _wgslsmith_f_op_f32(-global2.c)), func_2(global2.c).c, true)), _wgslsmith_f_op_f32(f32(-1f) * -1829f))), select(global2.d, vec3<bool>(false, global2.d.x, true), !vec3<bool>(global1[_wgslsmith_index_u32(global2.a.x, 19u)], !global1[_wgslsmith_index_u32(28757u, 19u)], select(true, global1[_wgslsmith_index_u32(18361u, 19u)], global1[_wgslsmith_index_u32(global2.a.x, 19u)]))));
    global1 = array<bool, 19>();
    global0 = true;
    global1 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(187f, u_input.b, u_input.a ^ ~u_input.a);
}

