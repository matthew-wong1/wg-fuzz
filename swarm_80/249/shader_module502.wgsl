struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(48096u, 2017u, 4294967295u), true, 0u, vec3<f32>(205f, -1000f, -1593f), vec3<f32>(-240f, 1221f, -1000f)), Struct_1(vec3<u32>(86404u, 4294967295u, 4294967295u), false, 38283u, vec3<f32>(480f, -624f, 123f), vec3<f32>(-345f, -1215f, -212f)), Struct_1(vec3<u32>(36010u, 1u, 1u), true, 12950u, vec3<f32>(-1398f, 1236f, 231f), vec3<f32>(-2077f, 367f, -465f)), Struct_1(vec3<u32>(28463u, 61078u, 1u), false, 16258u, vec3<f32>(403f, 1159f, -947f), vec3<f32>(1000f, -940f, -500f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 9568u), true, 1u, vec3<f32>(-730f, -688f, 1559f), vec3<f32>(-1000f, 1588f, 883f)), Struct_1(vec3<u32>(4294967295u, 16687u, 2212u), false, 1u, vec3<f32>(1575f, -830f, -1897f), vec3<f32>(2133f, -811f, -465f)), Struct_1(vec3<u32>(0u, 0u, 0u), false, 0u, vec3<f32>(463f, 683f, 443f), vec3<f32>(1257f, -294f, 353f)), Struct_1(vec3<u32>(1u, 10565u, 10937u), false, 1u, vec3<f32>(-1000f, 973f, 609f), vec3<f32>(302f, -1440f, -1119f)));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<u32>(0u, 0u, 57274u), false, 1u, vec3<f32>(-318f, 751f, -1000f), vec3<f32>(503f, -1540f, -173f)), Struct_1(vec3<u32>(0u, 35526u, 58985u), false, 22412u, vec3<f32>(778f, -1000f, -630f), vec3<f32>(-1000f, -1000f, -217f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 16923u), true, 57418u, vec3<f32>(1000f, -836f, 171f), vec3<f32>(-1331f, 987f, 699f)), Struct_1(vec3<u32>(105022u, 0u, 11046u), false, 14525u, vec3<f32>(733f, -1207f, -647f), vec3<f32>(-932f, 829f, -273f)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), false, 76786u, vec3<f32>(-1000f, -1151f, -537f), vec3<f32>(-252f, 616f, -1618f)), Struct_1(vec3<u32>(17557u, 4117u, 4294967295u), false, 6247u, vec3<f32>(-593f, 669f, -654f), vec3<f32>(-1459f, 766f, 573f)), Struct_1(vec3<u32>(0u, 7815u, 4294967295u), false, 0u, vec3<f32>(-1306f, -1000f, 2963f), vec3<f32>(-160f, -923f, 577f)), Struct_1(vec3<u32>(35638u, 4294967295u, 11956u), true, 51236u, vec3<f32>(-134f, 676f, 1056f), vec3<f32>(-1000f, 198f, 1235f)), Struct_1(vec3<u32>(0u, 35266u, 47034u), true, 7023u, vec3<f32>(222f, -182f, -519f), vec3<f32>(121f, -1811f, -820f)), Struct_1(vec3<u32>(39647u, 21122u, 62763u), false, 69909u, vec3<f32>(-808f, -221f, 245f), vec3<f32>(-607f, -982f, -334f)), Struct_1(vec3<u32>(28725u, 1u, 43199u), false, 1u, vec3<f32>(-1347f, -1489f, -146f), vec3<f32>(1000f, -896f, 1369f)), Struct_1(vec3<u32>(1u, 4294967295u, 79116u), true, 22272u, vec3<f32>(-416f, -1198f, -971f), vec3<f32>(687f, 363f, 850f)), Struct_1(vec3<u32>(29663u, 94820u, 9797u), true, 4294967295u, vec3<f32>(-1298f, 1000f, 1000f), vec3<f32>(-2269f, -1306f, 281f)), Struct_1(vec3<u32>(1u, 4294967295u, 47298u), true, 50023u, vec3<f32>(414f, -599f, -524f), vec3<f32>(-548f, 1524f, -895f)), Struct_1(vec3<u32>(0u, 1u, 3124u), false, 67786u, vec3<f32>(-1427f, 1000f, 520f), vec3<f32>(530f, -963f, -1222f)), Struct_1(vec3<u32>(1u, 19464u, 69399u), false, 14331u, vec3<f32>(490f, 815f, 596f), vec3<f32>(-1000f, 1248f, -135f)), Struct_1(vec3<u32>(75241u, 0u, 1u), true, 0u, vec3<f32>(1245f, -1317f, 665f), vec3<f32>(-1000f, 502f, 710f)), Struct_1(vec3<u32>(910u, 45335u, 0u), false, 0u, vec3<f32>(-385f, 343f, 432f), vec3<f32>(1339f, -302f, 1000f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 32961u), false, 56452u, vec3<f32>(-622f, 1000f, -2124f), vec3<f32>(-535f, -283f, -1947f)), Struct_1(vec3<u32>(99256u, 4294967295u, 0u), true, 0u, vec3<f32>(-872f, 2081f, 2337f), vec3<f32>(-337f, 1000f, 567f)), Struct_1(vec3<u32>(1u, 27899u, 0u), true, 0u, vec3<f32>(100f, 131f, -1000f), vec3<f32>(1000f, -645f, 1196f)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), true, 64546u, vec3<f32>(675f, 571f, 107f), vec3<f32>(348f, 224f, -385f)), Struct_1(vec3<u32>(71418u, 56025u, 71884u), false, 62986u, vec3<f32>(1000f, -186f, 1316f), vec3<f32>(131f, -234f, 598f)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), false, 0u, vec3<f32>(-462f, 786f, 1274f), vec3<f32>(-832f, 136f, -502f)), Struct_1(vec3<u32>(21358u, 25496u, 23215u), false, 1u, vec3<f32>(-529f, -1749f, 1565f), vec3<f32>(1317f, 590f, -826f)), Struct_1(vec3<u32>(59681u, 4294967295u, 1u), true, 36867u, vec3<f32>(1000f, 262f, -342f), vec3<f32>(-163f, -2220f, -488f)), Struct_1(vec3<u32>(34717u, 74337u, 0u), true, 0u, vec3<f32>(-1036f, -1101f, -1000f), vec3<f32>(1084f, -1533f, 732f)), Struct_1(vec3<u32>(92403u, 4952u, 45760u), false, 16826u, vec3<f32>(-707f, 1212f, -521f), vec3<f32>(-678f, -2345f, -179f)), Struct_1(vec3<u32>(0u, 28272u, 28741u), true, 7824u, vec3<f32>(1869f, 1000f, -630f), vec3<f32>(-1684f, -655f, -367f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 48163u), true, 52795u, vec3<f32>(875f, -1919f, 582f), vec3<f32>(1662f, 1000f, -393f)), Struct_1(vec3<u32>(0u, 44445u, 4294967295u), false, 6045u, vec3<f32>(1000f, 274f, 139f), vec3<f32>(-2095f, 685f, 407f)), Struct_1(vec3<u32>(51115u, 70134u, 1u), false, 1u, vec3<f32>(-859f, -1000f, -1715f), vec3<f32>(805f, -447f, -1148f)));

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(36459u, 60691u), vec2<u32>(951u, 78459u), vec2<u32>(1u, 1u), vec2<u32>(59828u, 1116u), vec2<u32>(11030u, 19994u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 21418u), vec2<u32>(111635u, 1u), vec2<u32>(23567u, 65069u), vec2<u32>(12687u, 32313u), vec2<u32>(0u, 50006u), vec2<u32>(11613u, 0u), vec2<u32>(34069u, 0u), vec2<u32>(1u, 32105u), vec2<u32>(4294967295u, 38799u), vec2<u32>(0u, 0u), vec2<u32>(0u, 28083u), vec2<u32>(25124u, 19870u), vec2<u32>(30504u, 1u), vec2<u32>(51446u, 36891u), vec2<u32>(4294967295u, 78649u), vec2<u32>(8120u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(26602u, 4294967295u));

