struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(Struct_3(Struct_2(-864f, vec3<f32>(-1000f, 1406f, -1202f)), Struct_2(-2506f, vec3<f32>(-493f, -1191f, 339f)))), Struct_5(Struct_3(Struct_2(363f, vec3<f32>(-1048f, -1416f, 1363f)), Struct_2(1703f, vec3<f32>(2067f, 864f, -115f)))), Struct_5(Struct_3(Struct_2(1203f, vec3<f32>(-742f, -2556f, 461f)), Struct_2(-462f, vec3<f32>(721f, -1619f, 246f)))), Struct_5(Struct_3(Struct_2(277f, vec3<f32>(-1471f, 1314f, -752f)), Struct_2(-199f, vec3<f32>(-980f, -1000f, 438f)))), Struct_5(Struct_3(Struct_2(-129f, vec3<f32>(726f, -261f, -2183f)), Struct_2(106f, vec3<f32>(-1239f, -438f, -1483f)))), Struct_5(Struct_3(Struct_2(-1355f, vec3<f32>(2200f, -432f, 883f)), Struct_2(920f, vec3<f32>(-661f, -526f, -1192f)))), Struct_5(Struct_3(Struct_2(-260f, vec3<f32>(649f, -464f, -723f)), Struct_2(-251f, vec3<f32>(1908f, 1274f, 784f)))), Struct_5(Struct_3(Struct_2(-213f, vec3<f32>(-183f, -537f, 1732f)), Struct_2(-1344f, vec3<f32>(-270f, -1756f, -1668f)))), Struct_5(Struct_3(Struct_2(267f, vec3<f32>(667f, 1152f, 824f)), Struct_2(-801f, vec3<f32>(519f, -1050f, 189f)))), Struct_5(Struct_3(Struct_2(1181f, vec3<f32>(1994f, -1013f, 737f)), Struct_2(-1000f, vec3<f32>(1005f, -2422f, -485f)))), Struct_5(Struct_3(Struct_2(-801f, vec3<f32>(662f, 715f, 259f)), Struct_2(1674f, vec3<f32>(1574f, -1000f, 215f)))), Struct_5(Struct_3(Struct_2(-1000f, vec3<f32>(1157f, 609f, -457f)), Struct_2(2581f, vec3<f32>(476f, -1032f, 2724f)))), Struct_5(Struct_3(Struct_2(-186f, vec3<f32>(356f, -741f, -1938f)), Struct_2(2940f, vec3<f32>(1000f, -856f, -531f)))), Struct_5(Struct_3(Struct_2(1197f, vec3<f32>(1530f, 1228f, 698f)), Struct_2(-497f, vec3<f32>(-547f, 117f, 288f)))), Struct_5(Struct_3(Struct_2(-1120f, vec3<f32>(-416f, 791f, -1320f)), Struct_2(-2327f, vec3<f32>(493f, -1000f, 693f)))), Struct_5(Struct_3(Struct_2(1428f, vec3<f32>(-487f, 2111f, -251f)), Struct_2(-659f, vec3<f32>(1227f, -547f, 2601f)))), Struct_5(Struct_3(Struct_2(-762f, vec3<f32>(-1359f, 1000f, -1094f)), Struct_2(786f, vec3<f32>(329f, -880f, -170f)))), Struct_5(Struct_3(Struct_2(678f, vec3<f32>(1533f, 1170f, 1943f)), Struct_2(-776f, vec3<f32>(-1742f, 1002f, -1783f)))), Struct_5(Struct_3(Struct_2(797f, vec3<f32>(1000f, 1000f, -609f)), Struct_2(-498f, vec3<f32>(2120f, -334f, -904f)))), Struct_5(Struct_3(Struct_2(-2352f, vec3<f32>(-2072f, -1000f, 1012f)), Struct_2(-1890f, vec3<f32>(603f, 545f, -283f)))), Struct_5(Struct_3(Struct_2(-773f, vec3<f32>(-2007f, -958f, -1425f)), Struct_2(601f, vec3<f32>(-286f, -1174f, 2240f)))), Struct_5(Struct_3(Struct_2(182f, vec3<f32>(1327f, 1585f, 1828f)), Struct_2(748f, vec3<f32>(-233f, -988f, -588f)))), Struct_5(Struct_3(Struct_2(1465f, vec3<f32>(-225f, -963f, 1000f)), Struct_2(279f, vec3<f32>(-1215f, -938f, 1154f)))), Struct_5(Struct_3(Struct_2(1713f, vec3<f32>(673f, 1358f, 1000f)), Struct_2(-396f, vec3<f32>(546f, 374f, 1146f)))), Struct_5(Struct_3(Struct_2(-419f, vec3<f32>(1216f, 294f, 544f)), Struct_2(337f, vec3<f32>(-1991f, -1070f, 396f)))), Struct_5(Struct_3(Struct_2(-242f, vec3<f32>(-1079f, 723f, 890f)), Struct_2(1461f, vec3<f32>(1953f, -549f, -800f)))), Struct_5(Struct_3(Struct_2(-224f, vec3<f32>(593f, -264f, -550f)), Struct_2(1000f, vec3<f32>(2300f, 599f, 1205f)))), Struct_5(Struct_3(Struct_2(1030f, vec3<f32>(-865f, -1590f, 947f)), Struct_2(-323f, vec3<f32>(908f, -510f, 1297f)))));

