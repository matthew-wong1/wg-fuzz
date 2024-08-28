struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(2147483647i), Struct_1(-76941i), Struct_1(-1i), Struct_1(-1i), Struct_1(-12996i), Struct_1(-1i), Struct_1(-41380i), Struct_1(-18604i), Struct_1(2147483647i), Struct_1(-14748i), Struct_1(13755i), Struct_1(0i), Struct_1(-39789i), Struct_1(0i), Struct_1(-4072i), Struct_1(2147483647i), Struct_1(-10010i), Struct_1(0i), Struct_1(27885i), Struct_1(0i), Struct_1(2901i), Struct_1(2147483647i));

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(159f, Struct_1(-23073i), Struct_1(-18010i), Struct_1(-1i)), Struct_2(-1139f, Struct_1(0i), Struct_1(-36031i), Struct_1(78966i)), Struct_2(726f, Struct_1(0i), Struct_1(-19265i), Struct_1(-1i)), Struct_2(241f, Struct_1(-808i), Struct_1(47567i), Struct_1(2147483647i)), Struct_2(934f, Struct_1(-1i), Struct_1(-1i), Struct_1(0i)), Struct_2(1000f, Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-32253i)), Struct_2(118f, Struct_1(-14581i), Struct_1(-58351i), Struct_1(-57305i)), Struct_2(-1028f, Struct_1(2147483647i), Struct_1(-10930i), Struct_1(-46849i)), Struct_2(748f, Struct_1(-2771i), Struct_1(3579i), Struct_1(2147483647i)), Struct_2(942f, Struct_1(-10391i), Struct_1(-47635i), Struct_1(1i)), Struct_2(2000f, Struct_1(46829i), Struct_1(23080i), Struct_1(i32(-2147483648))), Struct_2(1559f, Struct_1(-1i), Struct_1(-1245i), Struct_1(-1i)), Struct_2(-474f, Struct_1(-20616i), Struct_1(2147483647i), Struct_1(-1i)), Struct_2(-752f, Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(28448i)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = u_input.a ^ u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1046f, -192f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-122f * 1663f)))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(565f)), 115f)), 1315f, -2299f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -307f, -325f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, 278f, -900f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1465f, -2178f, 668f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, 2387f, 466f)))))));
    global1 = array<Struct_2, 14>();
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 47890u, 21876u), vec3<u32>(1u, 1u, 1u)), 0u, 4294967295u, abs(1u)));
    global1 = array<Struct_2, 14>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(var_2 ^ _wgslsmith_div_u32(4804u, 10077u), var_2) << ((vec2<u32>(99019u << (var_2 % 32u), var_2) ^ _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_2, 82369u), vec2<u32>(30710u, var_2), true), _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_2), vec2<u32>(95360u, var_2)))) % vec2<u32>(32u)), vec2<u32>(var_2, max(1u, 1u)) | ~(_wgslsmith_mod_vec2_u32(vec2<u32>(6510u, var_2), vec2<u32>(var_2, var_2)) ^ ~vec2<u32>(0u, var_2)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = 0i;
    var var_1 = -(arg_0.x >> (abs(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 7047u)), 1u)) % 32u));
    var var_2 = true;
    var var_3 = vec4<u32>(~(~func_3()), ~firstLeadingBit(1u), ~(~select(4294967295u, 4294967295u, false) & 2654u), reverseBits(_wgslsmith_mult_u32(_wgslsmith_add_u32(~3034u, _wgslsmith_mult_u32(125446u, 0u)), 1u)));
    var var_4 = vec4<u32>(~min(var_3.x, 0u), var_3.x, firstLeadingBit(var_3.x), 4294967295u);
    return Struct_2(_wgslsmith_f_op_f32(-1464f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(749f, 936f)) * _wgslsmith_f_op_f32(floor(896f))), -413f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, var_4.x), _wgslsmith_div_vec2_u32(~(~var_4.xz), vec2<u32>(~5055u, _wgslsmith_div_u32(var_4.x, 41383u)))), 22u)], Struct_1(-2981i), Struct_1(1i));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_2(firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(-69473i, arg_0.d.a, arg_0.c.a, arg_0.c.a), -vec4<i32>(-22020i, u_input.a, -2147483647i, 10712i))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~select(vec2<u32>(0u, 0u), vec2<u32>(1u, 52414u), vec2<bool>(true, true))), vec2<u32>(~func_3(), ~1u)), ~1u);
    return func_2(~(~vec4<i32>(1i, 27943i, u_input.a, _wgslsmith_mult_i32(var_0.d.a, var_0.b.a)))).b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global1 = array<Struct_2, 14>();
    let var_0 = -arg_0.a;
    let var_1 = Struct_1(var_0 | min(~arg_1.a, -arg_1.a));
    global0 = array<Struct_1, 22>();
    var var_2 = func_1(global1[_wgslsmith_index_u32(~abs(~43939u | reverseBits(arg_2)), 14u)]);
    return func_2(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, arg_0.a, u_input.a), -vec4<i32>(47596i, 2147483647i, var_2.a, var_1.a)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    global1 = array<Struct_2, 14>();
    let var_0 = false;
    var var_1 = select(!vec2<bool>(any(!vec3<bool>(var_0, true, arg_0)), var_0 && true), !select(vec2<bool>(var_0, !var_0), vec2<bool>(!arg_0, all(vec2<bool>(true, var_0))), arg_0), 0i != ~u_input.a);
    global1 = array<Struct_2, 14>();
    var_1 = !vec2<bool>(var_0, var_0);
    return firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(43668u, 1u), 1u, min(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 96480u), vec3<u32>(11180u, 4294967295u, 0u))), ~abs(131532u)), max(1u, 19183u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(func_5(true, func_4(func_1(Struct_2(-248f, Struct_1(u_input.a), Struct_1(u_input.a), Struct_1(u_input.a))), Struct_1(1i), 47983u), global1[_wgslsmith_index_u32(~1u, 14u)], Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -524f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14884u, 1u, 26505u), vec3<u32>(37347u, 0u, 0u)), 22u)], global0[_wgslsmith_index_u32(abs(12607u), 22u)], Struct_1(-47183i))), min(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(0u, 4065u, 33327u, 1u), vec4<u32>(4294967295u, 38848u, 32988u, 4014u)), ~vec4<u32>(0u, 0u, 25840u, 1u), vec4<bool>(false, true, false, false)), vec4<u32>(~56594u, 0u, 77288u, 1u))), _wgslsmith_mult_u32(func_5(select(true, any(vec3<bool>(false, false, false)), true), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(2440u, 0u), 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]).x, ~(~(~4294967295u)))), 22u)];
    var var_1 = abs(~_wgslsmith_mod_i32(var_0.a, reverseBits(~2147483647i)));
    var var_2 = countOneBits((vec4<i32>(-1i) * -vec4<i32>(-59268i, u_input.a, u_input.a, var_0.a)) & abs(vec4<i32>(2147483647i, var_0.a, -23700i, 0i))) >> (vec4<u32>(_wgslsmith_div_u32(func_5(true, Struct_2(-1735f, Struct_1(-2147483647i), global0[_wgslsmith_index_u32(23337u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_2(464f, global0[_wgslsmith_index_u32(81756u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], Struct_1(u_input.a)), Struct_2(-1079f, Struct_1(var_0.a), global0[_wgslsmith_index_u32(24295u, 22u)], global0[_wgslsmith_index_u32(71251u, 22u)])).x ^ ~1u, countOneBits(58604u)), 1u, 1u, ~_wgslsmith_sub_u32(1u, 1u)) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) * 1799f), _wgslsmith_f_op_f32(-1231f - _wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(f32(-1f) * -1047f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-174f - 1319f), _wgslsmith_f_op_f32(-224f + 1001f))) + -109f), 242f));
    var var_4 = global1[_wgslsmith_index_u32(~1u, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_4.a, var_3.x)))), 1791f, -1928f, -807f));
}

