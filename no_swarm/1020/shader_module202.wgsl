struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<u32, 18>;

var<private> global2: array<i32, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> bool {
    global1 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-609f, -191f))) - -1071f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(588f, 1499f))));
    global0 = array<Struct_1, 20>();
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    return all(!vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, var_0), vec2<bool>(false, true))), -955f > _wgslsmith_f_op_f32(sign(1798f))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_mult_u32(114265u, u_input.a) ^ ~global1[_wgslsmith_index_u32(u_input.a, 18u)];
    let var_1 = select(vec3<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), false, func_3(!all(vec3<bool>(true, true, false)), vec4<i32>(-33073i, _wgslsmith_div_i32(u_input.c, u_input.e), u_input.d, -1i))), !(!vec3<bool>(any(vec3<bool>(false, true, true)), true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43737u, 18u)], 18u)], 15u)] > global2[_wgslsmith_index_u32(0u, 15u)])), vec3<bool>(true, all(vec4<bool>(true, false, true, any(vec3<bool>(true, false, false)))), 1000f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-643f, 1000f, true)))));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -860f);
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.b.zz, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, 1u), ~vec2<u32>(u_input.b.x, 84462u)), vec2<u32>(~42432u, 88435u)), ~vec2<u32>(~select(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 4294967295u, var_1.x), _wgslsmith_mult_u32(0u, ~8558u))), 20u)];
    return u_input.b.xy;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(-arg_2.a);
    var var_1 = global1[_wgslsmith_index_u32(35751u, 18u)] >> (~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, 22245u)), func_2()), ~_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], 0u)) % 32u);
    global2 = array<i32, 15>();
    var var_2 = global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), 18u)], 15u)];
    var var_3 = vec4<bool>(!arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -143f) != _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -514f))), arg_1.x, true);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u << (abs(global1[_wgslsmith_index_u32(u_input.a, 18u)]) % 32u), 20u)];
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(258f, -864f) - vec2<f32>(-1779f, 819f)))))), !(!vec4<bool>(any(vec3<bool>(true, true, false)), true, true, false)), global0[_wgslsmith_index_u32(57358u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1270f, 997f, 746f))), _wgslsmith_div_vec3_f32(vec3<f32>(-303f, -597f, -323f), vec3<f32>(-1000f, 971f, -1477f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-539f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f * 711f)), 177f)));
    global1 = array<u32, 18>();
    global0 = array<Struct_1, 20>();
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