var<private> global3: array<i32, 28> = array<i32, 28>(i32(-2147483648), 33136i, -1i, 34046i, 14543i, -40983i, -17444i, 35212i, 0i, 0i, 1i, -16488i, 23462i, i32(-2147483648), 24660i, 62291i, -52974i, i32(-2147483648), 8136i, 0i, -1i, 28524i, 29796i, -2206i, 0i, i32(-2147483648), 2147483647i, i32(-2147483648));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 32>();
    let var_0 = Struct_1(~(~select(arg_1.a, vec3<u32>(21592u, u_input.a, arg_1.c) >> (vec3<u32>(0u, arg_1.a.x, arg_1.a.x) % vec3<u32>(32u)), true)), any(!select(!vec2<bool>(false, arg_1.b), !vec2<bool>(arg_1.b, true), !vec2<bool>(arg_1.b, true))), 3693u, vec3<f32>(176f, _wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - arg_0)), arg_1.e);
    var var_1 = global0[_wgslsmith_index_u32(max(4294967295u, ~arg_1.a.x), 8u)];
    let var_2 = arg_1.d.xy;
    let var_3 = Struct_1(_wgslsmith_div_vec3_u32(~arg_1.a, abs(max(arg_1.a, vec3<u32>(arg_1.c, 1u, u_input.a) ^ var_0.a))), true, _wgslsmith_mod_u32(1u, (~u_input.a & var_1.c) & firstLeadingBit(39745u)), var_0.d, arg_1.d);
    return select(!(!(!(!vec2<bool>(var_0.b, var_1.b)))), !(!(!(!vec2<bool>(var_3.b, var_3.b)))), vec2<bool>(arg_1.b, var_1.b));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: u32) -> vec2<u32> {
    global2 = array<vec2<u32>, 25>();
    var var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))), global1[_wgslsmith_index_u32(30018u, 32u)], ~(-(~(vec2<i32>(global3[_wgslsmith_index_u32(10308u, 28u)], global3[_wgslsmith_index_u32(arg_2, 28u)]) | vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(0u, 28u)])))));
    global0 = array<Struct_1, 8>();
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    return global2[_wgslsmith_index_u32(~(~(u_input.a ^ (_wgslsmith_mult_u32(u_input.a, arg_2) | arg_2))), 25u)];
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 32>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, -573f, 329f)), false, select(83694u, u_input.a, true)), _wgslsmith_clamp_vec2_u32(global2[_wgslsmith_index_u32(~11849u, 25u)], global2[_wgslsmith_index_u32(1u, 25u)], max(~vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(4294967295u, u_input.a))))), ~(countOneBits(select(1u, u_input.a, false)) ^ u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), global2[_wgslsmith_index_u32(1u, 25u)] & global2[_wgslsmith_index_u32(u_input.a, 25u)]), ~global2[_wgslsmith_index_u32(u_input.a, 25u)] >> (vec2<u32>(u_input.a, 71118u) % vec2<u32>(32u))), global2[_wgslsmith_index_u32(u_input.a, 25u)]));
    var var_1 = any(select(!vec2<bool>(var_0.x > 4294967295u, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global2 = array<vec2<u32>, 25>();
    var var_2 = global3[_wgslsmith_index_u32(u_input.a, 28u)];
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-firstLeadingBit(_wgslsmith_clamp_i32(-39022i, global3[_wgslsmith_index_u32(var_0.x, 28u)], -9649i)), abs(~global3[_wgslsmith_index_u32(0u, 28u)]) | -34830i, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(min(countOneBits(4294967295u), u_input.a & 1u), 28u)], -2100i, global3[_wgslsmith_index_u32(40233u, 28u)] << (~var_0.x % 32u))), _wgslsmith_mod_vec3_i32(~min(vec3<i32>(global3[_wgslsmith_index_u32(var_0.x, 28u)], global3[_wgslsmith_index_u32(var_0.x, 28u)], -2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(1u, 28u)], 1403i, 16987i)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.yx, global2[_wgslsmith_index_u32(4294967295u, 25u)]), 1u, ~83066u) % vec3<u32>(32u)), vec3<i32>(1i | (15977i ^ global3[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(max(u_input.a, 4294967295u), 28u)]), min(global3[_wgslsmith_index_u32(var_0.x, 28u)], ~global3[_wgslsmith_index_u32(u_input.a, 28u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~func_1()) | -41163i);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a | u_input.a, 32u)];
    global2 = array<vec2<u32>, 25>();
    global0 = array<Struct_1, 8>();
    let var_2 = vec2<bool>(var_1.b && !(~0i < _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(16201u, 28u)], -2147483647i)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(0i | ~global3[_wgslsmith_index_u32(var_1.c, 28u)], 56895i), vec2<i32>(_wgslsmith_div_i32(-2147483647i, select(global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(36655u, 28u)], var_2.x)), 20362i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-global3[_wgslsmith_index_u32(24386u, 28u)]), -764i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(global3[_wgslsmith_index_u32(5734u, 28u)], global3[_wgslsmith_index_u32(var_1.c, 28u)], global3[_wgslsmith_index_u32(var_1.c, 28u)]), vec3<i32>(2147483647i, -5766i, 13691i)), reverseBits(vec3<i32>(-25596i, 0i, -1i)))), global3[_wgslsmith_index_u32(58974u, 28u)]), var_1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1489f, _wgslsmith_f_op_f32(-304f - _wgslsmith_f_op_f32(max(var_1.d.x, -486f))), _wgslsmith_f_op_f32(max(var_1.d.x, _wgslsmith_f_op_f32(var_1.e.x - 1662f))), 392f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.d.x, -545f, _wgslsmith_f_op_f32(-1754f * -1000f), -905f)))), max(vec4<u32>(0u, 0u, var_1.a.x, u_input.a) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 28964u, u_input.a), vec4<u32>(0u, 0u, 37668u, var_1.c)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 13822u, 0u, var_1.a.x), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)) << (~max(vec4<u32>(u_input.a, 0u, 12097u, 4294967295u), vec4<u32>(u_input.a, var_1.a.x, 22127u, u_input.a)) % vec4<u32>(32u))));
}

