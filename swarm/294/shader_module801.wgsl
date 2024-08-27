struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(326f, vec4<u32>(23439u, 1u, 1u, 7922u), -519f, vec3<f32>(-126f, 354f, 451f), vec3<f32>(228f, 1000f, 1716f)), Struct_1(1000f, vec4<u32>(1u, 59812u, 0u, 1u), 462f, vec3<f32>(947f, -892f, -627f), vec3<f32>(142f, -298f, -188f)), Struct_1(662f, vec4<u32>(4294967295u, 4294967295u, 27658u, 11773u), 428f, vec3<f32>(-2987f, 1003f, -823f), vec3<f32>(626f, -441f, 1047f)), Struct_1(-1000f, vec4<u32>(0u, 109341u, 4294967295u, 1u), 1426f, vec3<f32>(-1000f, -212f, 530f), vec3<f32>(-119f, 107f, -757f)), Struct_1(372f, vec4<u32>(44717u, 31276u, 4294967295u, 4294967295u), 1128f, vec3<f32>(-139f, -654f, 1120f), vec3<f32>(-110f, -304f, 550f)), Struct_1(-193f, vec4<u32>(0u, 4294967295u, 45405u, 4294967295u), -1639f, vec3<f32>(-527f, 412f, -522f), vec3<f32>(504f, 1630f, -135f)), Struct_1(-520f, vec4<u32>(32920u, 18384u, 0u, 1u), -173f, vec3<f32>(1490f, -301f, -684f), vec3<f32>(916f, -2508f, 258f)), Struct_1(587f, vec4<u32>(14088u, 1u, 0u, 67225u), 1257f, vec3<f32>(1504f, 869f, 1000f), vec3<f32>(2439f, 558f, 581f)), Struct_1(386f, vec4<u32>(66360u, 6315u, 36109u, 0u), -828f, vec3<f32>(516f, -102f, -1079f), vec3<f32>(1617f, -250f, 536f)), Struct_1(-111f, vec4<u32>(4294967295u, 1u, 26231u, 21302u), -1000f, vec3<f32>(612f, 700f, 566f), vec3<f32>(-1441f, 598f, 360f)), Struct_1(1169f, vec4<u32>(4294967295u, 0u, 973u, 0u), 600f, vec3<f32>(1480f, -934f, -1890f), vec3<f32>(1000f, -167f, 708f)), Struct_1(-147f, vec4<u32>(64455u, 37880u, 4294967295u, 30829u), 1000f, vec3<f32>(805f, 597f, 1000f), vec3<f32>(-1583f, -758f, -194f)), Struct_1(1000f, vec4<u32>(1u, 1u, 94361u, 52535u), -1000f, vec3<f32>(1220f, -198f, 488f), vec3<f32>(-1640f, -507f, 851f)), Struct_1(1209f, vec4<u32>(23910u, 16960u, 722u, 43178u), -826f, vec3<f32>(-401f, 1000f, -760f), vec3<f32>(1215f, -157f, -520f)), Struct_1(-1000f, vec4<u32>(49534u, 1u, 51479u, 0u), -1706f, vec3<f32>(-260f, -1173f, 460f), vec3<f32>(102f, 746f, -551f)), Struct_1(-629f, vec4<u32>(1618u, 4294967295u, 1u, 43849u), 1446f, vec3<f32>(-1186f, -1533f, 693f), vec3<f32>(244f, 1062f, 680f)), Struct_1(1006f, vec4<u32>(1u, 17008u, 47571u, 4294967295u), -1000f, vec3<f32>(152f, 1067f, 437f), vec3<f32>(784f, -626f, 969f)), Struct_1(-932f, vec4<u32>(37689u, 4294967295u, 95493u, 4294967295u), -572f, vec3<f32>(431f, 624f, -707f), vec3<f32>(-944f, -1332f, -1000f)), Struct_1(-1000f, vec4<u32>(1u, 30467u, 66463u, 0u), 352f, vec3<f32>(396f, 2194f, -1092f), vec3<f32>(1516f, -887f, 987f)), Struct_1(-418f, vec4<u32>(4294967295u, 1u, 25531u, 25055u), -403f, vec3<f32>(-1883f, -1900f, 1748f), vec3<f32>(-425f, 2212f, 721f)), Struct_1(-1157f, vec4<u32>(1u, 0u, 19028u, 0u), 397f, vec3<f32>(-1255f, -259f, 771f), vec3<f32>(1218f, -628f, -154f)), Struct_1(-1773f, vec4<u32>(60848u, 60700u, 4294967295u, 0u), 2501f, vec3<f32>(1547f, -250f, 658f), vec3<f32>(541f, 662f, -223f)), Struct_1(813f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), 730f, vec3<f32>(1823f, 1372f, -760f), vec3<f32>(-461f, 311f, -993f)), Struct_1(473f, vec4<u32>(4294967295u, 11456u, 37687u, 0u), -500f, vec3<f32>(-1093f, -818f, -182f), vec3<f32>(1448f, -814f, -1134f)), Struct_1(-198f, vec4<u32>(33051u, 4294967295u, 0u, 4294967295u), -474f, vec3<f32>(-134f, 1309f, -2277f), vec3<f32>(-182f, -726f, -1565f)), Struct_1(-727f, vec4<u32>(4294967295u, 0u, 4294967295u, 13718u), 1000f, vec3<f32>(1095f, -842f, 252f), vec3<f32>(-118f, -877f, 392f)), Struct_1(368f, vec4<u32>(8223u, 0u, 35588u, 3736u), 1316f, vec3<f32>(-154f, 2639f, -1792f), vec3<f32>(-321f, -576f, 464f)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> f32 {
    return -300f;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(1039f - -113f)), _wgslsmith_f_op_f32(min(-1044f, _wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(781f, -1632f))), -1190f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)), 748f, -227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-695f * -255f) - -400f))), vec4<f32>(_wgslsmith_div_f32(-986f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(1146f, -322f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1362f + 2079f) - _wgslsmith_f_op_f32(-1000f + -1119f)), _wgslsmith_f_op_f32(f32(-1f) * -1732f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(583f, 456f) - _wgslsmith_f_op_f32(min(318f, -1697f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2754f + 941f)))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), false))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.e.x, 27u)];
    var_1 = global0[_wgslsmith_index_u32(u_input.b, 27u)];
    var var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(reverseBits(~var_1.b.x), 12010u), 27u)];
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(var_1.b, select(u_input.e, var_3.b, vec4<bool>(true, true, true, true))));
}

