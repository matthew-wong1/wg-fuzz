struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-847f, -2529f, 712f, 1210f, 669f, -475f, -316f, -721f, 397f, -292f, 977f, 203f, 370f, 2083f, -459f, 419f);

var<private> global1: array<u32, 1> = array<u32, 1>(62428u);

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<f32>(-138f, -322f, 735f, 1666f), 811f, vec2<bool>(true, false), Struct_1(961f, vec3<i32>(30600i, 14186i, 1i), 456f)), Struct_2(vec4<f32>(-1018f, -808f, -1000f, -1627f), -452f, vec2<bool>(false, false), Struct_1(212f, vec3<i32>(-14339i, i32(-2147483648), i32(-2147483648)), -266f)), Struct_2(vec4<f32>(1112f, 476f, -488f, -241f), -414f, vec2<bool>(false, true), Struct_1(658f, vec3<i32>(0i, i32(-2147483648), 41501i), 2265f)), Struct_2(vec4<f32>(-291f, -1000f, 965f, -857f), -885f, vec2<bool>(false, true), Struct_1(-875f, vec3<i32>(8746i, 0i, 2147483647i), 901f)), Struct_2(vec4<f32>(609f, 129f, -472f, 478f), 1147f, vec2<bool>(true, false), Struct_1(-766f, vec3<i32>(6138i, -1i, i32(-2147483648)), -573f)), Struct_2(vec4<f32>(-1374f, 1000f, 1229f, 564f), 503f, vec2<bool>(false, false), Struct_1(-750f, vec3<i32>(-1i, 66814i, -31438i), 1988f)), Struct_2(vec4<f32>(-1874f, -760f, 206f, -946f), 104f, vec2<bool>(true, false), Struct_1(1460f, vec3<i32>(-12790i, i32(-2147483648), -1i), -578f)), Struct_2(vec4<f32>(544f, 961f, -567f, 614f), 1598f, vec2<bool>(false, true), Struct_1(1925f, vec3<i32>(2147483647i, 0i, 24637i), 543f)), Struct_2(vec4<f32>(-255f, -861f, 217f, 772f), -709f, vec2<bool>(false, true), Struct_1(1000f, vec3<i32>(-70861i, 1i, 2147483647i), 1801f)), Struct_2(vec4<f32>(-399f, 1098f, -454f, -1967f), -246f, vec2<bool>(false, true), Struct_1(194f, vec3<i32>(-47560i, 4389i, -5511i), 685f)), Struct_2(vec4<f32>(-1723f, 995f, -1247f, 2284f), -474f, vec2<bool>(false, false), Struct_1(-1000f, vec3<i32>(i32(-2147483648), -72950i, 0i), 336f)), Struct_2(vec4<f32>(-951f, 1864f, 1464f, 848f), 1394f, vec2<bool>(true, false), Struct_1(-407f, vec3<i32>(1i, 18999i, 1i), -198f)), Struct_2(vec4<f32>(494f, 1000f, 106f, -453f), 258f, vec2<bool>(false, false), Struct_1(-1177f, vec3<i32>(0i, -4322i, -23758i), 915f)), Struct_2(vec4<f32>(-609f, -624f, 1197f, -1310f), 363f, vec2<bool>(false, false), Struct_1(552f, vec3<i32>(43024i, 10066i, 2147483647i), -186f)), Struct_2(vec4<f32>(-1000f, -1293f, 656f, -625f), 1254f, vec2<bool>(false, true), Struct_1(1760f, vec3<i32>(1i, 0i, 0i), 696f)), Struct_2(vec4<f32>(-1539f, -1289f, -1413f, 1154f), -1000f, vec2<bool>(true, false), Struct_1(-1000f, vec3<i32>(2147483647i, -30339i, 0i), -719f)), Struct_2(vec4<f32>(-577f, -1000f, 1000f, 667f), -1000f, vec2<bool>(true, false), Struct_1(-575f, vec3<i32>(1i, 17590i, 1i), 1105f)), Struct_2(vec4<f32>(1000f, -1113f, 1001f, 744f), 1322f, vec2<bool>(true, true), Struct_1(1044f, vec3<i32>(8325i, -15996i, -14522i), -930f)), Struct_2(vec4<f32>(-811f, -991f, -329f, 896f), -2148f, vec2<bool>(false, false), Struct_1(597f, vec3<i32>(7067i, 0i, 2147483647i), -2301f)), Struct_2(vec4<f32>(794f, 425f, -1188f, -150f), -387f, vec2<bool>(true, true), Struct_1(-1239f, vec3<i32>(-1i, -34268i, -43329i), 384f)), Struct_2(vec4<f32>(2162f, -839f, -1709f, 921f), -1000f, vec2<bool>(true, true), Struct_1(-900f, vec3<i32>(-1i, 32362i, 3099i), -1000f)), Struct_2(vec4<f32>(-428f, -376f, -544f, 189f), -981f, vec2<bool>(true, false), Struct_1(-1045f, vec3<i32>(2300i, -62565i, 38562i), -1305f)), Struct_2(vec4<f32>(-125f, -437f, -713f, -752f), -872f, vec2<bool>(false, true), Struct_1(-869f, vec3<i32>(12323i, -51202i, 92359i), -269f)), Struct_2(vec4<f32>(1637f, -1960f, -991f, -2547f), -1000f, vec2<bool>(false, true), Struct_1(-2690f, vec3<i32>(14663i, -449i, -50155i), -744f)), Struct_2(vec4<f32>(524f, 1534f, 671f, 234f), -298f, vec2<bool>(true, false), Struct_1(1000f, vec3<i32>(33421i, 1894i, 0i), 1196f)), Struct_2(vec4<f32>(549f, 1003f, 251f, 177f), -1430f, vec2<bool>(true, true), Struct_1(-683f, vec3<i32>(85344i, 2147483647i, 28519i), 267f)), Struct_2(vec4<f32>(-1680f, 2210f, -1323f, 250f), 2091f, vec2<bool>(true, true), Struct_1(-152f, vec3<i32>(0i, -1i, 2147483647i), 573f)), Struct_2(vec4<f32>(1000f, -1713f, -887f, 915f), 171f, vec2<bool>(true, false), Struct_1(908f, vec3<i32>(1160i, -22613i, -92670i), -614f)), Struct_2(vec4<f32>(776f, 427f, 827f, -534f), -689f, vec2<bool>(true, true), Struct_1(-473f, vec3<i32>(44916i, -1i, -1i), -669f)), Struct_2(vec4<f32>(993f, -1050f, 1343f, 1462f), 691f, vec2<bool>(true, true), Struct_1(1307f, vec3<i32>(0i, 0i, 0i), 1000f)), Struct_2(vec4<f32>(229f, -476f, 1434f, 913f), 1477f, vec2<bool>(true, true), Struct_1(291f, vec3<i32>(17081i, 86i, 1i), -419f)), Struct_2(vec4<f32>(567f, 869f, -433f, -1779f), 2280f, vec2<bool>(false, true), Struct_1(319f, vec3<i32>(-1i, 32569i, -13834i), 257f)));

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec4<f32>(-425f, -151f, -1364f, 762f), 290f, vec2<bool>(false, true), Struct_1(-487f, vec3<i32>(-31498i, -14289i, i32(-2147483648)), 1614f)), Struct_2(vec4<f32>(183f, 576f, -729f, 980f), -488f, vec2<bool>(false, false), Struct_1(1138f, vec3<i32>(1i, i32(-2147483648), 1i), -307f)), Struct_2(vec4<f32>(-272f, 136f, -708f, 1060f), 378f, vec2<bool>(false, false), Struct_1(776f, vec3<i32>(2147483647i, i32(-2147483648), 61051i), 262f)), Struct_2(vec4<f32>(-912f, -112f, 216f, -1000f), 826f, vec2<bool>(false, true), Struct_1(126f, vec3<i32>(0i, 2147483647i, i32(-2147483648)), -2047f)), Struct_2(vec4<f32>(-1540f, 1794f, 407f, 1000f), -1240f, vec2<bool>(true, true), Struct_1(-1000f, vec3<i32>(-40737i, 25723i, -21590i), -1221f)), Struct_2(vec4<f32>(401f, 675f, -586f, -1169f), -717f, vec2<bool>(true, true), Struct_1(-1182f, vec3<i32>(i32(-2147483648), -1i, 47084i), 1048f)), Struct_2(vec4<f32>(689f, -615f, -1425f, 401f), -952f, vec2<bool>(true, true), Struct_1(-1143f, vec3<i32>(17724i, -21183i, 30400i), -1159f)), Struct_2(vec4<f32>(899f, 1666f, 457f, 1051f), -727f, vec2<bool>(false, false), Struct_1(1057f, vec3<i32>(2147483647i, 2147483647i, -18364i), -738f)), Struct_2(vec4<f32>(535f, -589f, 2912f, -1529f), 303f, vec2<bool>(false, true), Struct_1(-1350f, vec3<i32>(23193i, 28886i, 2147483647i), 1000f)));

