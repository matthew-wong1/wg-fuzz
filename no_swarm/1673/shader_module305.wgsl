struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global1 = !arg_0;
    let var_0 = select(select(!select(!vec3<bool>(arg_0.x, arg_0.x, global1.x), !vec3<bool>(arg_0.x, global1.x, false), !global1.x), select(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, global1.x), vec3<bool>(arg_0.x, true, false)), vec3<bool>(true, true, false), true), true), select(vec3<bool>(all(select(vec3<bool>(arg_0.x, arg_0.x, global1.x), vec3<bool>(global1.x, arg_0.x, arg_0.x), vec3<bool>(global1.x, true, true))), ~global0[_wgslsmith_index_u32(24609u, 2u)] <= (u_input.d.x ^ global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), all(arg_0)), vec3<bool>(select(true, true, true), false, false), !vec3<bool>(false, u_input.c.x > u_input.c.x, true)), arg_0.x);
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let var_1 = Struct_1(_wgslsmith_div_u32(14572u, 21113u), 19684u | _wgslsmith_div_u32(84303u, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.d.wxx, -(~u_input.d.zyy)), u_input.c.x, ~49239u);
    return global0[_wgslsmith_index_u32(u_input.c.x, 2u)];
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = !(!select(vec3<bool>(any(vec3<bool>(global1.x, arg_2, arg_2)), global1.x, true), select(vec3<bool>(global1.x, arg_2, false), vec3<bool>(true, false, false), global1.x), !vec3<bool>(true, arg_2, global1.x)));
    var var_1 = _wgslsmith_add_i32(abs(1i ^ global0[_wgslsmith_index_u32(0u, 2u)]), -global0[_wgslsmith_index_u32(7061u, 2u)]);
    var_1 = func_3(!(!(!var_0.zx)));
    global1 = vec2<bool>(all(!(!(!var_0))), false);
    return select(!(!vec2<bool>(!global1.x, false)), var_0.yy, arg_2);
}

fn func_1() -> bool {
    var var_0 = vec2<u32>(~1u, ~u_input.a.x);
    let var_1 = !vec4<bool>(global1.x, any(vec2<bool>(true, true)) & global1.x, global1.x, all(func_2(global0[_wgslsmith_index_u32(~var_0.x, 2u)], -637f, !global1.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-879f, 1784f))))));
    global1 = !(!(!vec2<bool>(any(var_1), var_1.x)));
    let var_2 = 775f;
    global0 = array<i32, 2>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(all(select(vec4<bool>(global1.x, true, false, true), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(true, global1.x, global1.x, global1.x))), true, global1.x, func_1()));
    var var_1 = global0[_wgslsmith_index_u32((~u_input.c.x & _wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(80279u, u_input.c.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)), 1u))) ^ abs(max(_wgslsmith_mult_u32(u_input.a.x, 25185u), 12059u) & (~u_input.a.x | (4294967295u | u_input.a.x))), 2u)];
    var var_2 = vec3<u32>(u_input.a.x, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, ~0u), vec4<u32>(u_input.a.x, u_input.a.x, 71844u, reverseBits(u_input.c.x))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(-371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(2119f, 1004f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)), -2321f, !((u_input.d.x | u_input.d.x) <= _wgslsmith_dot_vec2_i32(u_input.d.yw, u_input.d.zy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(2091f)))))));
    var_0 = vec4<bool>(any(select(!(!var_0.zw), select(var_0.xz, vec2<bool>(global1.x, true), true), vec2<bool>(global1.x, all(vec4<bool>(false, var_0.x, var_0.x, global1.x))))), all(!(!vec2<bool>(var_0.x, true))), false, false);
    var_1 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x + -1000f))) - _wgslsmith_f_op_f32(-142f + var_3.x)))), vec4<u32>(1u, 0u, ~(~118717u) | var_2.x, 66208u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(var_3.x + 536f)) - 2254f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + var_3.x))) * -296f)), vec4<u32>(32440u, 29717u, _wgslsmith_div_u32(19897u, var_2.x), 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, ~u_input.a.x), u_input.a.yx));
}

