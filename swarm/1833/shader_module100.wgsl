struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-19687i, -35784i, -17039i, 1i, -50211i, 1i, -21i, -1i, -39943i, 1221i, i32(-2147483648), 16793i, -1i, 37158i, -1i, 1917i, -28137i, -12620i, 0i, -67970i, -34472i);

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1u, vec3<u32>(22158u, 72062u, 18803u), vec4<f32>(-1111f, -1373f, 614f, -1000f), vec3<u32>(27109u, 31369u, 15139u)), Struct_1(39682u, vec3<u32>(19518u, 33530u, 32854u), vec4<f32>(-508f, -360f, -209f, 815f), vec3<u32>(43948u, 8103u, 21306u)), Struct_1(16923u, vec3<u32>(27486u, 24214u, 16542u), vec4<f32>(2673f, -446f, 267f, 730f), vec3<u32>(1u, 63232u, 67743u)), Struct_1(1u, vec3<u32>(0u, 4294967295u, 57479u), vec4<f32>(-1143f, 305f, 769f, -364f), vec3<u32>(4294967295u, 38401u, 64061u)), Struct_1(1u, vec3<u32>(0u, 4294967295u, 4294967295u), vec4<f32>(336f, -311f, -101f, -1987f), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(21277u, vec3<u32>(70836u, 4294967295u, 17713u), vec4<f32>(-1000f, 894f, 1147f, -721f), vec3<u32>(1u, 38194u, 17461u)), Struct_1(4294967295u, vec3<u32>(1u, 18418u, 14493u), vec4<f32>(1000f, 1807f, -1000f, 282f), vec3<u32>(4294967295u, 73778u, 42556u)), Struct_1(4294967295u, vec3<u32>(53323u, 4294967295u, 17275u), vec4<f32>(1016f, 942f, 1578f, -511f), vec3<u32>(0u, 0u, 1u)), Struct_1(0u, vec3<u32>(1u, 60632u, 3361u), vec4<f32>(1378f, 951f, 1000f, -938f), vec3<u32>(97493u, 1u, 31943u)), Struct_1(0u, vec3<u32>(0u, 29193u, 4294967295u), vec4<f32>(-1264f, -521f, 864f, 543f), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(0u, vec3<u32>(73409u, 51958u, 46693u), vec4<f32>(-337f, 1000f, -1162f, -657f), vec3<u32>(3539u, 10489u, 0u)), Struct_1(10643u, vec3<u32>(0u, 39155u, 106891u), vec4<f32>(431f, 179f, -131f, -672f), vec3<u32>(21169u, 44137u, 4294967295u)), Struct_1(71030u, vec3<u32>(1u, 27899u, 16208u), vec4<f32>(-1000f, 259f, -718f, 1700f), vec3<u32>(44134u, 46120u, 1u)), Struct_1(0u, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<f32>(-1238f, -666f, 446f, -115f), vec3<u32>(97831u, 0u, 40394u)), Struct_1(0u, vec3<u32>(0u, 1u, 0u), vec4<f32>(-679f, 723f, 636f, 1087f), vec3<u32>(21289u, 0u, 3612u)), Struct_1(0u, vec3<u32>(47683u, 45749u, 40812u), vec4<f32>(1359f, 1798f, -1531f, 1185f), vec3<u32>(4294967295u, 38667u, 0u)), Struct_1(0u, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<f32>(-1000f, -314f, -1000f, -1000f), vec3<u32>(1u, 0u, 69122u)), Struct_1(0u, vec3<u32>(8019u, 74765u, 4294967295u), vec4<f32>(-2610f, 1315f, -1000f, 721f), vec3<u32>(4294967295u, 36270u, 1125u)), Struct_1(4294967295u, vec3<u32>(1u, 4294967295u, 15257u), vec4<f32>(-1354f, 1000f, -514f, 412f), vec3<u32>(0u, 4294967295u, 10783u)), Struct_1(52537u, vec3<u32>(0u, 37600u, 7084u), vec4<f32>(-264f, -1100f, 183f, -377f), vec3<u32>(565u, 0u, 4294967295u)), Struct_1(1u, vec3<u32>(74616u, 4294967295u, 4294967295u), vec4<f32>(-1984f, -313f, 210f, -895f), vec3<u32>(77879u, 69808u, 1u)), Struct_1(0u, vec3<u32>(4294967295u, 82452u, 25544u), vec4<f32>(1843f, -1000f, -563f, -1982f), vec3<u32>(4294967295u, 3179u, 2205u)), Struct_1(1u, vec3<u32>(15257u, 1u, 39121u), vec4<f32>(1428f, 207f, 1907f, 1321f), vec3<u32>(20536u, 22237u, 1u)), Struct_1(4294967295u, vec3<u32>(6871u, 31360u, 58571u), vec4<f32>(269f, -511f, 560f, -574f), vec3<u32>(4294967295u, 24722u, 1u)), Struct_1(0u, vec3<u32>(38218u, 27051u, 28970u), vec4<f32>(-703f, 1052f, 531f, 1009f), vec3<u32>(1u, 70879u, 0u)), Struct_1(1u, vec3<u32>(15461u, 99776u, 4294967295u), vec4<f32>(-1178f, 408f, -1134f, -225f), vec3<u32>(44813u, 1u, 52051u)), Struct_1(0u, vec3<u32>(26149u, 1u, 0u), vec4<f32>(-186f, 180f, -155f, -876f), vec3<u32>(4294967295u, 21091u, 25347u)), Struct_1(0u, vec3<u32>(14358u, 1u, 0u), vec4<f32>(-297f, 199f, 1386f, -1666f), vec3<u32>(0u, 4294967295u, 31509u)), Struct_1(4294967295u, vec3<u32>(1u, 0u, 1u), vec4<f32>(319f, -1488f, -354f, -866f), vec3<u32>(56373u, 16u, 3933u)));

var<private> global3: Struct_1 = Struct_1(21940u, vec3<u32>(1u, 1u, 66411u), vec4<f32>(-1326f, 1888f, 1153f, -568f), vec3<u32>(1u, 17421u, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> vec4<bool> {
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false)));
}

