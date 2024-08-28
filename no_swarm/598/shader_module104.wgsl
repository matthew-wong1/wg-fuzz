struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, 1305f, 1123f, -142f), 7346u), 24924i, vec3<i32>(13362i, -8924i, 0i), vec2<i32>(-5674i, 22787i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-869f, 1056f, 1000f, -732f), 4294967295u), 1i, vec3<i32>(i32(-2147483648), -77146i, 17454i), vec2<i32>(-71317i, 1i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1205f, -750f, -409f, -1555f), 0u), -30163i, vec3<i32>(22920i, 1i, -41063i), vec2<i32>(23018i, 29605i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-868f, 1000f, -342f, 1000f), 4294967295u), -3446i, vec3<i32>(i32(-2147483648), 640i, 18049i), vec2<i32>(1i, 2147483647i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1374f, 1000f, -1172f, 160f), 85705u), -5984i, vec3<i32>(1i, 2147483647i, -3767i), vec2<i32>(-3077i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1000f, -1997f, 706f, 1204f), 28668u), 0i, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec2<i32>(-1i, 2147483647i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1834f, 1190f, -148f, 1394f), 24421u), -19247i, vec3<i32>(-12666i, 2147483647i, 11836i), vec2<i32>(-46645i, -35456i))), Struct_3(Struct_2(Struct_1(vec4<f32>(1123f, 871f, -426f, -1000f), 82678u), -2644i, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec2<i32>(-52919i, -11570i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1184f, -467f, -701f, 2075f), 65424u), 0i, vec3<i32>(i32(-2147483648), 52062i, 8784i), vec2<i32>(0i, 2147483647i))), Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, -188f, 611f, -736f), 0u), -36457i, vec3<i32>(1i, -33793i, 2147483647i), vec2<i32>(13862i, -12060i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-250f, 1261f, -347f, -679f), 0u), 15446i, vec3<i32>(47794i, 2147483647i, 17984i), vec2<i32>(2147483647i, 66513i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-226f, -1046f, -1198f, 1273f), 84543u), 2147483647i, vec3<i32>(23398i, 4055i, 2147483647i), vec2<i32>(i32(-2147483648), -19505i))), Struct_3(Struct_2(Struct_1(vec4<f32>(1632f, -1356f, -513f, 520f), 0u), 12607i, vec3<i32>(-55491i, -26840i, -1i), vec2<i32>(11912i, -1i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1274f, 310f, -930f, 561f), 0u), -1i, vec3<i32>(0i, 0i, 8847i), vec2<i32>(-1i, 1i))));

var<private> global2: f32 = 523f;

var<private> global3: vec3<f32> = vec3<f32>(-1015f, -2381f, 573f);

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(-286f, -374f, -1000f, 256f), 4294967295u), Struct_1(vec4<f32>(-868f, 1637f, 1248f, 1451f), 0u), Struct_1(vec4<f32>(944f, -428f, -435f, 689f), 19195u), Struct_1(vec4<f32>(114f, 279f, -2085f, -2260f), 1u), Struct_1(vec4<f32>(1048f, -1635f, -165f, -759f), 4294967295u), Struct_1(vec4<f32>(-1090f, 1254f, 1000f, -378f), 1u), Struct_1(vec4<f32>(-1472f, 262f, -206f, -206f), 1u), Struct_1(vec4<f32>(-1893f, -1623f, 599f, -109f), 0u), Struct_1(vec4<f32>(259f, 1060f, 758f, 272f), 1u), Struct_1(vec4<f32>(177f, 238f, -2330f, 954f), 46858u), Struct_1(vec4<f32>(-908f, 2041f, -1000f, 837f), 53662u), Struct_1(vec4<f32>(-531f, -172f, -2376f, 475f), 30910u), Struct_1(vec4<f32>(-1392f, -1561f, 1618f, 1000f), 6326u), Struct_1(vec4<f32>(419f, 1163f, 202f, 1226f), 13207u), Struct_1(vec4<f32>(-528f, -500f, -1000f, 236f), 4294967295u), Struct_1(vec4<f32>(-251f, 1117f, 1486f, 1000f), 4294967295u), Struct_1(vec4<f32>(-270f, 161f, -966f, 800f), 4294967295u), Struct_1(vec4<f32>(507f, 1388f, 758f, 1382f), 7790u), Struct_1(vec4<f32>(-2172f, -224f, 1273f, 328f), 75327u), Struct_1(vec4<f32>(165f, 1313f, -2088f, 1141f), 78584u), Struct_1(vec4<f32>(2151f, 270f, -590f, -317f), 6804u), Struct_1(vec4<f32>(-1010f, 1074f, -253f, 1166f), 14641u), Struct_1(vec4<f32>(585f, -361f, 128f, -991f), 8156u), Struct_1(vec4<f32>(1279f, -1580f, 252f, 1503f), 1u), Struct_1(vec4<f32>(-822f, -1747f, -133f, -417f), 12349u), Struct_1(vec4<f32>(-785f, -1307f, 140f, -275f), 0u), Struct_1(vec4<f32>(329f, 1000f, -184f, 880f), 24079u), Struct_1(vec4<f32>(1320f, -1535f, 2260f, 1000f), 63459u), Struct_1(vec4<f32>(786f, -293f, -762f, -259f), 75541u), Struct_1(vec4<f32>(-970f, -906f, -2377f, 843f), 0u), Struct_1(vec4<f32>(-533f, 1476f, -644f, -481f), 62718u), Struct_1(vec4<f32>(987f, -2171f, -495f, 1000f), 49549u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: bool) -> i32 {
    var var_0 = !vec4<bool>(all(!select(vec3<bool>(false, true, arg_3), vec3<bool>(arg_3, true, false), vec3<bool>(false, arg_3, true))), false, true || select(true, true, arg_3), any(select(!vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3), arg_3)));
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(27368u, 32u)], arg_0, vec3<i32>(~(~(-3836i)), -9868i, 0i), reverseBits(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(arg_0, arg_0))), max(vec2<i32>(37980i, -19687i), vec2<i32>(arg_0, arg_0) ^ vec2<i32>(-1i, -1i)))));
    var var_2 = vec4<bool>(!var_0.x, any(var_0.xx), select(var_0.x, false, var_0.x), (false & (firstTrailingBit(arg_0) <= (arg_0 >> (var_1.a.b % 32u)))) & all(vec3<bool>(true, var_0.x & var_0.x, arg_3 & false)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a), _wgslsmith_f_op_vec3_f32(round(arg_1.a))), vec3<f32>(153f, _wgslsmith_div_f32(global3.x, global3.x), 1168f), !vec3<bool>(var_0.x, var_2.x, arg_3))))));
    var_0 = vec4<bool>(!any(!vec4<bool>(var_2.x, true, var_2.x, false)), all(vec4<bool>(all(!var_0.zy), true, true, true)), var_2.x, all(vec3<bool>(var_3.a.x >= var_3.a.x, false, !select(var_0.x, arg_3, true))));
    return arg_0;
}

