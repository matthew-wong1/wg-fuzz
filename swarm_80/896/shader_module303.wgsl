struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, 58344u, vec2<bool>(false, false)), Struct_1(true, 28841u, vec2<bool>(true, false)), Struct_1(true, 4294967295u, vec2<bool>(true, false)), Struct_1(true, 27760u, vec2<bool>(false, false)), Struct_1(true, 0u, vec2<bool>(false, true)), Struct_1(false, 26485u, vec2<bool>(false, false)), Struct_1(true, 10780u, vec2<bool>(false, false)), Struct_1(false, 21225u, vec2<bool>(false, true)), Struct_1(true, 11580u, vec2<bool>(true, true)), Struct_1(true, 146958u, vec2<bool>(true, true)), Struct_1(true, 1u, vec2<bool>(true, true)), Struct_1(false, 54607u, vec2<bool>(true, true)), Struct_1(true, 1u, vec2<bool>(false, true)), Struct_1(true, 62095u, vec2<bool>(true, true)), Struct_1(false, 17199u, vec2<bool>(true, false)), Struct_1(false, 1u, vec2<bool>(false, false)), Struct_1(false, 4294967295u, vec2<bool>(true, true)), Struct_1(false, 16477u, vec2<bool>(false, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    global2 = array<Struct_1, 18>();
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-461f)) + _wgslsmith_f_op_f32(arg_0.x + 548f))), select(false, !all(vec2<bool>(true, true)), false));
    return global1[_wgslsmith_index_u32(~4294967295u, 22u)];
}

fn func_3() -> u32 {
    let var_0 = -1i;
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let var_1 = vec2<bool>(any(vec4<bool>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(522f, 865f, -1529f, -257f) + vec4<f32>(831f, -1134f, -1000f, 525f)), _wgslsmith_sub_i32(var_0, -1i), _wgslsmith_clamp_u32(u_input.d.x, u_input.a, u_input.d.x)).a, !any(vec2<bool>(false, true)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, -644f, -1063f, 143f)), ~var_0, 0u).a, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))), all(global0[_wgslsmith_index_u32(max(abs(~60270u), u_input.d.x), 29u)]));
    global2 = array<Struct_1, 18>();
    return _wgslsmith_div_u32(~(~(~u_input.d.x)) | _wgslsmith_dot_vec3_u32(~abs(u_input.d.xxz), ~u_input.d.yyz), _wgslsmith_clamp_u32(~u_input.a, u_input.d.x, select(u_input.d.x, abs(u_input.d.x), false)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -227f, 617f, 144f) - vec4<f32>(865f, -1000f, -1736f, -321f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1071f, 961f, 870f, -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(-175f + _wgslsmith_f_op_f32(step(-314f, 1036f))), 111f, -1932f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1111f, -233f))))), -8345i, 1u);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1171f, -781f, -2028f, -679f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 1188f, -555f, -1179f)), vec4<f32>(-1970f, -1542f, -716f, -1306f), u_input.b == arg_0)))), reverseBits(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -2147483647i, arg_1, arg_1), vec4<i32>(-64805i, u_input.e.x, 10985i, u_input.c)))), _wgslsmith_add_u32(func_3(), 4294967295u));
    let var_2 = Struct_1(var_1.a, countOneBits(~(~(~var_1.b))), arg_2.zz);
    global1 = array<Struct_1, 22>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-598f + _wgslsmith_div_f32(712f, -378f)))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 14059u & ~min(abs(u_input.d.x) ^ func_1(u_input.e.x, -31176i, vec3<bool>(true, false, true)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 45455u, u_input.d.x, 1u)), vec4<u32>(1u, u_input.a, u_input.d.x, u_input.d.x)));
    var var_1 = vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_2 = global1[_wgslsmith_index_u32(var_0, 22u)];
    global2 = array<Struct_1, 18>();
    var_1 = vec2<bool>(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1614f, -163f, 1000f, -438f), vec4<f32>(1203f, -202f, 1000f, 232f)))), min(-_wgslsmith_clamp_i32(-1i, u_input.e.x, u_input.c), ~(u_input.e.x >> (var_0 % 32u))), 3531u).c.x, var_2.a);
    global0 = array<vec4<bool>, 29>();
    var var_3 = 39795i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c), -593f, u_input.d.ywz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1155f + 1000f))) * _wgslsmith_f_op_f32(step(-1520f, _wgslsmith_f_op_f32(f32(-1f) * -347f)))));
}

