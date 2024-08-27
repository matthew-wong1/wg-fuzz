struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(27672i, -1i, 22727i, -5976i, -46536i, 2147483647i, 22126i, -5032i, -1i, 1i, 1i, i32(-2147483648), 23641i, 2147483647i, -35116i, 0i, -1i, 44000i, 10293i, 9028i, i32(-2147483648));

var<private> global1: array<Struct_1, 16>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 667u, 4294967295u), vec4<f32>(-283f, -385f, -437f, 299f), vec2<u32>(68497u, 24172u), vec4<f32>(1000f, -214f, 394f, -425f));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(726u, 0u, 28412u), vec4<f32>(-1129f, 272f, -335f, 560f), vec2<u32>(4133u, 986u), vec4<f32>(-1004f, -396f, -915f, -541f));

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(45805u, 4294967295u, 0u), vec4<f32>(-473f, 1387f, -1000f, -615f), vec2<u32>(1u, 1u), vec4<f32>(-521f, -1026f, -1289f, 156f)), Struct_1(vec3<u32>(27753u, 1u, 38090u), vec4<f32>(-1088f, 1000f, -896f, -422f), vec2<u32>(0u, 84361u), vec4<f32>(-158f, 1138f, 1000f, 1591f)), Struct_1(vec3<u32>(64680u, 1u, 1295u), vec4<f32>(2706f, -2048f, -300f, -1443f), vec2<u32>(0u, 4294967295u), vec4<f32>(-1442f, -213f, 293f, 345f)), Struct_1(vec3<u32>(0u, 0u, 29778u), vec4<f32>(-556f, -680f, 143f, -773f), vec2<u32>(1u, 23831u), vec4<f32>(941f, 705f, -400f, -1000f)), Struct_1(vec3<u32>(85724u, 3139u, 4294967295u), vec4<f32>(-137f, 1658f, -1669f, -689f), vec2<u32>(1u, 0u), vec4<f32>(-190f, 1272f, -393f, -1075f)), Struct_1(vec3<u32>(95929u, 10113u, 4294967295u), vec4<f32>(-1000f, -281f, -656f, -534f), vec2<u32>(2847u, 84839u), vec4<f32>(862f, -1043f, 790f, -780f)), Struct_1(vec3<u32>(4294967295u, 14120u, 1u), vec4<f32>(1727f, -1000f, -1000f, -1000f), vec2<u32>(0u, 60453u), vec4<f32>(-707f, -372f, 309f, -384f)), Struct_1(vec3<u32>(1u, 25157u, 60691u), vec4<f32>(2097f, 2239f, 896f, -784f), vec2<u32>(45158u, 4138u), vec4<f32>(376f, -1344f, -244f, 901f)), Struct_1(vec3<u32>(1u, 733u, 4294967295u), vec4<f32>(-2154f, -305f, -698f, -358f), vec2<u32>(290u, 1u), vec4<f32>(-498f, 1000f, -163f, 603f)), Struct_1(vec3<u32>(0u, 1u, 9200u), vec4<f32>(-262f, -1681f, -225f, -181f), vec2<u32>(0u, 57239u), vec4<f32>(-1178f, 1455f, -295f, -637f)), Struct_1(vec3<u32>(88797u, 4294967295u, 1u), vec4<f32>(180f, 1257f, -933f, -762f), vec2<u32>(3560u, 47792u), vec4<f32>(1269f, -1740f, -1727f, -424f)), Struct_1(vec3<u32>(76344u, 35483u, 0u), vec4<f32>(826f, -1102f, -404f, -285f), vec2<u32>(0u, 48895u), vec4<f32>(919f, -985f, 1383f, -225f)), Struct_1(vec3<u32>(3173u, 1u, 43561u), vec4<f32>(-1000f, 411f, 470f, 239f), vec2<u32>(4294967295u, 1u), vec4<f32>(-1000f, -1641f, -128f, -328f)), Struct_1(vec3<u32>(0u, 51827u, 48703u), vec4<f32>(-1941f, -545f, -354f, -1000f), vec2<u32>(23432u, 1u), vec4<f32>(-140f, -671f, 912f, 616f)), Struct_1(vec3<u32>(54672u, 43784u, 4294967295u), vec4<f32>(354f, 579f, -1000f, -278f), vec2<u32>(0u, 2880u), vec4<f32>(-1377f, 364f, 1000f, 159f)), Struct_1(vec3<u32>(1821u, 51923u, 75921u), vec4<f32>(-2126f, 947f, -785f, -771f), vec2<u32>(70596u, 66148u), vec4<f32>(-877f, -665f, 264f, 1000f)), Struct_1(vec3<u32>(6996u, 6371u, 43809u), vec4<f32>(575f, -515f, 1134f, -217f), vec2<u32>(38047u, 16702u), vec4<f32>(208f, -1560f, -921f, 1312f)), Struct_1(vec3<u32>(4294967295u, 4059u, 36221u), vec4<f32>(721f, 211f, -684f, 1088f), vec2<u32>(0u, 0u), vec4<f32>(1840f, 226f, 923f, 1238f)), Struct_1(vec3<u32>(4294967295u, 42519u, 4294967295u), vec4<f32>(633f, -1370f, 1000f, -2058f), vec2<u32>(1u, 36708u), vec4<f32>(145f, 188f, 391f, -551f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 45731u), vec4<f32>(677f, 1230f, -197f, -353f), vec2<u32>(1u, 97705u), vec4<f32>(-1000f, -2263f, -415f, 766f)), Struct_1(vec3<u32>(4294967295u, 0u, 18898u), vec4<f32>(-1000f, 761f, 636f, 567f), vec2<u32>(1u, 139692u), vec4<f32>(-1000f, -780f, 606f, 1477f)), Struct_1(vec3<u32>(34129u, 33609u, 1u), vec4<f32>(1133f, 1003f, -679f, -323f), vec2<u32>(25851u, 4294967295u), vec4<f32>(983f, -897f, 441f, -767f)), Struct_1(vec3<u32>(1u, 42825u, 4294967295u), vec4<f32>(658f, -1000f, 579f, 642f), vec2<u32>(19338u, 1u), vec4<f32>(-632f, -1893f, 1224f, -805f)), Struct_1(vec3<u32>(39300u, 4862u, 40923u), vec4<f32>(999f, 138f, 428f, 975f), vec2<u32>(4294967295u, 0u), vec4<f32>(981f, 936f, -446f, 406f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: bool) -> u32 {
    global4 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-877f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(830f - global2.d.x)))) - _wgslsmith_f_op_f32(ceil(1861f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1549f * _wgslsmith_f_op_f32(trunc(-1365f))), global2.b.x)));
    global0 = array<i32, 21>();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(31414u, global3.a.x) << (global2.c.x % 32u), 16u)];
    let var_2 = global1[_wgslsmith_index_u32(min(global3.a.x, abs(1u)), 16u)];
    return 0u;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(5817u, 0u), min(0u, arg_2.x)) << (reverseBits(func_3(62783u, 0i, u_input.a.x, true)) % 32u), ~4294967295u, ~1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.b, vec4<f32>(arg_0, -1000f, arg_0, arg_1.d.x), vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b + arg_1.b))), ~select((global2.a.xx & arg_2.zy) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_2.x), vec2<u32>(global3.c.x, arg_2.x), vec2<u32>(arg_2.x, global3.c.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(1u, 0u), _wgslsmith_sub_u32(global2.c.x, arg_1.a.x)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d)))))));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~var_0.c, vec2<u32>(arg_2.x, select(42208u, global2.a.x, true))) | (vec2<u32>(global3.a.x, 4294967295u) >> (abs(global3.a.xz) % vec2<u32>(32u))), vec2<u32>(~select(~var_0.a.x, min(global2.c.x, 29108u), any(vec4<bool>(false, true, false, false))), abs(_wgslsmith_div_u32(func_3(48977u, -17096i, -37369i, true), 1u)))), 24u)];
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, global3.c.x), 12353u, 4294967295u, _wgslsmith_div_u32(var_0.c.x, 53092u)), vec4<u32>(15292u, countOneBits(arg_1.a.x), ~arg_1.a.x, arg_2.x)), abs(reverseBits(~vec4<u32>(1u, 1u, 4720u, 43311u)))), ~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 51358u, 1u, var_0.c.x), ~vec4<u32>(var_0.c.x, 0u, global2.c.x, global2.a.x))));
    var var_3 = global1[_wgslsmith_index_u32(~(~abs(_wgslsmith_add_u32(~global3.a.x, countOneBits(var_1.c.x)))), 16u)];
    var var_4 = global1[_wgslsmith_index_u32(~var_0.c.x, 16u)];
    return Struct_1(countOneBits(vec3<u32>(~min(8696u, global3.a.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_3.c.x, arg_2.x), arg_1.c.x), var_1.c.x)), var_1.d, ~vec2<u32>(7581u, arg_2.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global2.d - global3.b), global2.d)) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1326f, var_4.d.x, var_4.d.x, 2044f), vec4<f32>(-512f, var_1.b.x, -423f, arg_1.d.x)), vec4<f32>(var_1.d.x, -345f, arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_4.d.x * -1179f), 994f, _wgslsmith_f_op_f32(arg_0 + -381f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(~(~(~(vec3<u32>(1u, 38740u, 34633u) | vec3<u32>(arg_1.x, arg_2.x, 1442u)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_f32(step(412f, 229f)))), -123f), global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-560f, global2.d.x), 669f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), global3.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_div_f32(arg_0.d.x, arg_0.b.x)), -622f, global3.a.x > _wgslsmith_clamp_u32(arg_1.x, 21789u, 68778u)))), vec2<u32>(~4294967295u, 61800u), vec4<f32>(_wgslsmith_f_op_f32(-175f + -1081f), _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1973f - global3.d.x) + _wgslsmith_f_op_f32(-2107f * 967f))), global3.d.x, global3.b.x));
    var var_1 = func_2(_wgslsmith_f_op_f32(floor(-473f)), Struct_1(arg_2, var_0.d, arg_2.zx, vec4<f32>(421f, _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d.x * 305f))), global2.d.x)), abs(var_0.a));
    var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.x))), Struct_1(vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~var_0.c.x), _wgslsmith_mult_u32(~arg_2.x, ~arg_2.x), arg_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global2.d)))), ~firstTrailingBit(vec2<u32>(arg_1.x, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(var_1.b.x, -334f, arg_0.d.x, global3.b.x), -956f == var_0.d.x)))), global3.a);
    let var_2 = 1i;
    var var_3 = vec3<i32>(global0[_wgslsmith_index_u32(arg_1.x, 21u)], abs(var_2), var_2);
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~arg_1.x << (988u % 32u), 1u), _wgslsmith_div_u32(53583u, 4294967295u)), 16u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    global0 = array<i32, 21>();
    global4 = array<Struct_1, 24>();
    global0 = array<i32, 21>();
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(-arg_1.d.x), Struct_1(vec3<u32>(abs(1u), 0u, _wgslsmith_add_u32(1u, 56336u)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -734f), 1479f), _wgslsmith_mult_vec2_u32(arg_3.a.yx, arg_3.a.zx), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-111f, arg_0, global2.d.x, -1000f)))), _wgslsmith_div_vec3_u32(global3.a, ~global3.a >> (_wgslsmith_add_vec3_u32(vec3<u32>(global3.a.x, 54024u, 0u), arg_3.a) % vec3<u32>(32u)))), global2.a.yx, select(~global2.a, arg_1.a, !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false)))));
    let var_1 = Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_3.a.x, 4294967295u), global3.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(global4[_wgslsmith_index_u32(1u, 24u)], vec2<u32>(4294967295u, arg_1.a.x), vec3<u32>(84501u, global2.a.x, 1u)).d.x, global3.d.x, _wgslsmith_f_op_f32(round(arg_1.d.x)), _wgslsmith_f_op_f32(-arg_3.d.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, 180f, arg_1.b.x, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global3.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.d.x, 188f, 1229f))))), vec2<u32>(reverseBits(reverseBits(21008u)), ~arg_1.a.x >> ((arg_1.c.x | arg_1.a.x) % 32u)) << (global2.a.zz % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(995f))))), 255f, -501f, _wgslsmith_f_op_f32(global2.b.x + -1162f)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(func_1(1036f, Struct_1(global3.a, vec4<f32>(-883f, -896f, global2.b.x, global2.d.x), vec2<u32>(6763u, 45786u), global2.d), 617i, Struct_1(vec3<u32>(1u, global2.c.x, global2.a.x), vec4<f32>(global2.b.x, global3.b.x, global2.b.x, global3.b.x), vec2<u32>(61132u, global2.a.x), global3.b)) || false)) && all(vec3<bool>(!all(vec4<bool>(false, false, false, true)), all(vec3<bool>(true, true, true)), true));
    let var_1 = select(!(!vec2<bool>(false, var_0)), vec2<bool>(true, select(var_0, func_2(-220f, global1[_wgslsmith_index_u32(35180u, 16u)], global3.a).a.x > reverseBits(global2.c.x), var_0)), !(!any(vec3<bool>(true, var_0, var_0))) || var_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(exp2(global3.b.x)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(global3.d.x)), global1[_wgslsmith_index_u32(11887u, 16u)], global2.a).d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))), !var_1.x)));
    var var_3 = ~(~vec4<u32>(global3.a.x & ~global2.c.x, 1u, 4960u, 58323u));
    global1 = array<Struct_1, 16>();
    var var_4 = Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-590f * -746f), _wgslsmith_f_op_f32(-global3.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2, 590f)), -161f), _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(global2.d.x + var_2))), global3.b.x))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(global2.a.x, global3.a.x) << (vec2<u32>(global3.c.x, global2.a.x) % vec2<u32>(32u))), ~firstTrailingBit(global3.c)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, global3.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.x - -374f) - _wgslsmith_div_f32(global2.d.x, -169f)) - _wgslsmith_div_f32(-588f, -1686f)), _wgslsmith_f_op_f32(global3.d.x - _wgslsmith_f_op_f32(min(global3.b.x, global2.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u >> (var_4.a.x % 32u), 21273u, 47027u), global3.a ^ vec3<u32>(global2.a.x, _wgslsmith_dot_vec2_u32(global3.a.zz, vec2<u32>(var_4.a.x, 9392u)), reverseBits(4294967295u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))), u_input.a.x, ~(~vec3<u32>(var_3.x, var_4.c.x, var_3.x) >> ((vec3<u32>(34635u, var_4.c.x, 1406u) ^ global3.a) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(var_3.xwx, vec3<u32>(abs(global2.a.x), firstTrailingBit(var_4.a.x), _wgslsmith_div_u32(4294967295u, 44308u))));
}

