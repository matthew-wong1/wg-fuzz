struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30>;

var<private> global1: Struct_1;

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_f32(-global1.a)))), 1u, 1947u, vec2<bool>(!(!(!global1.d.x)), global1.d.x));
    let var_2 = var_1;
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    return var_1;
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(569f, global1.a), vec2<f32>(-731f, global1.a))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) * global1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a)))))) + vec2<f32>(global1.a, func_1(vec4<u32>(52097u, min(4294967295u, u_input.d), global1.b, u_input.d >> (18382u % 32u))).a));
    let var_1 = -2237f;
    let var_2 = u_input.c;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.x)))) - 145f) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.a, global1.a)), global1.a)))), 11200u, ~(~u_input.d), vec2<bool>(!(!(!global1.d.x)), !((global1.c != 0u) | all(vec4<bool>(global1.d.x, false, false, global1.d.x)))));
    let var_3 = arg_0;
    return ~global1.b << ((min(~global1.b << (~4294967295u % 32u), ~global1.b) ^ ~global1.c) % 32u);
}

fn func_2() -> u32 {
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    var var_0 = Struct_1(-253f, countOneBits(func_3(u_input.c.x, select(select(vec3<bool>(global1.d.x, false, false), vec3<bool>(true, global1.d.x, true), global1.d.x), vec3<bool>(true, true, true), !vec3<bool>(true, global1.d.x, global1.d.x)))), select(1u, _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_sub_u32(7009u, global1.b)), global1.d.x) & ~global1.c, !global1.d);
    var var_1 = func_1(~(~vec4<u32>(4294967295u, 19109u, 4294967295u, 1u) | ((vec4<u32>(4294967295u, u_input.a, 0u, 48963u) & vec4<u32>(var_0.b, 1u, global1.c, 70288u)) & select(vec4<u32>(var_0.c, u_input.d, 9524u, 40576u), vec4<u32>(global1.c, global1.b, u_input.d, 1u), vec4<bool>(var_0.d.x, true, true, var_0.d.x)))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec4<u32>(~u_input.a, u_input.d, 0u, 0u) | vec4<u32>(8248u, ~select(global1.b, 4294967295u, false), u_input.b.x, min(min(u_input.b.x, global1.b), u_input.d)));
    global0 = array<vec2<bool>, 30>();
    var var_1 = vec2<u32>(_wgslsmith_add_u32(var_0.b, _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(u_input.b, u_input.b) | vec3<u32>(u_input.b.x, 1u, 1u))), _wgslsmith_mod_u32(4294967295u, select(~global1.b, _wgslsmith_mult_u32(0u, 7581u), any(vec3<bool>(false, false, global1.d.x))) << (4294967295u % 32u)));
    global0 = array<vec2<bool>, 30>();
    let var_2 = false;
    let var_3 = func_1(_wgslsmith_add_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 15006u, 4294967295u, u_input.d), vec4<u32>(1u, u_input.a, 4294967295u, 1u))), select(vec4<u32>(global1.c, var_0.b, firstTrailingBit(var_0.c), 6525u | var_1.x), ~(~vec4<u32>(var_0.b, 1363u, var_1.x, 186u)), true)));
    let var_4 = firstLeadingBit(vec4<u32>(~1u, _wgslsmith_mult_u32(abs(4294967295u), var_0.b), _wgslsmith_add_u32(var_1.x, ~(var_0.b >> (global1.b % 32u))), ~func_2()));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-439f))))), var_1.x, select(_wgslsmith_clamp_u32(_wgslsmith_add_u32(29655u, 1u), ~_wgslsmith_div_u32(var_3.b, global1.b), var_0.c), _wgslsmith_sub_u32(abs(1u), var_0.b), any(vec2<bool>(true, true))), !(!global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(0u), 51729u));
}

