struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
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

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(0u, 9439u), vec2<u32>(1u, 1u), vec2<u32>(21593u, 38403u), vec2<u32>(0u, 30630u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6141u, 98595u), vec2<u32>(6790u, 36584u), vec2<u32>(42755u, 74763u), vec2<u32>(38305u, 11104u), vec2<u32>(0u, 604u), vec2<u32>(85541u, 32972u), vec2<u32>(22100u, 60368u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(36854u, 30184u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 13753u), vec2<u32>(26838u, 61441u), vec2<u32>(45090u, 1u), vec2<u32>(13249u, 0u), vec2<u32>(7290u, 4294967295u), vec2<u32>(18785u, 48393u));

var<private> global1: array<u32, 22>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    var var_0 = 4294967295u;
    return abs(global1[_wgslsmith_index_u32(~0u, 22u)]);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = min(~vec3<u32>(~func_3(-449f, Struct_3(true, Struct_2(Struct_1(vec4<i32>(arg_0, u_input.c, 1i, -26597i), -758f, vec2<f32>(584f, 578f), 1378f))), 41980u, vec2<f32>(1712f, -946f)), firstTrailingBit(40216u), ~_wgslsmith_sub_u32(u_input.a.x, 4294967295u)), ~u_input.a);
    let var_1 = Struct_2(Struct_1(~firstTrailingBit(abs(vec4<i32>(-1i, u_input.c, arg_0, 2147483647i))), -299f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-605f, -1083f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1477f, 547f) + vec2<f32>(-1542f, -384f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, 1971f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(914f * 918f) - 2001f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-363f, -1000f))))));
    let var_2 = u_input.b;
    global0 = array<vec2<u32>, 22>();
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    global0 = array<vec2<u32>, 22>();
    var var_0 = 61417i;
    let var_1 = Struct_3(true, Struct_2(func_2(~_wgslsmith_mod_i32(0i, arg_1.a.a.x)).a));
    var var_2 = !(!select(!vec4<bool>(false, true, var_1.a, var_1.a), vec4<bool>(var_1.a | var_1.a, var_1.a, true, true), var_1.a));
    var var_3 = !(!(abs(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43204u, 22u)], 22u)], 22u)]) >= 1u));
    return _wgslsmith_mod_i32(i32(-1i) * -1i, 1i);
}

fn func_1() -> f32 {
    var var_0 = false;
    var var_1 = -u_input.c;
    var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.c | u_input.c), vec2<i32>(func_4(vec3<i32>(-39585i, u_input.c, 1i), func_2(u_input.c)), ~(-35939i))) <= (u_input.c >> ((~(~4294967295u) >> (select(4294967295u, ~1u, all(vec2<bool>(true, false))) % 32u)) % 32u));
    var var_2 = !(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    var var_3 = u_input.b;
    return _wgslsmith_f_op_f32(min(-720f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) * -1055f)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(all(vec2<bool>(true, select(false, true, false) | false)), func_2(reverseBits(_wgslsmith_mod_i32(func_4(vec3<i32>(-8805i, 29348i, 1i), Struct_2(Struct_1(vec4<i32>(-2147483647i, arg_2.a.x, 1i, 36019i), -915f, vec2<f32>(121f, 1351f), arg_1.b))), -arg_1.a.x))));
    var var_1 = var_0.a;
    var var_2 = vec2<i32>(0i, 23227i);
    var var_3 = _wgslsmith_f_op_f32(func_1()) < arg_2.d;
    let var_4 = Struct_3(var_0.a, func_2(-45523i));
    return func_2(-1i).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 22>();
    var var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(954f, _wgslsmith_f_op_f32(ceil(837f))), true)), Struct_1(-select(vec4<i32>(-2147483647i, u_input.c, 2147483647i, -67487i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, -1224f))), _wgslsmith_f_op_f32(f32(-1f) * -422f)), Struct_1(vec4<i32>(~u_input.c, _wgslsmith_mod_i32(2147483647i, u_input.c), max(u_input.c, 30969i), u_input.c | 61630i), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(790f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f * 381f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.d, -1085f, -2448f, -842f), vec4<f32>(-1023f, 696f, var_0.a.b, 550f), false))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1071f, var_0.a.d, 1605f, 180f), vec4<f32>(var_0.a.b, 1123f, var_0.a.d, var_0.a.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, -725f, var_0.a.d, -524f) + vec4<f32>(var_0.a.b, var_0.a.b, 2588f, 504f))))) - vec4<f32>(var_0.a.d, var_0.a.b, var_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.b)) - _wgslsmith_div_f32(var_0.a.c.x, var_0.a.d)))));
}

