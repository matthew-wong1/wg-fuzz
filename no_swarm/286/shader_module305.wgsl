struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    global0 = -859f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-656f, -1271f))))) * _wgslsmith_f_op_f32(floor(-172f)));
    var var_0 = Struct_3(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, false), vec4<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), true, true), true);
    var_0 = Struct_3(!var_0.b, var_0.b, false);
    var_0 = Struct_3(vec4<bool>(var_0.c, !(countOneBits(u_input.b) < (u_input.b << (u_input.a % 32u))), !(firstTrailingBit(6030u) < u_input.a), true || (-u_input.b >= -61334i)), !(!vec4<bool>(var_0.c || var_0.a.x, !var_0.a.x, true, all(vec4<bool>(false, true, false, var_0.a.x)))), all(select(var_0.b.wz, vec2<bool>(!var_0.c, var_0.a.x), var_0.c)));
    return !var_0.c;
}

fn func_2() -> f32 {
    return -1063f;
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~0u, u_input.a, reverseBits(21772u), _wgslsmith_mult_u32(~u_input.a, 1u));
    global0 = 975f;
    global0 = 2329f;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f - _wgslsmith_f_op_f32(f32(-1f) * -660f))), !vec2<bool>(true, _wgslsmith_mult_u32(var_0.x, var_0.x) > u_input.a), Struct_3(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, false)), vec4<bool>(true, select(false, true, true), any(vec3<bool>(true, false, true)), true)), select(vec4<bool>(all(vec3<bool>(true, false, false)), u_input.b == u_input.b, func_1(), true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), any(vec4<bool>(u_input.b != -8592i, true, 23369u == var_0.x, true))));
    let var_2 = abs(-u_input.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_4 = _wgslsmith_div_vec2_u32(var_0.xz, vec2<u32>(func_3(-542f != var_1.a, _wgslsmith_f_op_f32(min(305f, var_1.a))), firstLeadingBit(_wgslsmith_div_u32(0u, 22944u))) ^ abs(abs(~var_0.yz)));
    let var_5 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1555f, 914f, -142f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(957f, var_1.a, var_1.a, var_1.a) + vec4<f32>(-1534f, -1305f, var_1.a, 593f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a, 947f, var_1.a, 1405f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1355f, var_1.a, var_1.a, var_1.a))), var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, -1146f, var_1.a, var_5.x)))))));
}