fn func_2() -> u32 {
    let var_0 = (func_3() >= ~u_input.e.x) & any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), 960f, _wgslsmith_f_op_f32(f32(-1f) * -109f), 1092f))));
    let var_2 = _wgslsmith_f_op_f32(1898f + 1068f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1066f)))), _wgslsmith_mult_vec4_u32(~u_input.e, ~vec4<u32>(abs(87175u), select(u_input.a, 0u, true), 70953u, u_input.d << (u_input.b % 32u))), _wgslsmith_f_op_f32(func_1()), var_1.xww, vec3<f32>(-582f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-var_1.x)))), var_2));
    global0 = array<Struct_1, 27>();
    return ~(~var_3.b.x) ^ 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(1127f * 904f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(370f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(315f, -461f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1668f, -1842f, 733f, -942f))))))));
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(~abs(u_input.e.x)), 27u)];
    var var_2 = u_input.e.zzx;
    global0 = array<Struct_1, 27>();
    var_2 = ~(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e.xzx, vec3<u32>(u_input.d, var_2.x, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, var_1.b.x), vec3<u32>(u_input.d, 49519u, var_1.b.x))) & vec3<u32>(1u, _wgslsmith_mult_u32(var_1.b.x, 60068u), ~u_input.c)) << (~(~countOneBits(~var_1.b.zwy)) % vec3<u32>(32u));
    var var_3 = (~_wgslsmith_add_vec4_u32(countOneBits(var_1.b), var_1.b) << (vec4<u32>(57525u << (0u % 32u), var_1.b.x, func_2(), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e.ww, vec2<u32>(19516u, var_1.b.x)), abs(vec2<u32>(96367u, var_2.x)))) % vec4<u32>(32u))) >> (u_input.e % vec4<u32>(32u));
    var_3 = ~_wgslsmith_mod_vec4_u32(u_input.e, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec4<i32>(-2147483647i, 23847i, 0i, -32199i), vec4<i32>(-2147483647i, 2784i, -2147483647i, -5386i), u_input.b <= var_2.x)) >> (_wgslsmith_add_vec4_u32((var_1.b ^ vec4<u32>(u_input.c, var_1.b.x, var_3.x, 78275u)) | u_input.e, abs(vec4<u32>(1u, u_input.e.x, var_3.x, var_2.x))) % vec4<u32>(32u)), var_1.e.yy, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0))), max(-2147483647i, -(0i & (-45285i >> (u_input.c % 32u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(56451i, -2147483647i, -1i), vec3<i32>(38918i, -1i, -16572i)), 1i, reverseBits(~(-72570i))), -firstLeadingBit(firstTrailingBit(vec3<i32>(15280i, 1i, -1i)))));
}