var<private> global1: vec3<f32> = vec3<f32>(534f, -631f, 2620f);

var<private> global2: array<Struct_3, 20>;

var<private> global3: array<bool, 18>;

var<private> global4: Struct_5;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = -1340f;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, u_input.b), 28u)];
    return 1u;
}

fn func_3(arg_0: Struct_2) -> u32 {
    global2 = array<Struct_3, 20>();
    global4 = Struct_5(global4.a);
    let var_0 = global1.x;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-512f, global4.a.b.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(860f + arg_0.a), _wgslsmith_f_op_f32(190f - global4.a.b.b.x), global3[_wgslsmith_index_u32(37132u, 18u)])), _wgslsmith_f_op_f32(ceil(-206f))))));
    global1 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(global4.a.b.b.x - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(293f - _wgslsmith_f_op_f32(1432f - 494f)))), _wgslsmith_f_op_f32(abs(1000f)));
    return firstTrailingBit(firstTrailingBit(30502u)) << (~16276u % 32u);
}

fn func_1() -> f32 {
    var var_0 = global4.a.a.b;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1077f - global4.a.a.a), _wgslsmith_div_f32(var_0.x, var_0.x), 347f), global4.a.a.b)) + vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), 705f, _wgslsmith_f_op_f32(ceil(var_0.x)))), global4.a.a.b, ~(u_input.b & 1u) <= u_input.b));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1543f, -398f, global4.a.b.a, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(858f, 343f, -631f, var_0.x) + vec4<f32>(global1.x, global4.a.a.b.x, global1.x, global1.x))))), !select(select(vec4<bool>(global3[_wgslsmith_index_u32(65896u, 18u)], global3[_wgslsmith_index_u32(48488u, 18u)], true, true), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(34897u, 18u)], true)), !vec4<bool>(global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], true), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)], false)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(var_0.x + -482f), _wgslsmith_f_op_f32(global4.a.a.a + var_0.x)), vec3<f32>(global4.a.a.a, var_0.x, var_0.x)), vec3<f32>(global1.x, global1.x, var_0.x))), 28u)];
    let var_2 = 17081i;
    var var_3 = vec4<u32>(u_input.b, u_input.b, reverseBits(~func_3(Struct_2(global4.a.b.a, vec3<f32>(133f, 552f, var_0.x)))), u_input.b);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.b.b.x + global4.a.b.b.x))) * _wgslsmith_f_op_f32(func_1()));
    let var_1 = select(!vec2<bool>(false, !(global4.a.b.b.x == global4.a.b.a)), select(vec2<bool>(true, (global1.x == global1.x) & true), !select(!vec2<bool>(global3[_wgslsmith_index_u32(33905u, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)]), vec2<bool>(global3[_wgslsmith_index_u32(11628u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]), true), select(select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(28101u, 18u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 18u)], true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), global3[_wgslsmith_index_u32(u_input.b, 18u)])), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(73218u, 18u)], false), !vec2<bool>(global3[_wgslsmith_index_u32(9220u, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)]), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 18u)]))), !(!(!vec2<bool>(global3[_wgslsmith_index_u32(20284u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)])))));
    global2 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global4.a.a.a), 49019i, vec2<i32>(1i, _wgslsmith_div_i32(max(u_input.c.x, -23208i), -2147483647i)) | _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.d.x, -52850i)), u_input.c.wz));
}

