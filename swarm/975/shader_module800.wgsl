struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec2<u32>(80981u, 0u), vec2<bool>(true, false), vec3<u32>(59839u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, false), vec3<u32>(1u, 0u, 23718u))), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, true), vec3<u32>(4294967295u, 32561u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 152573u), vec2<bool>(true, true), vec3<u32>(21448u, 1u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(false, true), vec3<u32>(0u, 0u, 20333u))), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec2<bool>(true, false), vec3<u32>(0u, 0u, 0u))), Struct_2(Struct_1(vec2<u32>(66058u, 4294967295u), vec2<bool>(true, false), vec3<u32>(4818u, 21180u, 1u))), Struct_2(Struct_1(vec2<u32>(26859u, 4294967295u), vec2<bool>(true, true), vec3<u32>(4294967295u, 4294967295u, 34231u))), Struct_2(Struct_1(vec2<u32>(24344u, 4294967295u), vec2<bool>(true, true), vec3<u32>(74006u, 32229u, 33593u))), Struct_2(Struct_1(vec2<u32>(0u, 25168u), vec2<bool>(false, true), vec3<u32>(22504u, 0u, 20382u))), Struct_2(Struct_1(vec2<u32>(31191u, 21418u), vec2<bool>(true, false), vec3<u32>(14309u, 5175u, 30301u))), Struct_2(Struct_1(vec2<u32>(45886u, 1u), vec2<bool>(true, false), vec3<u32>(0u, 1u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 6294u), vec2<bool>(false, true), vec3<u32>(1u, 11903u, 0u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 56640u), vec2<bool>(true, false), vec3<u32>(1u, 11669u, 0u))), Struct_2(Struct_1(vec2<u32>(22786u, 4294967295u), vec2<bool>(false, false), vec3<u32>(80618u, 1u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(65520u, 1u), vec2<bool>(true, true), vec3<u32>(0u, 1u, 29415u))), Struct_2(Struct_1(vec2<u32>(4762u, 4294967295u), vec2<bool>(false, false), vec3<u32>(3117u, 4294967295u, 56827u))), Struct_2(Struct_1(vec2<u32>(31513u, 1u), vec2<bool>(false, false), vec3<u32>(42339u, 38487u, 111225u))), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec2<bool>(false, true), vec3<u32>(0u, 6132u, 16944u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 72754u), vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 24533u))), Struct_2(Struct_1(vec2<u32>(6151u, 0u), vec2<bool>(true, true), vec3<u32>(4294967295u, 39732u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(24906u, 69868u), vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(false, false), vec3<u32>(14150u, 128683u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 12779u), vec2<bool>(true, false), vec3<u32>(34479u, 4294967295u, 24959u))), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), vec3<u32>(0u, 1u, 47454u))), Struct_2(Struct_1(vec2<u32>(1493u, 51206u), vec2<bool>(false, false), vec3<u32>(4294967295u, 48836u, 0u))));

var<private> global1: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-296f, 183f, 1085f), vec3<f32>(-205f, 1000f, -660f), vec3<f32>(-1553f, -258f, 738f), vec3<f32>(-1958f, 945f, -635f), vec3<f32>(-596f, 311f, -772f), vec3<f32>(-558f, 580f, 437f), vec3<f32>(-1348f, -809f, 1949f), vec3<f32>(869f, -635f, -1335f), vec3<f32>(523f, 143f, 703f), vec3<f32>(794f, -439f, -1000f), vec3<f32>(1646f, 485f, -1194f), vec3<f32>(-535f, 1197f, -2800f), vec3<f32>(1266f, -699f, -676f), vec3<f32>(-519f, -586f, 820f), vec3<f32>(1028f, 1048f, 579f), vec3<f32>(1167f, -825f, -1509f), vec3<f32>(557f, 608f, 1010f), vec3<f32>(2005f, 474f, -779f), vec3<f32>(1541f, 993f, 1125f), vec3<f32>(1060f, 2283f, -134f), vec3<f32>(-2713f, 693f, -744f), vec3<f32>(-326f, 1000f, -1023f), vec3<f32>(-542f, 964f, 2724f), vec3<f32>(-1110f, -295f, 307f), vec3<f32>(-1464f, 781f, 1332f));

var<private> global2: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(-533f, vec4<f32>(946f, 2176f, 1625f, 1000f), 91383u, 0i, vec3<f32>(1227f, 1203f, -916f)), Struct_4(-1000f, vec4<f32>(1000f, 2232f, -1096f, -2272f), 127724u, 0i, vec3<f32>(-870f, -730f, 410f)), Struct_4(1189f, vec4<f32>(-573f, 293f, -1108f, -1207f), 4294967295u, -46526i, vec3<f32>(-543f, -557f, 1170f)), Struct_4(-1270f, vec4<f32>(1114f, -618f, 160f, 638f), 0u, -1586i, vec3<f32>(-315f, 1113f, 2374f)), Struct_4(1123f, vec4<f32>(-191f, 563f, 1836f, 1000f), 1u, 2147483647i, vec3<f32>(794f, -232f, 924f)), Struct_4(-167f, vec4<f32>(-795f, 123f, -359f, -1050f), 4294967295u, 2147483647i, vec3<f32>(-1844f, -933f, -1140f)), Struct_4(236f, vec4<f32>(-914f, -1484f, -2059f, -153f), 1u, -17739i, vec3<f32>(865f, 614f, 1508f)), Struct_4(-102f, vec4<f32>(-740f, 1000f, 1539f, 186f), 4176u, 60892i, vec3<f32>(717f, 939f, 800f)), Struct_4(1836f, vec4<f32>(-1117f, 3737f, 198f, 1326f), 0u, 226i, vec3<f32>(544f, -702f, -176f)), Struct_4(-854f, vec4<f32>(1000f, 899f, -1261f, -1565f), 4294967295u, -1i, vec3<f32>(-1076f, -363f, -1000f)), Struct_4(162f, vec4<f32>(-183f, 540f, -656f, -483f), 1u, -45055i, vec3<f32>(236f, -394f, -961f)), Struct_4(-177f, vec4<f32>(-257f, 704f, 470f, -2233f), 61786u, 2147483647i, vec3<f32>(-1678f, -1152f, -595f)), Struct_4(1000f, vec4<f32>(-642f, 1594f, 920f, 281f), 1u, i32(-2147483648), vec3<f32>(839f, -963f, 1847f)), Struct_4(638f, vec4<f32>(-2330f, -1403f, -726f, 823f), 1u, 18403i, vec3<f32>(-502f, 1927f, -1000f)), Struct_4(-1582f, vec4<f32>(-592f, -943f, 1545f, 2117f), 72554u, -7258i, vec3<f32>(-1083f, 1233f, -873f)), Struct_4(-1072f, vec4<f32>(-1000f, 306f, -794f, -484f), 40529u, 1i, vec3<f32>(947f, -2246f, 1422f)));

