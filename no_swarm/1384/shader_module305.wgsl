struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(33933i), Struct_2(2147483647i), Struct_2(28697i), Struct_2(1i), Struct_2(1133i), Struct_2(2147483647i), Struct_2(12678i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(0i), Struct_2(0i), Struct_2(41451i), Struct_2(-15136i), Struct_2(3877i), Struct_2(-32501i), Struct_2(-1i), Struct_2(4901i), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(23859i), Struct_2(2958i), Struct_2(1i), Struct_2(2147483647i), Struct_2(50427i), Struct_2(-8042i), Struct_2(-42711i));

var<private> global2: f32 = -188f;

var<private> global3: array<u32, 23>;

var<private> global4: Struct_4 = Struct_4(-787f, -1139f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    global2 = global4.b;
    var var_0 = vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(arg_1.e.x, arg_1.e.x), ~(~(~_wgslsmith_div_i32(arg_1.c, 2147483647i))));
    let var_1 = vec3<f32>(global4.b, 176f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-692f, 1371f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(707f, -1604f), global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))), var_1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1542f, var_1.x, _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(ceil(-620f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_2, var_1.x, -1758f))))));
    let var_3 = _wgslsmith_f_op_f32(abs(1f));
    return vec4<bool>(any(!arg_1.a), false, all(arg_1.a.ww), !(arg_1.a.x || (1u >= global3[_wgslsmith_index_u32(4294967295u ^ u_input.a, 23u)])));
}

fn func_2() -> Struct_1 {
    global3 = array<u32, 23>();
    var var_0 = global4.a;
    let var_1 = -abs(vec4<i32>(1i, 1i, 1i, 1i)) | (vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2709i, 1i), vec2<i32>(-11654i, -23426i)), 24718i), 12943i, firstTrailingBit(0i), 2147483647i) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 21139u, 46288u, 3311u) << (vec4<u32>(u_input.a, 4294967295u, 0u, 9073u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 837u, 0u, 71646u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(sign(global4.a));
    global2 = global4.a;
    return Struct_1(select(select(func_3(0i, Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(global4.b, -1037f), var_1.x, vec2<f32>(-1008f, global4.b), var_1), _wgslsmith_f_op_f32(f32(-1f) * -1065f), Struct_4(global4.b, global4.a)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), select(true, any(vec3<bool>(false, false, true)), u_input.a != u_input.a)), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), all(func_3(var_1.x, Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(global4.a, 716f), -2147483647i, vec2<f32>(global4.b, global4.a), var_1), 1148f, Struct_4(520f, 1046f)))), all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, 255f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, global4.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1246f, global4.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b, 1065f) - vec2<f32>(-690f, 246f))))), _wgslsmith_div_i32(var_1.x, countOneBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.x, 32982i), ~var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a, -803f)))) * vec2<f32>(_wgslsmith_f_op_f32(global4.b * 195f), global4.a))), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 0i, var_1.x, -2147483647i), vec4<i32>(var_1.x, var_1.x, -10312i, var_1.x)) & firstTrailingBit(var_1)));
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_3(min(abs(vec4<u32>(u_input.a, firstTrailingBit(u_input.a), ~40404u, abs(1u))), ~(firstTrailingBit(vec4<u32>(30702u, global3[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, 13880u)) | ~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 20694u, global3[_wgslsmith_index_u32(69902u, 23u)]))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(1u), countOneBits(_wgslsmith_add_u32(56962u, global3[_wgslsmith_index_u32(0u, 23u)]))), ~(~_wgslsmith_mult_u32(32857u, u_input.a))), 29u)]);
    let var_2 = !(!all(!var_0.a)) & (all(vec3<bool>(var_0.a.x, false, var_0.a.x)) | (countOneBits(65025u) < _wgslsmith_div_u32(33055u, u_input.a)));
    global4 = Struct_4(global4.b, -518f);
    return abs(countOneBits(vec4<i32>(abs(max(-1890i, var_0.c)), var_1.b.a, 2985i, var_1.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2103f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.a, 1057f))))))), var_0, _wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global4.a, _wgslsmith_f_op_f32(global4.b - var_0))))));
    global3 = array<u32, 23>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1016f, var_1.x)) - _wgslsmith_f_op_f32(select(257f, _wgslsmith_f_op_f32(f32(-1f) * -633f), true)));
    var var_3 = Struct_1(!vec4<bool>(select(true, true, all(vec4<bool>(false, true, false, false))), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(231f * -915f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zx + vec2<f32>(-660f, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.wz - var_1.ww) - _wgslsmith_f_op_vec2_f32(-var_1.wx))), true)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -73281i), abs(-vec2<i32>(-2147483647i, 24578i))), var_1.yy, func_1());
    var var_4 = !(!vec4<bool>(false, true, true, all(var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 23u)], 509f);
}

