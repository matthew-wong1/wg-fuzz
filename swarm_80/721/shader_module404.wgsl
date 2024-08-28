struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<vec4<bool>, 30>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_4) -> vec3<bool> {
    return !vec3<bool>(any(vec2<bool>(true, true)), true, true);
}

fn func_3(arg_0: Struct_4) -> bool {
    return !all(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~(u_input.a.x << (25133u % 32u))), 30u)]);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = select(~(-vec3<i32>(2147483647i, -1i, arg_1) ^ vec3<i32>(1i, arg_1, 1i)), abs(select(-vec3<i32>(u_input.d, arg_1, 19580i), select(vec3<i32>(-36809i, arg_1, -1i), vec3<i32>(-8102i, 2147483647i, arg_0), true), false) | _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_1, arg_0) << (arg_3.ywy % vec3<u32>(32u)), abs(vec3<i32>(arg_0, arg_0, 1i)), reverseBits(vec3<i32>(-1i, -1i, 1i)))), func_2(Struct_4(51742i, Struct_2(vec4<f32>(378f, global0[_wgslsmith_index_u32(24446u, 11u)], arg_2, 1000f), ~vec4<u32>(u_input.a.x, 51838u, 4294967295u, u_input.b), _wgslsmith_f_op_f32(select(211f, -924f, false))))));
    let var_1 = !(!(!func_3(Struct_4(1i, Struct_2(vec4<f32>(arg_2, -156f, global0[_wgslsmith_index_u32(arg_3.x, 11u)], global0[_wgslsmith_index_u32(arg_3.x, 11u)]), arg_3, -345f)))));
    var var_2 = Struct_4(-23144i, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], 1799f, 284f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_2, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], arg_2)))))), ~vec4<u32>(~u_input.a.x, 21030u, ~u_input.a.x, ~3939u), -2163f));
    var var_3 = true || !var_1;
    var var_4 = !vec3<bool>(var_1, !(var_1 & (1000f == global0[_wgslsmith_index_u32(1u, 11u)])), select(true, _wgslsmith_f_op_f32(-1461f * 198f) >= _wgslsmith_f_op_f32(var_2.b.c * var_2.b.c), false));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.a.x, -1612f, -1273f, var_2.b.c) * var_2.b.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_2.b.a.x, arg_2, -1132f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 203f, -307f, -1495f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -543f, global0[_wgslsmith_index_u32(18999u, 11u)], -1000f))) - _wgslsmith_f_op_vec4_f32(func_1(u_input.d, u_input.d, -633f, vec4<u32>(1u, 21944u, 432u, 1u)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1101f, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]))), _wgslsmith_f_op_f32(457f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), _wgslsmith_f_op_f32(max(1356f, -256f)), 245f)));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], var_1.x, -1887f), vec4<f32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(26437u, 11u)], var_1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.b, 11u)], 147f, global0[_wgslsmith_index_u32(4294967295u, 11u)]) + vec4<f32>(690f, 245f, var_1.x, -1048f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(477f, -1010f, 180f, -648f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1139f, 1000f, var_1.x, -135f), vec4<f32>(602f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -971f, var_1.x), global1[_wgslsmith_index_u32(u_input.a.x, 30u)])))), vec4<bool>(true, true, false, all(vec3<bool>(false, false, false)))))), vec4<f32>(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(u_input.b, 11u)]) - _wgslsmith_f_op_f32(var_1.x + -312f))), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1442f + _wgslsmith_f_op_f32(f32(-1f) * -399f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)))), false));
    var var_2 = u_input.d;
    var var_3 = ~(-1557i);
    global0 = array<f32, 11>();
    var_2 = reverseBits(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~vec3<u32>(u_input.b, u_input.c.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(func_1(-2147483647i, ~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(-2127f * -1451f)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 83114u, u_input.c.x, 21781u) << (vec4<u32>(u_input.b, 35049u, 0u, 47877u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.b, 1u, u_input.b)) >> (vec4<u32>(~u_input.b, ~1u, u_input.a.x, ~u_input.b) % vec4<u32>(32u)))).xyy);
}

