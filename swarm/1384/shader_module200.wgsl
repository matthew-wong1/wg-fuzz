struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<i32>, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_add_i32(countOneBits(countOneBits(arg_0.a.b.x)), ~(30367i | _wgslsmith_sub_i32(arg_0.a.b.x, 9782i))) > global0.a.b.x;
    global0 = var_0;
    global1 = array<vec4<i32>, 2>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -195f);
    return reverseBits(~vec3<u32>(~87342u, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, 46975u), vec3<u32>(76125u, 1u, u_input.b))));
}

fn func_2() -> Struct_3 {
    global1 = array<vec4<i32>, 2>();
    let var_0 = ~(~global0.a.b.xx);
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(max(41109u, _wgslsmith_dot_vec3_u32(~vec3<u32>(18732u, 4294967295u, u_input.b), func_3(Struct_4(global0.a), global0.a.a))), ~(max(12050u, u_input.c) << (~22077u % 32u)), _wgslsmith_add_u32(u_input.c, ~u_input.c) ^ 47233u), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(4294967295u, 4845u)), ~1u, ~_wgslsmith_mult_u32(68475u, u_input.b)), firstLeadingBit(~(vec3<u32>(u_input.b, 0u, u_input.c) ^ vec3<u32>(0u, u_input.b, u_input.c))), select(vec3<bool>(false, false, 703f == global0.a.a), vec3<bool>(true, true, true), true)));
    global1 = array<vec4<i32>, 2>();
    let var_2 = 9565u;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, 1450f, global0.a.a, global0.a.a) + vec4<f32>(2113f, -509f, global0.a.a, -440f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, 1647f, -1861f, global0.a.a) - vec4<f32>(global0.a.a, -331f, 1018f, 901f)))))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.a.a.x)), 1733f)), u_input.e.wzw);
    var var_2 = var_0.a.a.zz;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(min(439f, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a, 689f)))))), ~vec3<i32>(global0.a.b.x, 1i, var_1.b.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(769f, 144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(295f + 2115f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -547f))))))));
    return Struct_4(Struct_2(1250f, global0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = false;
    let var_1 = 1f <= global0.a.a;
    global1 = array<vec4<i32>, 2>();
    global0 = Struct_4(global0.a);
    var var_2 = Struct_3(func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(select(u_input.c << (31852u % 32u), ~4294967295u, !var_0), ~(~51553u)), u_input.b, ~countOneBits(~u_input.b), u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_2.a.a)) - var_2.a.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -604f, -964f, 1860f), var_2.a.a, var_1)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2.a.a)))), select(~(~vec2<u32>(4823u, u_input.b) ^ reverseBits(vec2<u32>(57096u, 4294967295u))), ~vec2<u32>(~28866u, _wgslsmith_clamp_u32(33364u, u_input.b, 0u)), !select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), vec2<bool>(var_0, var_0), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a.a * vec4<f32>(global0.a.a, -1000f, var_2.a.a.x, var_2.a.a.x)) * _wgslsmith_f_op_vec4_f32(trunc(var_2.a.a))) * var_2.a.a) + vec4<f32>(-528f, global0.a.a, -1289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686f + global0.a.a) - _wgslsmith_f_op_f32(sign(-1420f))))));
}