fn func_2() -> vec4<bool> {
    let var_0 = -firstLeadingBit(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 21u)], u_input.d, u_input.c.x), vec4<i32>(-16339i, global0[_wgslsmith_index_u32(0u, 21u)], -2147483647i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 21u)])), 0i, -29579i >> (u_input.b.x % 32u))));
    let var_1 = global2[_wgslsmith_index_u32(global3.d.x, 29u)];
    var var_2 = select(~vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7320u, 13u)], 13u)], 1u, 2805u)), vec3<u32>(1u, global1[_wgslsmith_index_u32(global3.d.x, 13u)], 22914u)), ~select(51075u, var_1.b.x, true)), _wgslsmith_mod_vec2_u32((vec2<u32>(global1[_wgslsmith_index_u32(var_1.d.x, 13u)], 1u) | (global3.d.yy << (vec2<u32>(var_1.a, global1[_wgslsmith_index_u32(0u, 13u)]) % vec2<u32>(32u)))) << (~(~var_1.d.yx) % vec2<u32>(32u)), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global3.a), global3.b.xz))), func_1().yx);
    global2 = array<Struct_1, 29>();
    global1 = array<u32, 13>();
    return vec4<bool>(true, true, true, false);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global3 = Struct_1(firstLeadingBit(_wgslsmith_mod_u32(global3.d.x, 4294967295u)), arg_3.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1357f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.c.x, 203f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), all(vec3<bool>(arg_2, arg_2, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.c.x))))), -1463f), ~select(select(arg_3.b, _wgslsmith_add_vec3_u32(global3.d, vec3<u32>(arg_1.d.x, arg_1.b.x, 0u)), func_1().x), select(reverseBits(arg_1.b), arg_1.b, true), true));
    return global2[_wgslsmith_index_u32(~arg_1.d.x, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(vec2<f32>(global3.c.x, global3.c.x), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.a), _wgslsmith_clamp_vec3_u32(global3.d, vec3<u32>(global3.b.x, u_input.b.x, 33943u), vec3<u32>(20304u, global1[_wgslsmith_index_u32(3289u, 13u)], 105707u))), ~_wgslsmith_sub_u32(u_input.a, 61820u)) ^ ~(_wgslsmith_sub_u32(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 13u)]) & _wgslsmith_add_u32(30347u, u_input.b.x)), 29u)], all(select(func_1(), func_2(), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~13479u), 29u)]);
    let var_1 = _wgslsmith_f_op_f32(min(-366f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1139f), -1379f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-465f - _wgslsmith_f_op_f32(select(var_1, var_1, true))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, var_0.c.x)) + _wgslsmith_f_op_f32(max(var_1, var_1))))))));
    var_2 = vec4<f32>(-990f, var_2.x, -168f, var_0.c.x);
    var var_3 = Struct_1(0u & _wgslsmith_add_u32(292u, _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(global3.a, global1[_wgslsmith_index_u32(var_0.b.x, 13u)]))), vec3<u32>(~(~var_0.a), 84752u, global1[_wgslsmith_index_u32(global3.a, 13u)]), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1215f)), -2020f)), -216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) - var_1)), var_1), min(~(abs(vec3<u32>(4294967295u, 30177u, 0u)) >> (vec3<u32>(var_0.a, var_0.d.x, 84820u) % vec3<u32>(32u))), countOneBits(~var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 67059u, firstLeadingBit(var_0.b.x), global3.b.x) << (firstTrailingBit(reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(3395u, 13u)], 44667u, 0u, 16642u))) % vec4<u32>(32u)), reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 1u, global1[_wgslsmith_index_u32(37670u, 13u)]), vec4<u32>(4294967295u, 12710u, 4294967295u, 21054u)), ~vec4<u32>(7685u, 79173u, 0u, global1[_wgslsmith_index_u32(51608u, 13u)]))), min(vec4<u32>(~0u, 1u, _wgslsmith_dot_vec2_u32(global3.d.xy, vec2<u32>(1u, global3.d.x)), min(var_0.a, u_input.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3.a, global3.a, var_3.a) | vec4<u32>(var_0.b.x, global3.d.x, var_0.b.x, 25204u), vec4<u32>(55352u, 4294967295u, global3.b.x, var_0.b.x) << (vec4<u32>(var_3.a, 64114u, 1u, 4294967295u) % vec4<u32>(32u))))));
}

