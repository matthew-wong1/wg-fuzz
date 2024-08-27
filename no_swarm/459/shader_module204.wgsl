struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 17>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_2.x;
    var var_1 = 4294967295u;
    let var_2 = ~arg_1.x;
    let var_3 = 0u;
    global2 = array<Struct_1, 17>();
    return u_input.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    let var_0 = arg_0.yxw;
    global0 = array<Struct_1, 8>();
    global2 = array<Struct_1, 17>();
    let var_1 = Struct_1(abs(min(-vec4<i32>(1i, 1i, 29685i, 34612i), -select(vec4<i32>(14067i, 1i, 12986i, -8918i), vec4<i32>(-9148i, 0i, -1i, 48647i), arg_0))), -164f, min(abs(~1i), i32(-1i) * -45899i), select(!arg_0.x, arg_0.x & true, !(!all(vec4<bool>(true, var_0.x, false, false)))), _wgslsmith_f_op_f32(1122f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1493f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(145f, 1673f)))), true))));
    global1 = _wgslsmith_f_op_f32(trunc(1030f));
    return 47137u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    var var_0 = false;
    var var_1 = ~abs(~(u_input.a ^ arg_1.x)) | func_4(vec4<bool>(arg_0.d, true, all(select(vec3<bool>(arg_2.d, arg_0.d, false), vec3<bool>(arg_2.d, false, true), vec3<bool>(true, true, true))), all(!vec4<bool>(true, arg_2.d, arg_0.d, true))), max(~firstTrailingBit(5012u), abs(u_input.a) >> (func_3(vec4<bool>(true, false, false, true), arg_1.zz, vec4<f32>(arg_0.e, arg_2.e, -315f, -251f)) % 32u)));
    global1 = _wgslsmith_f_op_f32(-arg_2.e);
    global0 = array<Struct_1, 8>();
    let var_2 = Struct_1(countOneBits(arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.e, arg_0.b)) + 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - 409f))) * arg_0.b), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-23640i, 1i, arg_2.c), vec3<i32>(-60584i, -1i, arg_2.a.x)), vec3<i32>(92467i, -6851i, arg_0.c) | vec3<i32>(1i, arg_0.c, 0i), vec3<i32>(arg_2.c, -26656i, arg_0.a.x)) & countOneBits(arg_2.a.ywy), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.c, arg_0.a.x, -1i), abs(arg_2.a.xxx)), select(vec3<i32>(1i, -2213i, 33055i), vec3<i32>(22112i, arg_2.c, arg_0.c), true) & -arg_2.a.wyx, _wgslsmith_sub_vec3_i32(arg_0.a.ywz, countOneBits(vec3<i32>(-36602i, -2147483647i, arg_2.a.x))))), true, arg_0.e);
    return arg_2.d;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec4<bool> {
    global2 = array<Struct_1, 17>();
    global0 = array<Struct_1, 8>();
    global1 = _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(arg_1 + arg_0.e)));
    global0 = array<Struct_1, 8>();
    let var_0 = true;
    return !select(vec4<bool>(var_0, !all(vec3<bool>(true, false, arg_0.d)), true, arg_0.d), vec4<bool>(all(vec4<bool>(arg_0.d, var_0, false, true)) && (var_0 || false), true, func_2(Struct_1(arg_0.a, -407f, -1i, arg_0.d, arg_0.b), vec4<u32>(arg_2, 1u, u_input.b, u_input.c), Struct_1(vec4<i32>(-1i, -43524i, 1854i, 36346i), 2337f, 42036i, false, 254f)), !arg_0.d), !vec4<bool>(arg_0.d, true, false, arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(global2[_wgslsmith_index_u32(u_input.d, 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1471f)), reverseBits(0u)));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(max(min(~vec3<u32>(4294967295u, u_input.c, 9194u), vec3<u32>(1u, 29374u, u_input.c)), vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.d), 1u | u_input.a, ~4294967295u)), vec3<u32>(11734u, u_input.a, select(_wgslsmith_mult_u32(53881u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, u_input.d)), func_2(Struct_1(vec4<i32>(34275i, 10805i, 2147483647i, 14271i), 611f, 3214i, true, 497f), vec4<u32>(u_input.d, 51972u, 4294967295u, 10919u), Struct_1(vec4<i32>(14486i, 0i, 11563i, 2147483647i), -643f, 375i, false, -423f)))), max(vec3<u32>(~27685u, ~u_input.c, reverseBits(5540u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 62611u)))), ~(~countOneBits(min(vec3<u32>(10976u, 38322u, 45858u), vec3<u32>(0u, u_input.a, u_input.a)))));
    global2 = array<Struct_1, 17>();
    global0 = array<Struct_1, 8>();
    global2 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.d, 0u), vec3<u32>(4294967295u, 60828u, 1u)), _wgslsmith_mult_u32(u_input.a, u_input.c)), firstTrailingBit(abs(u_input.a))), ~(~13310u), 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1668f, _wgslsmith_f_op_f32(max(-245f, 1075f)), _wgslsmith_f_op_f32(-660f - _wgslsmith_f_op_f32(841f - 893f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(440f, -274f)))), ~(-17305i));
}

