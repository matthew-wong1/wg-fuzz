struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, false, true, true, true, true, true, true, true, true, true, false, true, false, true, false, false, true, true, false, false, true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> bool {
    let var_0 = Struct_2(1f, !(!global0[_wgslsmith_index_u32(u_input.b, 24u)] || (u_input.c != 30682i)) && global0[_wgslsmith_index_u32((4294967295u << (u_input.b % 32u)) | u_input.a.x, 24u)]);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))));
    let var_2 = true;
    global0 = array<bool, 24>();
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let var_0 = func_2();
    global0 = array<bool, 24>();
    var var_1 = 0i;
    return arg_3;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-256f, arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.a, arg_1.a))))));
    let var_1 = !(!vec4<bool>(min(arg_2, 51927i) != 1i, true | (2650u > u_input.a.x), all(select(vec2<bool>(true, arg_0.a), vec2<bool>(true, true), true)), arg_0.a));
    var_0 = -1000f;
    let var_2 = arg_1;
    let var_3 = vec2<u32>(4294967295u ^ (~(~u_input.b) ^ (u_input.a.x ^ (0u << (u_input.a.x % 32u)))), 4294967295u);
    return !var_1.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(u_input.a.x, 0u) << (~u_input.a.x % 32u)), 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(557f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(321f, 1157f), _wgslsmith_f_op_f32(min(-1000f, 495f))))) + -378f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1192f, 104f) + vec2<f32>(960f, -127f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1466f, -1000f), vec2<f32>(-1514f, 1000f), global0[_wgslsmith_index_u32(u_input.b, 24u)]))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * -1000f), false));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f - -563f)) + _wgslsmith_f_op_f32(round(170f)))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~0u), min(~abs(22699u), abs(u_input.b))), 24u)]);
    let var_1 = -(reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-39879i, u_input.c, -12613i), vec3<i32>(8242i, -12769i, 2147483647i)), u_input.c, u_input.c, _wgslsmith_sub_i32(42305i, -3877i))) ^ vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, 18921i), abs(u_input.c)), countOneBits(u_input.c) >> ((u_input.b | 50476u) % 32u), ~(-1i), u_input.c));
    var var_2 = any(func_3(Struct_1(false), func_1(Struct_1(global0[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_f_op_f32(trunc(var_0.a)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-642f * 1045f)), func_1(Struct_1(false), var_0.a, vec2<f32>(-2863f, var_0.a), Struct_2(180f, false))), ~62343i));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1539f, 316f)) + -1438f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(256f)) * _wgslsmith_f_op_f32(exp2(var_0.a))))), true);
    global0 = array<bool, 24>();
    let var_3 = _wgslsmith_mult_i32(-(~18935i), _wgslsmith_mod_i32(u_input.c ^ -1i, u_input.c));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))), !(!(!var_0.b)));
    let var_5 = _wgslsmith_sub_i32(-2147483647i, 0i ^ _wgslsmith_clamp_i32(19310i, -24196i, abs(var_1.x) >> ((u_input.b & u_input.b) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 519f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(730f, var_0.a)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, -194f)))))))), var_1.yz, var_1);
}