fn func_2() -> i32 {
    var var_0 = -(~_wgslsmith_sub_i32(countOneBits(func_3(1i, Struct_4(vec3<f32>(global3.x, 1000f, global3.x)), vec2<u32>(16843u, 4294967295u), true)), ~(i32(-1i) * -46772i)));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1343f)))), _wgslsmith_f_op_f32(max(-1073f, _wgslsmith_f_op_f32(global3.x - -1045f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(338f)), _wgslsmith_f_op_f32(trunc(-459f))))));
    global4 = array<Struct_1, 32>();
    let var_2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, ~countOneBits(0i)), -32553i), ~2147483647i);
    var var_3 = ~(~(~(abs(35351i) & var_2.x)));
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> bool {
    return !any(select(!vec3<bool>(false, arg_1.x, true), select(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, true), arg_1.x), select(vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), false), true));
}

fn func_5(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1886f), _wgslsmith_f_op_f32(-1000f - 464f))))))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(76301u, 4294967295u), vec2<u32>(4294967295u, 69729u)) & ~min(vec2<u32>(u_input.a, 36141u), vec2<u32>(u_input.a, 25738u)), abs(vec2<u32>(u_input.a, ~4294967295u))), _wgslsmith_mult_u32(select(~(u_input.a << (u_input.a % 32u)), ~_wgslsmith_mult_u32(20528u, u_input.a), false), ~(~_wgslsmith_mult_u32(38499u, u_input.a))), u_input.a, 1u);
    global0 = array<vec3<f32>, 4>();
    return Struct_3(Struct_2(global4[_wgslsmith_index_u32(~0u, 32u)], 20955i, select(-vec3<i32>(-16556i, -2147483647i, -1i) << ((vec3<u32>(u_input.a, var_1.x, 73855u) << (var_1.xxz % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(~(-1i), -19005i, 1i), true), countOneBits(~vec2<i32>(-103670i, 0i))));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_5(any(vec3<bool>(true | select(true, false, false), true, func_4(func_2(), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(var_0.a.a.a.wyz));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(206f + _wgslsmith_f_op_f32(floor(1430f))))) - _wgslsmith_f_op_f32(-global3.x));
    var var_3 = vec3<u32>(var_0.a.a.b, func_5(false).a.a.b, ~60790u);
    var var_4 = vec3<f32>(var_1.x, global3.x, -976f);
    return firstTrailingBit(vec3<u32>(countOneBits(_wgslsmith_div_u32(var_3.x, var_3.x)), ~(~reverseBits(var_3.x)), var_0.a.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 4>();
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(811f)), _wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(f32(-1f) * -2160f)))) - _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.a, 139226u)), 1u), 4u)])));
    var var_0 = select(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 16528u)) << (reverseBits(vec3<u32>(4223u, 1u, u_input.a)) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(u_input.a), u_input.a, 1u)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(39755u, u_input.a, u_input.a), abs(vec3<u32>(0u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 14191u, 22251u)), func_1()) >> (select(vec3<u32>(~0u, 0u, _wgslsmith_add_u32(0u, 58060u)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 66641u), vec3<u32>(u_input.a, 0u, u_input.a)), ~vec3<u32>(u_input.a, 1u, 4294967295u)), true) % vec3<u32>(32u)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))));
    let var_1 = ~(~_wgslsmith_clamp_i32(18644i, -1i, -29001i >> (1u % 32u)));
    var var_2 = func_5(true).a;
    global0 = array<vec3<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a.a * vec4<f32>(147f, global3.x, 1000f, -287f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(404f, -107f, -1688f, 1243f) - var_2.a.a)))));
}

