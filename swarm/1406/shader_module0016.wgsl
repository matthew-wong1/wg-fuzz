struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1390f, 1776f, 1140f, 1145f);

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 42589u, 42911u), vec3<u32>(1u, 57750u, 32462u), vec3<u32>(1u, 4294967295u, 135693u), vec3<u32>(71276u, 4294967295u, 1u), vec3<u32>(1u, 22506u, 17551u), vec3<u32>(683u, 101796u, 4294967295u), vec3<u32>(20203u, 60191u, 103730u), vec3<u32>(69750u, 4294967295u, 8181u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-826f, _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(350f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1100f - global0.x), _wgslsmith_f_op_f32(select(global0.x, global0.x, true)), 156f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-310f, -512f, 651f), _wgslsmith_f_op_vec3_f32(-global0.wyy), !vec3<bool>(arg_0.a, arg_0.a, true))) - global0.yxx));
    let var_1 = true;
    var var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 784u, 4294967295u), vec3<u32>(9146u, u_input.c, u_input.c)))), ~vec2<u32>(1u, ~64453u)), ~min(abs(vec2<u32>(1u, 0u)), vec2<u32>(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 1u, 1u)))));
    var_0 = vec3<f32>(global0.x, -462f, _wgslsmith_f_op_f32(var_0.x - -476f));
    let var_3 = vec3<f32>(-940f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -992f), -1000f));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = vec2<u32>(~abs(0u), abs(select(u_input.c, abs(~u_input.c), true)));
    var_0 = ~(~max(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, 77525u))), vec2<u32>(~1u, u_input.c)));
    var var_1 = Struct_1(func_1(arg_1.a));
    var var_2 = arg_0;
    var var_3 = arg_2.a;
    return select(select(!select(!vec3<bool>(var_3.a, var_1.a, var_2.a), !vec3<bool>(false, arg_1.a.a, var_3.a), var_3.a == var_2.a), !vec3<bool>(false, any(vec2<bool>(arg_0.a, var_2.a)), !arg_1.a.a), select(select(vec3<bool>(var_3.a, false, true), vec3<bool>(var_3.a, var_1.a, true), true), vec3<bool>(true, true, true), var_1.a)), select(select(vec3<bool>(var_0.x >= u_input.c, all(vec3<bool>(true, arg_1.a.a, true)), true), select(vec3<bool>(arg_0.a, true, var_3.a), vec3<bool>(arg_0.a, var_3.a, true), !vec3<bool>(true, arg_2.a.a, false)), true), !(!vec3<bool>(false, arg_1.a.a, true)), select(vec3<bool>(!var_2.a, !var_3.a, global0.x > global0.x), !vec3<bool>(false, var_3.a, var_3.a), all(vec4<bool>(true, false, var_2.a, true)))), var_2.a);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_1(any(select(func_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))) || true);
    let var_1 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-545f)))));
    var var_2 = false;
    var_2 = !(!func_3(var_0, Struct_2(var_0), Struct_2(var_0)).x);
    global1 = array<vec3<u32>, 8>();
    return !(49590u < min(abs(_wgslsmith_add_u32(u_input.c, 24893u)), u_input.c & _wgslsmith_div_u32(u_input.c, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(u_input.b < u_input.b)) || func_2(vec3<i32>(reverseBits(u_input.d & u_input.a), firstTrailingBit(-1i), u_input.b));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -277f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1038f, global0.x)))), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(ceil(global0.x)), !var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - -1793f), global0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2045f, global0.x), 580f, func_3(Struct_1(var_0), Struct_2(Struct_1(var_0)), Struct_2(Struct_1(true))).x)))));
    global1 = array<vec3<u32>, 8>();
    var var_1 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(11642u, u_input.c), vec2<u32>(25558u, 2801u))) & max(firstLeadingBit(select(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, u_input.c), vec2<bool>(false, var_0)) << (abs(vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))), abs(vec2<u32>(1u | u_input.c, u_input.c)));
    let var_2 = Struct_2(Struct_1(any(!vec3<bool>(false, false, var_0))));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -848f)), 1275f, -1569f)))));
    global1 = array<vec3<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(18399u, 4294967295u, firstTrailingBit(_wgslsmith_clamp_u32(u_input.c, u_input.c, 1u))), ~u_input.c);
}

