struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> vec3<f32> {
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_1(any(vec4<bool>(true | all(vec4<bool>(false, true, true, false)), true, false, all(vec4<bool>(true, true, true, false)))));
    global0 = array<Struct_1, 26>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, 13468u), 26u)];
    global0 = array<Struct_1, 26>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2249f, -1106f, 741f))))) * vec3<f32>(-750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f + -104f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-209f, 190f)) - _wgslsmith_f_op_f32(abs(615f)))), -394f));
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(45547u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u), 26u)];
    var var_1 = Struct_1(false);
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 26u)];
    global0 = array<Struct_1, 26>();
    var var_2 = true;
    return var_1.a;
}

fn func_3(arg_0: f32) -> bool {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 26u)];
    var var_1 = global0[_wgslsmith_index_u32(abs(u_input.a.x ^ abs(4294967295u)), 26u)];
    let var_2 = var_1.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f - -323f)) + var_0.x), 231f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(33751u, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(1u, 1u), ~vec2<u32>(89724u, 4294967295u), true), _wgslsmith_add_vec2_u32(~vec2<u32>(44211u, 3487u), firstLeadingBit(u_input.a) | (u_input.a << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))))), 26u)];
    var var_3 = select(vec4<bool>(var_2.a, !func_2(), !(true & all(vec4<bool>(var_2.a, true, var_2.a, var_2.a))), true), vec4<bool>(true, false, func_2(), false), vec4<bool>(true, false, var_2.a, true & (true | var_2.a)));
    var var_4 = Struct_1(!(!var_3.x));
    let var_5 = func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, 1248f, var_2.a)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-904f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) * var_1.x), _wgslsmith_div_f32(170f, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(var_0.x - 519f), true))), -258f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -412f, _wgslsmith_f_op_f32(step(var_1.x, var_0.x)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, -1000f, -1489f, 153f) * vec4<f32>(-1056f, var_0.x, -806f, var_0.x))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-968f, _wgslsmith_f_op_f32(-var_1.x), 1043f, _wgslsmith_f_op_f32(min(var_1.x, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -422f, var_0.x, var_0.x), vec4<f32>(var_1.x, var_1.x, 324f, -1592f), var_5)))))))), !func_3(1104f)));
    let var_6 = global0[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(39773u, _wgslsmith_sub_u32(~11832u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 33221u, 55047u), 146177u);
}