var<private> global3: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, _wgslsmith_add_u32(global3.c, 0u))), _wgslsmith_mod_u32(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.c), vec2<u32>(u_input.b, 0u))), ~(~_wgslsmith_add_u32(u_input.b, 97452u)))), 26u)];
}

fn func_3() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a, 175f, global3.e.x, -2683f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1505f, global3.a, -137f, global3.e.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(1473f, _wgslsmith_f_op_f32(global3.b.x + global3.a), 549f, _wgslsmith_f_op_f32(-global3.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(819f, -178f, global3.e.x, global3.a) - global3.b) * vec4<f32>(1000f, global3.e.x, 958f, global3.a))), false)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1022f))), _wgslsmith_f_op_f32(max(301f, global3.a)), global3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-156f)), _wgslsmith_f_op_f32(sign(global3.e.x)))));
    let var_1 = func_2().a;
    var var_2 = !vec4<bool>(true, var_1.b.x, true, func_2().a.b.x);
    let var_3 = var_1.b.x;
    global3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1154f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), -2472f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + global3.b.x)))), global3.b, ~firstLeadingBit(94121u), abs(abs(~u_input.c.x) >> (max(firstTrailingBit(3288u), ~4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.b.x, 942f, global3.e.x))) * _wgslsmith_f_op_vec3_f32(sign(global3.e))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(276f, 906f, global3.a))))))));
    return Struct_2(var_1);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = global3.b;
    let var_1 = func_2();
    global2 = array<Struct_4, 16>();
    var var_2 = -global3.d;
    var var_3 = Struct_3((~1u == _wgslsmith_mod_u32(max(82423u, 51092u), global3.c)) == (true && arg_2.a), func_2(), global3.a, func_3(), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.e.x))) * var_0.x), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - arg_2.c)) * _wgslsmith_f_op_f32(min(-165f, _wgslsmith_f_op_f32(487f + arg_0))))));
    return vec4<bool>(all(vec3<bool>(!any(vec3<bool>(var_3.d.a.b.x, var_1.a.b.x, true)), all(vec3<bool>(false, var_3.a, false)), arg_2.d.a.b.x)), -42289i >= firstTrailingBit(global3.d), ((u_input.a.x | (global3.d | 1i)) <= global3.d) || true, var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    global2 = array<Struct_4, 16>();
    let var_0 = vec2<bool>(false, !any(!func_1(752f, 4294967295u, Struct_3(false, Struct_2(Struct_1(vec2<u32>(global3.c, global3.c), vec2<bool>(false, false), vec3<u32>(66498u, 70271u, u_input.b))), 133f, global0[_wgslsmith_index_u32(4294967295u, 26u)], vec3<f32>(1018f, global3.b.x, global3.e.x)), vec4<u32>(global3.c, u_input.b, global3.c, u_input.b))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(global3.e.x - global3.a));
    global0 = array<Struct_2, 26>();
    var var_2 = Struct_5(global2[_wgslsmith_index_u32(u_input.b, 16u)], ~4294967295u, -u_input.c.yx << (vec2<u32>(reverseBits(~u_input.b), _wgslsmith_mod_u32(global3.c, firstTrailingBit(52875u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-global3.b), Struct_3(true, func_3(), _wgslsmith_f_op_f32(-1509f * global3.e.x), global0[_wgslsmith_index_u32(global3.c, 26u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global3.a, -497f))) + _wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(func_3().a.c.x, 25u)])))));
    var var_3 = Struct_5(Struct_4(-2177f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(726f, global3.a, 150f, 270f) * global3.b), vec4<f32>(var_2.e.c, var_2.d.x, var_2.d.x, global3.b.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(706f, var_2.a.a, 609f, var_2.e.c)), _wgslsmith_f_op_vec4_f32(max(global3.b, var_2.d)), vec4<bool>(var_2.e.d.a.b.x, var_2.e.b.a.b.x, true, false)))), 4294967295u, -17239i, var_2.a.e), u_input.b, u_input.a.yy << (~(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(var_2.a.c, var_2.b))) % vec2<u32>(32u)), var_2.a.b, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~vec2<u32>(2231u, 0u), firstTrailingBit(~var_3.e.d.a.c.xz)), vec4<i32>(reverseBits(~(-2147483647i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~26625i, global3.d), 0i), u_input.a.x, -25043i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(495f)) - -1124f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1709f, 1875f))), 1f))));
}

