struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(37546u, 0u, 1u, 70317u), -1i, 0u, vec4<u32>(31352u, 25937u, 38287u, 49570u), vec2<f32>(406f, -1322f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_vec4_u32(global0.a, vec4<u32>(31372u, reverseBits(u_input.a ^ u_input.a), _wgslsmith_div_u32(0u, u_input.a), 56445u)), abs(countOneBits(abs(~u_input.b.x))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~global0.d.ywz, global0.d.yyx), u_input.a), min(vec4<u32>(15917u, firstLeadingBit(4294967295u), abs(0u), _wgslsmith_mult_u32(u_input.a, 127999u)), vec4<u32>(26616u, firstTrailingBit(global0.c), global0.c, u_input.a)) ^ global0.d, _wgslsmith_f_op_vec2_f32(-global0.e));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: bool) -> bool {
    let var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, 1553f, arg_2)), arg_1.x));
    var var_1 = ~var_0.c;
    global0 = func_1(var_0.e.x);
    var var_2 = func_1(1f);
    var var_3 = _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), abs(u_input.b));
    return all(select(vec2<bool>(u_input.b.x == _wgslsmith_mod_i32(var_2.b, var_0.b), true), select(vec2<bool>(arg_2, true), !select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, false), vec2<bool>(arg_2, true)), true), _wgslsmith_f_op_f32(abs(var_2.e.x)) != _wgslsmith_f_op_f32(exp2(arg_1.x))));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    let var_0 = global0.b;
    var var_1 = vec2<bool>(!(!any(vec3<bool>(true, true, true))), func_3(vec2<i32>(24354i, _wgslsmith_mod_i32(-12671i, u_input.b.x)), vec2<f32>(1148f, _wgslsmith_f_op_f32(step(arg_0, 245f))), all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))) | !(!any(vec3<bool>(true, true, true))));
    var_1 = vec2<bool>(global0.b <= 0i, any(vec3<bool>(all(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !var_1.x, all(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false), var_1.x)))));
    var_1 = vec2<bool>(any(vec3<bool>(func_3(vec2<i32>(45277i, -5956i), vec2<f32>(278f, 1000f), var_1.x) && (true & var_1.x), var_1.x, !(-570f <= arg_0))), (~_wgslsmith_add_u32(16479u, 38112u) | _wgslsmith_mult_u32(0u, u_input.a)) < global0.a.x);
    let var_2 = abs(abs(~_wgslsmith_sub_u32(55352u, global0.a.x))) > u_input.a;
    return vec4<bool>(!(!(30192i < global0.b)), _wgslsmith_dot_vec4_i32(~countOneBits(u_input.b), abs(u_input.b)) != 1i, var_2, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-864f);
    let var_0 = any(func_2(global0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec4<i32>(-global0.b, global0.b, -2624i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(-408f)), _wgslsmith_f_op_f32(887f + global0.e.x), _wgslsmith_f_op_f32(-global0.e.x))))), global0.e.x);
}

