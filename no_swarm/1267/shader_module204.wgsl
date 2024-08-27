struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1069f, 1154f, 248f, -619f, -1078f, -662f, 702f, 2220f, -643f, 398f, 105f, -236f, -979f, -1885f, -171f, -1076f, -187f, 273f, -1090f, -648f, -870f, 398f, 201f, -571f, 934f, 245f, 543f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<f32, 27>();
    var var_0 = arg_0;
    return select(select(vec4<bool>(select(var_0.b, u_input.a > u_input.a, false), arg_0.b, any(vec4<bool>(true, true, true, true)), (u_input.a | -11177i) == (u_input.a | u_input.a)), !select(!vec4<bool>(true, var_0.b, arg_0.b, true), select(vec4<bool>(true, var_0.b, var_0.b, false), vec4<bool>(true, true, false, true), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b)), arg_0.b), vec4<bool>(select(arg_0.b, true, true), true, var_0.b, var_0.b)), select(vec4<bool>(arg_0.b, true, -u_input.a != -1i, (u_input.a >= 2147483647i) == select(arg_0.b, true, var_0.b)), vec4<bool>((u_input.a ^ 43796i) == 1i, all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(floor(var_0.a.c)) < -762f, true), any(select(vec3<bool>(var_0.b, var_0.b, arg_0.b), !vec3<bool>(false, false, arg_0.b), vec3<bool>(true, true, true)))), select(select(!vec4<bool>(false, true, true, arg_0.b), vec4<bool>(select(false, true, false), true, arg_0.b, any(vec3<bool>(true, true, arg_0.b))), !select(vec4<bool>(false, var_0.b, true, false), vec4<bool>(false, var_0.b, arg_0.b, false), vec4<bool>(var_0.b, true, arg_0.b, true))), select(select(vec4<bool>(true, arg_0.b, false, false), vec4<bool>(arg_0.b, true, false, arg_0.b), var_0.b), select(select(vec4<bool>(true, false, arg_0.b, arg_0.b), vec4<bool>(false, var_0.b, true, var_0.b), arg_0.b), select(vec4<bool>(var_0.b, false, arg_0.b, false), vec4<bool>(var_0.b, true, arg_0.b, false), true), vec4<bool>(var_0.b, true, false, true)), true), select(select(select(vec4<bool>(true, true, arg_0.b, var_0.b), vec4<bool>(var_0.b, true, arg_0.b, true), true), vec4<bool>(var_0.b, true, false, false), u_input.a == 15613i), vec4<bool>(true, false, true, var_0.b), select(vec4<bool>(false, false, var_0.b, false), select(vec4<bool>(var_0.b, arg_0.b, true, var_0.b), vec4<bool>(arg_0.b, var_0.b, arg_0.b, var_0.b), vec4<bool>(var_0.b, false, var_0.b, arg_0.b)), any(vec2<bool>(false, arg_0.b))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_0 = select(!select(!func_3(arg_1), vec4<bool>(arg_1.b, true, all(vec3<bool>(arg_1.b, true, false)), all(vec2<bool>(arg_1.b, false))), !select(vec4<bool>(arg_1.b, arg_1.b, false, true), vec4<bool>(true, true, false, false), arg_1.b)), select(select(select(!vec4<bool>(false, arg_1.b, false, false), select(vec4<bool>(true, true, arg_1.b, arg_1.b), vec4<bool>(true, true, arg_1.b, true), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true)), select(vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(false, true, arg_1.b, true), false)), !(!vec4<bool>(true, false, arg_1.b, arg_1.b)), !func_3(Struct_2(arg_1.a, arg_1.b))), func_3(arg_1), _wgslsmith_mult_i32(-48708i, u_input.a) != ~u_input.a), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_1.a.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1.a.d ^ 13018u, 27u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1.a.d, 27u)], -162f, false))))));
    return -1000f;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(func_2(vec2<u32>(17650u, 3921u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(6810u, 27u)], vec3<f32>(-488f, 696f, 1775f), -706f, arg_0.x), false))), _wgslsmith_f_op_f32(-arg_1)), vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), 1225f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 27u)] - global0[_wgslsmith_index_u32(arg_0.x, 27u)]))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(29763u, arg_0.x) & vec2<u32>(arg_0.x, 55877u), firstTrailingBit(arg_0)), 206u), 27u)], _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x >> (arg_0.x % 32u), 0u), abs(abs(vec3<u32>(0u, arg_0.x, arg_0.x)))));
    global0 = array<f32, 27>();
    var var_1 = abs(i32(-1i) * -min(-84463i, -1190i)) << ((_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.d, 82363u, arg_0.x)), ~vec3<u32>(var_0.d, arg_0.x, arg_0.x)) << (var_0.d % 32u)) % 32u);
    let var_2 = Struct_3(select(vec3<bool>(true, true, true), !vec3<bool>(true, any(vec3<bool>(false, false, false)), true), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), func_3(Struct_2(Struct_1(var_0.c, vec3<f32>(879f, -750f, -1189f), 594f, var_0.d), false)).zwx)));
    global0 = array<f32, 27>();
    return ~(~min(arg_0.x, ~firstTrailingBit(var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12410u, 27u)] + -1783f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(23446u, 93849u, 1u), 1u, ~1u), 27u)])) > -1320f, any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true))));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_1 = !((0u << (~(~1u) % 32u)) >= func_1(firstTrailingBit(~vec2<u32>(4798u, 16273u)), global0[_wgslsmith_index_u32(select(1u, 4294967295u, false), 27u)], vec3<i32>(_wgslsmith_clamp_i32(58779i, u_input.a, -1i), -u_input.a, reverseBits(1i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(37213u, 27u)], -1125f))) + _wgslsmith_f_op_f32(-256f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-2093f, global0[_wgslsmith_index_u32(4294967295u, 27u)])))))));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-695f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 27u)])), 1238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec2<u32>(50183u, 1959u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 27u)], vec3<f32>(1173f, 1000f, 762f), -1533f, 4294967295u), var_0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 27u)], -679f)));
    var var_4 = _wgslsmith_sub_u32(~1u, 0u);
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a, _wgslsmith_mod_i32(-2147483647i, 15138i), ~u_input.a, u_input.a), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))), vec4<i32>(~(-1i), 42906i, u_input.a, 1i)), -max(firstTrailingBit(countOneBits(3193i)), _wgslsmith_mult_i32(1i, u_input.a)), 345f);
}