var<private> global4: array<vec3<u32>, 28>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(1i, abs(firstTrailingBit(1i))), _wgslsmith_sub_vec2_i32(select(arg_0.d.b.xy & vec2<i32>(-39714i, -2147483647i), arg_0.d.b.xy >> (vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]) % vec2<u32>(32u)), vec2<bool>(true, arg_1)) >> (abs(~vec2<u32>(13505u, 1u)) % vec2<u32>(32u)), -(select(arg_0.d.b.zz, arg_0.d.b.yy, vec2<bool>(arg_0.c.x, false)) & vec2<i32>(0i, arg_0.d.b.x))));
    let var_1 = !(!select(vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_1), select(select(vec4<bool>(arg_1, arg_0.c.x, false, arg_1), vec4<bool>(arg_0.c.x, false, arg_1, false), arg_1), !vec4<bool>(false, true, arg_1, arg_1), arg_0.c.x), select(select(vec4<bool>(false, false, true, arg_1), vec4<bool>(false, false, arg_1, false), vec4<bool>(true, arg_0.c.x, arg_1, arg_0.c.x)), select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, true, true, arg_0.c.x), true), vec4<bool>(true, true, true, true))));
    let var_2 = arg_0.d;
    let var_3 = max(var_0.x, var_2.b.x) >> (((25255u << (firstLeadingBit(~global1[_wgslsmith_index_u32(1u, 1u)]) % 32u)) >> (~(global1[_wgslsmith_index_u32(countOneBits(44322u), 1u)] >> (~21143u % 32u)) % 32u)) % 32u);
    let var_4 = arg_0.d;
    return -1i & -_wgslsmith_add_i32(firstTrailingBit(firstLeadingBit(var_2.b.x)), -2147483647i);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: f32) -> vec2<f32> {
    let var_0 = arg_2;
    var var_1 = 88086u;
    let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -arg_1.x) << (vec2<u32>(19830u, global1[_wgslsmith_index_u32(4294967295u, 1u)]) % vec2<u32>(32u)), arg_0.zz), -func_3(Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], var_0, arg_2, global0[_wgslsmith_index_u32(4294967295u, 16u)]), global0[_wgslsmith_index_u32(4294967295u, 16u)], vec2<bool>(false, false), Struct_1(var_0, vec3<i32>(arg_1.x, arg_1.x, -13158i), arg_2)), true) << (firstLeadingBit(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, global1[_wgslsmith_index_u32(17474u, 1u)])), 1u)]) % 32u), -_wgslsmith_div_i32(~_wgslsmith_add_i32(38831i, u_input.c), firstTrailingBit(0i)));
    global1 = array<u32, 1>();
    let var_3 = vec3<i32>(1552i, ~(-2147483647i), abs(-1i));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-769f, 959f) - vec2<f32>(-743f, global0[_wgslsmith_index_u32(4294967295u, 16u)])))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(407f, global0[_wgslsmith_index_u32(u_input.b, 16u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], -168f) * vec2<f32>(-1107f, arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, global0[_wgslsmith_index_u32(0u, 16u)]) * vec2<f32>(427f, -865f))))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1373f, _wgslsmith_f_op_f32(-350f + 288f)), global0[_wgslsmith_index_u32(u_input.a, 16u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(2147483647i, 43219i, -1i) | vec3<i32>(u_input.c, u_input.c, u_input.c), -vec3<i32>(u_input.c, u_input.c, -2147483647i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(67904u, 16u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), vec2<f32>(-777f, -657f)))))));
    return !any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(u_input.a > u_input.b, false, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), vec3<bool>(any(vec3<bool>(true, true, true)), true, false), vec3<bool>(true, any(vec2<bool>(true, false)), true | func_1()));
    global4 = array<vec3<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 27555i, u_input.c, -2908i), vec4<i32>(u_input.c, -2147483647i, u_input.c, -14361i)) & _wgslsmith_add_i32(u_input.c, ~(-24760i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2478f, 226f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 16u)], -2884f) * vec2<f32>(-556f, 2517f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-206f, global0[_wgslsmith_index_u32(u_input.a, 16u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, -598f) + vec2<f32>(global0[_wgslsmith_index_u32(0u, 16u)], 174f))))), vec3<u32>(_wgslsmith_div_u32(~(~48307u), global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(57060u, global1[_wgslsmith_index_u32(4294967295u, 1u)])), 1u)]), ~min(~u_input.a, _wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(62963u, 0u) | ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)])), ~_wgslsmith_mod_vec2_u32(~(vec2<u32>(4445u, 1u) << (vec2<u32>(u_input.a, 6724u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.b) << (vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], 9032u) % vec2<u32>(32u)), abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 1u)], 82042u)))), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(105621u, u_input.a, ~global1[_wgslsmith_index_u32(u_input.a, 1u)]), global4[_wgslsmith_index_u32(u_input.a, 28u)] ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1367u, 4736u), global4[_wgslsmith_index_u32(u_input.b, 28u)]), var_0), global4[_wgslsmith_index_u32(u_input.a, 28u)], ~global4[_wgslsmith_index_u32(abs(1u), 28u)]));
}

