struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<f32>, 2>;

var<private> global2: array<f32, 3> = array<f32, 3>(1762f, -1384f, 1377f);

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1000f), Struct_1(1363f), Struct_1(-1030f), Struct_1(-605f), Struct_1(-787f), Struct_1(901f), Struct_1(1000f), Struct_1(696f), Struct_1(-1266f), Struct_1(590f), Struct_1(809f), Struct_1(-1003f), Struct_1(-413f), Struct_1(-1511f), Struct_1(-152f), Struct_1(215f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global2 = array<f32, 3>();
    global0 = vec2<u32>(1u, arg_2.x);
    global2 = array<f32, 3>();
    var var_0 = -787f;
    var var_1 = 1u;
    return 50046u;
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~global0.x)), 16u)];
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-766f)), var_0.a));
    let var_2 = vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, all(vec4<bool>(true, true, true, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))))), any(vec2<bool>(true, true)));
    global2 = array<f32, 3>();
    var var_3 = _wgslsmith_f_op_f32(511f * 129f);
    return var_2;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    global2 = array<f32, 3>();
    global2 = array<f32, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(-2265f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-504f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1009f)))))));
    var_0 = arg_1.c;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global2[_wgslsmith_index_u32(global0.x, 3u)])) + _wgslsmith_f_op_f32(arg_1.c.a * 363f))));
    return min(select(1i, 1i, arg_1.b), -32523i);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(763f)));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(func_1(Struct_2(vec3<f32>(668f, 281f, -1660f), true, global3[_wgslsmith_index_u32(3964u, 16u)], global3[_wgslsmith_index_u32(global0.x, 16u)]), func_3(vec2<i32>(0i, 54804i)), _wgslsmith_sub_vec2_u32(u_input.a.yy, u_input.a.ww), global3[_wgslsmith_index_u32(~u_input.a.x, 16u)]), 3u)], _wgslsmith_f_op_f32(var_0.a - 1176f))), Struct_2(vec3<f32>(-263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-424f))), _wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(var_0.a - -1000f))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), global3[_wgslsmith_index_u32(~1u, 16u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 15297u, u_input.a.x), u_input.a.yzw) % 32u), ~(~global0.x), global0.x), 16u)]));
    var var_2 = false;
    var var_3 = vec3<u32>(firstTrailingBit(46729u), 15281u, global0.x);
    let var_4 = !func_3(-_wgslsmith_add_vec2_i32(max(vec2<i32>(var_1, 20823i), vec2<i32>(7750i, 2147483647i)), select(vec2<i32>(-15013i, 33850i), vec2<i32>(var_1, 23757i), false))).xyx;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-484f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, 39480u, 12504u, global0.x) & vec4<u32>(u_input.a.x, 0u, 0u, 19095u)), 3u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_1(Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 2007f, -1000f), true, global3[_wgslsmith_index_u32(51386u, 16u)], Struct_1(946f)), vec4<bool>(false, false, true, true), u_input.a.wz, Struct_1(-1000f)), 3u)])) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)], -288f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-604f, 569f, global2[_wgslsmith_index_u32(global0.x, 3u)])))))))), (func_2(-1184f) || func_3(vec2<i32>(-35212i, 2147483647i)).x) || (any(vec4<bool>(false, true, false, false)) | !(global2[_wgslsmith_index_u32(0u, 3u)] < -332f)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(~0u)), min(min(global0.x, global0.x), ~u_input.a.x), max(_wgslsmith_dot_vec2_u32(u_input.a.zz >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), min(u_input.a.ww, vec2<u32>(1u, global0.x))), global0.x)), 16u)], Struct_1(_wgslsmith_f_op_f32(round(425f))));
    var var_1 = Struct_2(vec3<f32>(var_0.a.x, var_0.d.a, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~26723u, 3u)]))), any(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, var_0.b, true), var_0.b), vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(var_0.b, var_0.b, false, true))), var_0.d, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 3u)])))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-var_1.d.a))))));
    let var_3 = var_0.c;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~global0.x, 3u)] + _wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a + var_3.a)), var_1.b || true))));
    var var_5 = Struct_2(var_1.a, func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a)))))), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 3u)] + var_4.a)), Struct_1(global2[_wgslsmith_index_u32(24309u, 3u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(26029i << (global0.x % 32u)) | reverseBits(func_4(var_1.a.yz, Struct_2(vec3<f32>(var_0.c.a, var_3.a, 1311f), false, global3[_wgslsmith_index_u32(u_input.a.x, 16u)], var_4))), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-23961i, 1i, 11013i, 14503i), vec4<i32>(2147483647i, 1i, -1i, -30035i)))), u_input.a, var_1.d.a, 0i);
}

