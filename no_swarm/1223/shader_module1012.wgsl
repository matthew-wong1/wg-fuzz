struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 8962i;

var<private> global1: vec4<i32>;

var<private> global2: i32 = 0i;

var<private> global3: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(446f, -381f), vec2<f32>(-754f, 1177f), vec2<f32>(-218f, -125f), vec2<f32>(-355f, -590f), vec2<f32>(-105f, -420f), vec2<f32>(-997f, 843f), vec2<f32>(-925f, 1152f), vec2<f32>(-337f, -626f), vec2<f32>(846f, -169f), vec2<f32>(685f, 854f), vec2<f32>(298f, -1035f), vec2<f32>(-475f, 912f), vec2<f32>(-1000f, 705f), vec2<f32>(523f, -1114f), vec2<f32>(-432f, 446f), vec2<f32>(105f, 234f), vec2<f32>(453f, 401f), vec2<f32>(-1496f, -463f), vec2<f32>(144f, -1054f), vec2<f32>(2418f, 1074f), vec2<f32>(-636f, 1000f), vec2<f32>(-1109f, -897f), vec2<f32>(867f, -2263f), vec2<f32>(-257f, 454f), vec2<f32>(-1000f, 1797f), vec2<f32>(1041f, 976f), vec2<f32>(-959f, -607f), vec2<f32>(-342f, -1000f), vec2<f32>(1000f, 900f), vec2<f32>(665f, -473f), vec2<f32>(-581f, -742f));

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> bool {
    let var_0 = vec4<bool>(!(!(!(true & arg_1.x))), arg_1.x, arg_1.x, arg_1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(~4294967295u, 31u)], _wgslsmith_f_op_vec2_f32(min(global3[_wgslsmith_index_u32(select(0u, 4294967295u, true), 31u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1685f, -1000f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)) * vec2<f32>(_wgslsmith_f_op_f32(arg_0 * -1314f), arg_0))), -1034f);
    global0 = global1.x;
    let var_2 = var_1;
    let var_3 = -1i;
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = abs(~(~(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.a)) >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))));
    let var_1 = arg_0;
    var var_2 = vec3<u32>(firstTrailingBit(var_0.x >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, u_input.a), vec3<u32>(1u, var_0.x, u_input.a)), u_input.a) % 32u)), _wgslsmith_mult_u32(~5062u, _wgslsmith_mod_u32(firstLeadingBit(u_input.a), 71500u)), ~(~(~u_input.a & var_0.x)));
    global1 = ~reverseBits(-select(vec4<i32>(1140i, -2147483647i, -16668i, -1i), vec4<i32>(global1.x, global1.x, 0i, -2147483647i), vec4<bool>(false, arg_2, arg_2, arg_2)));
    var_2 = countOneBits(_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(32838u, 1u, 0u)) & _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_0.x, 57349u, 0u)), vec3<u32>(u_input.a, 0u, var_0.x)), vec3<u32>(countOneBits(_wgslsmith_mod_u32(u_input.a, u_input.a)), 101923u, ~countOneBits(var_2.x))));
    return var_1.b != 920f;
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global3 = array<vec2<f32>, 31>();
    var var_0 = 38944i;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(604f, _wgslsmith_f_op_f32(round(112f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-290f))))));
    var_0 = _wgslsmith_mod_i32(arg_0 << (~24710u % 32u), -61275i);
    let var_2 = vec4<bool>(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))))), vec2<bool>(true, true)), !(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))), true, all(vec3<bool>(true, func_3(Struct_1(vec2<f32>(var_1, var_1), 318f), Struct_1(global3[_wgslsmith_index_u32(1u, 31u)], var_1), true, Struct_1(vec2<f32>(var_1, -1000f), var_1)), any(vec2<bool>(true, false)))) && func_2(var_1, vec2<bool>(any(vec3<bool>(true, false, false)), true)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))), -896f, -316f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1153f, -1000f, -572f), vec3<f32>(var_1, var_1, var_1)), vec3<f32>(var_1, -1000f, var_1))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-591f, -1138f, var_1), vec3<f32>(1000f, var_1, var_1))) + vec3<f32>(-1189f, var_1, var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 992f;
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(14597u, u_input.a, ~0u, u_input.a), ~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    let var_2 = global3[_wgslsmith_index_u32(~(~u_input.a), 31u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1(69037i))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -200f, 1000f)) - vec3<f32>(var_0, var_0, -652f)) + vec3<f32>(var_2.x, var_0, _wgslsmith_f_op_f32(max(189f, var_2.x))))));
    let var_4 = false;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -572f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(635f, -783f, var_4)), -1134f) - _wgslsmith_f_op_f32(f32(-1f) * -1470f))));
}

