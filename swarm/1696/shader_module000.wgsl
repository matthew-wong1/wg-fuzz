struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = array<f32, 10>();
    let var_0 = Struct_2(firstTrailingBit(_wgslsmith_mult_u32(u_input.a, ~u_input.a)) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 77581u, arg_0.a, 4294967295u) & vec4<u32>(u_input.a, 42041u, arg_0.a, 4294967295u), vec4<u32>(60015u, 2155u, 0u, 1u)), u_input.a) % 32u), Struct_1(select(vec3<bool>(!arg_0.b.a.x, arg_0.c.x | arg_0.b.a.x, true | arg_0.c.x), arg_0.c.zwx, true)), arg_0.c);
    let var_1 = Struct_1(vec3<bool>(true, true, any(!vec3<bool>(arg_0.b.a.x, false, true))));
    let var_2 = var_0;
    global0 = array<f32, 10>();
    return 90857u;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> Struct_4 {
    let var_0 = ~4294967295u;
    let var_1 = Struct_2(~(~_wgslsmith_div_u32(_wgslsmith_div_u32(var_0, arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(783u, 1u, u_input.a, 10088u), vec4<u32>(4294967295u, var_0, 31924u, u_input.a)))), Struct_1(!vec3<bool>(true, any(vec3<bool>(false, false, true)), true)), vec4<bool>(true, true, true, true));
    let var_2 = Struct_1(vec3<bool>(var_1.b.a.x, var_1.b.a.x, false));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(0u, 10u)], 1844f, 1109f)))))))) - vec3<f32>(global0[_wgslsmith_index_u32(arg_2, 10u)], _wgslsmith_div_f32(1000f, 720f), -847f));
    let var_4 = var_1;
    return Struct_4(Struct_2(var_1.a << (_wgslsmith_mod_u32(28796u, 1u) % 32u), Struct_1(var_2.a), !var_4.c), vec2<f32>(arg_1, -205f));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a & _wgslsmith_mult_u32(0u, 15324u), abs(42117u), ~(~48915u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 66332u), ~vec3<u32>(0u, u_input.a, 1u)), vec3<u32>(~0u, 15774u, ~_wgslsmith_add_u32(0u, 4294967295u))), global0[_wgslsmith_index_u32(u_input.a, 10u)], _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(75324u, 1u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 6862u, 79749u)), u_input.a & 30593u), 1u), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), func_2(Struct_2(u_input.a, Struct_1(vec3<bool>(false, false, true)), vec4<bool>(arg_0, false, true, arg_0))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -605f))), 2687f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, 1u) << (~27642u % 32u), abs(_wgslsmith_mult_u32(1u, var_0.a.a))), 10u)]));
    global0 = array<f32, 10>();
    return Struct_2(var_0.a.a, Struct_1(vec3<bool>(all(var_0.a.c), false, arg_0)), vec4<bool>(!(!arg_0), arg_0, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    let var_1 = Struct_1(var_0.b.a);
    var var_2 = func_1(any(!(!var_1.a.zy)));
    var var_3 = var_1;
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-24116i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-856f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)]))) + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a, ~24668u), 10u)]));
}

