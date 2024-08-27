struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = vec4<i32>(-arg_2.d.x, arg_0.d.x, arg_2.d.x, 1210i);
    global0 = array<Struct_1, 7>();
    var var_1 = global0[_wgslsmith_index_u32(~1u, 7u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(f32(-1f) * -611f));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1156f);
    global0 = array<Struct_1, 7>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 7u)];
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2306f);
    let var_3 = u_input.d.wyw;
    return u_input.d;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<i32> {
    global0 = array<Struct_1, 7>();
    let var_0 = all(!(!vec2<bool>(true, any(vec3<bool>(false, false, true)))));
    var var_1 = all(select(vec2<bool>(~arg_1.b.x < abs(4294967295u), var_0), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, var_0))), vec2<bool>(_wgslsmith_f_op_f32(round(arg_0)) != _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(arg_1.b.x, 7u)], arg_1, global0[_wgslsmith_index_u32(1u, 7u)], 844f)), abs(u_input.c.x) == (u_input.a.x >> (92659u % 32u)))));
    var var_2 = u_input.a.x;
    let var_3 = false;
    return arg_1.d | -(~select(func_3(), u_input.d, select(vec4<bool>(var_3, var_3, false, false), vec4<bool>(false, false, var_3, var_0), vec4<bool>(false, true, var_3, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.d, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1049f), global0[_wgslsmith_index_u32(78668u, 7u)]));
    let var_1 = -2165f;
    var var_2 = vec3<i32>(0i, 0i, var_0.x);
    var_2 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f - _wgslsmith_f_op_f32(floor(-2550f)))), _wgslsmith_div_f32(-232f, -319f), true)), global0[_wgslsmith_index_u32(0u, 7u)]).zyx;
    let var_3 = select(select(select(vec3<bool>(false, any(vec4<bool>(false, false, true, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(false, true, false)), vec3<bool>(true, any(vec3<bool>(false, false, true)), true), vec3<bool>(true, var_1 > var_1, true)), true), !(!vec3<bool>(select(false, true, true), any(vec4<bool>(true, false, true, true)), false)), vec3<bool>(true, !(any(vec2<bool>(false, false)) & false), true));
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(522f)), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.e, 0u) & vec2<u32>(1u, 1u)) & ~(~vec2<u32>(u_input.e, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.e, 68839u), u_input.b), ~(~vec2<u32>(u_input.e, 0u)))), ~_wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.b, 4294967295u, 21984u) >> (vec3<u32>(4294967295u, 29687u, u_input.b) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.e, u_input.e, u_input.e)), select(vec3<u32>(u_input.e, u_input.b, 26663u), vec3<u32>(u_input.b, 0u, u_input.b), vec3<bool>(var_3.x, true, false))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 49484u), vec3<u32>(39959u, 0u, u_input.b))), ~(-vec2<i32>(firstTrailingBit(var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, var_0.x, -57543i), u_input.d))), -6307i);
}

