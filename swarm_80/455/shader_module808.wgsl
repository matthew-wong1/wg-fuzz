struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global1: array<i32, 13> = array<i32, 13>(-21334i, 2999i, 1i, 21638i, i32(-2147483648), 0i, 1i, i32(-2147483648), 1i, 16274i, -27138i, 8875i, -15611i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, -1532f, 793f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-432f, -548f, -1145f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(972f, 248f, 871f))))), select(_wgslsmith_mult_i32(-(global1[_wgslsmith_index_u32(0u, 13u)] << (60334u % 32u)), ~u_input.a.x >> (countOneBits(0u) % 32u)), -1i | global1[_wgslsmith_index_u32(~0u >> (_wgslsmith_mult_u32(99950u, 0u) % 32u), 13u)], all(vec3<bool>(true, true, true)) != true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(894f, 1000f, 1332f) + vec3<f32>(-414f, 1000f, -469f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(553f, 586f, -264f)) * vec3<f32>(_wgslsmith_f_op_f32(-1080f - -1000f), _wgslsmith_f_op_f32(-333f + -791f), _wgslsmith_f_op_f32(-858f - 305f)))));
    let var_1 = !(!vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), true));
    global1 = array<i32, 13>();
    return _wgslsmith_mod_u32(~min(~4294967295u, 1u), 1u) << (1u % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    global1 = array<i32, 13>();
    let var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_1), vec3<u32>(arg_1, 1u, 32374u)), arg_1, _wgslsmith_add_u32(arg_1, 1u), _wgslsmith_div_u32(arg_1, 36360u)), vec4<u32>(~func_3(), _wgslsmith_div_u32(arg_1, ~arg_1), arg_1, arg_1));
    let var_1 = global0[_wgslsmith_index_u32(37226u, 26u)];
    var var_2 = firstTrailingBit(reverseBits(global1[_wgslsmith_index_u32(arg_1 >> (arg_1 % 32u), 13u)]));
    global0 = array<Struct_2, 26>();
    return true;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = -15271i;
    return select(vec4<bool>((any(vec3<bool>(true, false, false)) | true) && any(vec3<bool>(true, true, false)), false, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true && !func_2(Struct_1(vec3<f32>(arg_0, -1257f, arg_0), 53175i, vec3<f32>(arg_0, arg_0, arg_0)), 39869u)), vec4<bool>(true, all(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, true)) | true, false), _wgslsmith_dot_vec3_i32(u_input.a.yxx, vec3<i32>(var_0, ~14973i, 5346i)) <= var_0);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = !arg_0;
    var var_1 = 1000f;
    global1 = array<i32, 13>();
    var_1 = 226f;
    var var_2 = select(false, var_0.x, true);
    return Struct_2(!(!arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    let var_0 = func_4(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true)), func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(714f, 140f) * _wgslsmith_f_op_f32(sign(804f)))), !vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(0u, 13u)] < u_input.a.x)), vec2<bool>(true, true), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), true));
    var var_1 = !vec2<bool>(true, var_0.a);
    var_1 = vec2<bool>(true, ~1u <= select(~(45164u >> (1u % 32u)), 0u, !var_0.a | (false && var_0.a)));
    var_1 = vec2<bool>(var_0.a, var_0.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(198f, _wgslsmith_f_op_f32(f32(-1f) * -771f)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1138f, -1299f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1776f, -1501f)))))))));
    let var_3 = _wgslsmith_f_op_f32(-912f - _wgslsmith_f_op_f32(exp2(var_2.x)));
    global1 = array<i32, 13>();
    let var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, ~(~global1[_wgslsmith_index_u32(1u, 13u)])), ~countOneBits(u_input.a.x), 0i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3 + 1198f))) * _wgslsmith_f_op_f32(floor(-309f))), 1587f, _wgslsmith_f_op_f32(-var_2.x), var_3));
}

