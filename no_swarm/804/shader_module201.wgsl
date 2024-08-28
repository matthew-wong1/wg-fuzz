struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 38504i;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_2(1u, vec3<u32>(4294967295u, 32646u, 0u), vec3<f32>(-594f, -534f, 863f), Struct_1(vec2<i32>(1i, -60496i)), vec4<f32>(-250f, -189f, 1457f, -1612f)), vec2<f32>(1375f, 668f), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 12999i), -1382f), Struct_3(Struct_2(0u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<f32>(1074f, -1000f, 752f), Struct_1(vec2<i32>(1i, -28934i)), vec4<f32>(1112f, 712f, 264f, -106f)), vec2<f32>(-386f, 1983f), vec4<i32>(1i, -18079i, -1i, -1i), 485f), Struct_3(Struct_2(0u, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-778f, 211f, 541f), Struct_1(vec2<i32>(0i, 2147483647i)), vec4<f32>(527f, 982f, 1000f, 316f)), vec2<f32>(-623f, 2649f), vec4<i32>(1i, 3046i, 0i, 62813i), -1000f), Struct_3(Struct_2(4294967295u, vec3<u32>(10113u, 1u, 1u), vec3<f32>(-1147f, -1021f, 827f), Struct_1(vec2<i32>(20014i, 21669i)), vec4<f32>(-1388f, -147f, -802f, -553f)), vec2<f32>(-1000f, -309f), vec4<i32>(i32(-2147483648), i32(-2147483648), -16002i, -8584i), 1035f), Struct_3(Struct_2(20452u, vec3<u32>(26231u, 1u, 4294967295u), vec3<f32>(-455f, 872f, 867f), Struct_1(vec2<i32>(i32(-2147483648), 22199i)), vec4<f32>(385f, -1408f, -972f, -1162f)), vec2<f32>(-786f, 397f), vec4<i32>(-1i, 0i, -449i, -16696i), 1154f), Struct_3(Struct_2(79439u, vec3<u32>(30010u, 1u, 0u), vec3<f32>(-1160f, -1103f, -324f), Struct_1(vec2<i32>(2147483647i, 24966i)), vec4<f32>(171f, -127f, 2245f, 1342f)), vec2<f32>(886f, -168f), vec4<i32>(28000i, 1i, 48639i, 1808i), -972f), Struct_3(Struct_2(17806u, vec3<u32>(50537u, 39300u, 54676u), vec3<f32>(-432f, 2052f, -213f), Struct_1(vec2<i32>(1i, 1i)), vec4<f32>(601f, -1339f, -1000f, -741f)), vec2<f32>(-1342f, -923f), vec4<i32>(-2113i, -1i, 0i, 0i), 784f), Struct_3(Struct_2(78460u, vec3<u32>(8124u, 4294967295u, 28062u), vec3<f32>(192f, 369f, 320f), Struct_1(vec2<i32>(1i, 38303i)), vec4<f32>(1000f, -182f, -336f, 684f)), vec2<f32>(-199f, 1000f), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 12639i), -681f), Struct_3(Struct_2(25135u, vec3<u32>(36632u, 4294967295u, 1u), vec3<f32>(1093f, -1000f, -2003f), Struct_1(vec2<i32>(8464i, 2147483647i)), vec4<f32>(-295f, -1527f, 543f, -119f)), vec2<f32>(-1987f, 353f), vec4<i32>(1563i, -22341i, 46773i, -7260i), 259f), Struct_3(Struct_2(1u, vec3<u32>(11950u, 0u, 59704u), vec3<f32>(-813f, -326f, -1067f), Struct_1(vec2<i32>(802i, -1i)), vec4<f32>(-787f, -462f, -1052f, -908f)), vec2<f32>(1950f, -913f), vec4<i32>(-45786i, 53136i, -3710i, 38326i), -1202f), Struct_3(Struct_2(42043u, vec3<u32>(29911u, 0u, 4294967295u), vec3<f32>(1032f, 1478f, -663f), Struct_1(vec2<i32>(-41306i, 2147483647i)), vec4<f32>(-700f, -2138f, -1309f, 1285f)), vec2<f32>(-1333f, -1165f), vec4<i32>(1i, 24314i, -22403i, -1i), 579f), Struct_3(Struct_2(6308u, vec3<u32>(4294967295u, 0u, 25452u), vec3<f32>(-458f, 1151f, -485f), Struct_1(vec2<i32>(7742i, 0i)), vec4<f32>(-399f, 535f, 295f, -474f)), vec2<f32>(345f, 1000f), vec4<i32>(-1i, -26503i, -11454i, 1i), 1081f), Struct_3(Struct_2(8273u, vec3<u32>(12992u, 1u, 4294967295u), vec3<f32>(-1823f, 788f, 930f), Struct_1(vec2<i32>(38511i, -48974i)), vec4<f32>(1042f, 1001f, 1000f, 413f)), vec2<f32>(298f, -867f), vec4<i32>(47509i, 0i, -19303i, -1i), 1000f), Struct_3(Struct_2(3602u, vec3<u32>(1u, 1u, 0u), vec3<f32>(-766f, 1568f, -694f), Struct_1(vec2<i32>(28898i, -20001i)), vec4<f32>(1155f, -1874f, 2676f, 247f)), vec2<f32>(668f, 1495f), vec4<i32>(37924i, -34926i, 0i, 1i), -153f), Struct_3(Struct_2(47266u, vec3<u32>(61572u, 0u, 4294967295u), vec3<f32>(890f, -1387f, 883f), Struct_1(vec2<i32>(-29206i, 33718i)), vec4<f32>(-430f, 976f, -576f, -122f)), vec2<f32>(488f, -792f), vec4<i32>(-1i, -9392i, -1i, -65190i), 749f), Struct_3(Struct_2(26082u, vec3<u32>(29087u, 15716u, 33663u), vec3<f32>(172f, -1232f, -538f), Struct_1(vec2<i32>(i32(-2147483648), -22199i)), vec4<f32>(-465f, 1881f, -887f, 1649f)), vec2<f32>(830f, 472f), vec4<i32>(11208i, -53635i, i32(-2147483648), i32(-2147483648)), -1106f), Struct_3(Struct_2(30977u, vec3<u32>(0u, 48415u, 0u), vec3<f32>(-442f, 1777f, 836f), Struct_1(vec2<i32>(0i, i32(-2147483648))), vec4<f32>(-1000f, -948f, 1652f, -853f)), vec2<f32>(578f, -1000f), vec4<i32>(-9826i, 1i, 11819i, -7242i), 597f), Struct_3(Struct_2(4294967295u, vec3<u32>(69917u, 1u, 4294967295u), vec3<f32>(1135f, 518f, -266f), Struct_1(vec2<i32>(0i, i32(-2147483648))), vec4<f32>(-100f, -723f, -1279f, -682f)), vec2<f32>(-325f, 280f), vec4<i32>(3356i, -12350i, 2147483647i, 1i), 135f), Struct_3(Struct_2(6132u, vec3<u32>(0u, 4294967295u, 20334u), vec3<f32>(885f, 875f, 1819f), Struct_1(vec2<i32>(2147483647i, -78995i)), vec4<f32>(-591f, 603f, -1750f, 143f)), vec2<f32>(1076f, 173f), vec4<i32>(-15281i, i32(-2147483648), -6240i, 0i), -562f), Struct_3(Struct_2(1u, vec3<u32>(0u, 52431u, 7602u), vec3<f32>(1492f, 179f, -1113f), Struct_1(vec2<i32>(-32301i, 1i)), vec4<f32>(-565f, 1000f, -1000f, 591f)), vec2<f32>(-304f, -521f), vec4<i32>(0i, 0i, 50111i, 46090i), -345f), Struct_3(Struct_2(1u, vec3<u32>(1u, 23101u, 4294967295u), vec3<f32>(-1540f, 813f, -288f), Struct_1(vec2<i32>(-1i, 1i)), vec4<f32>(217f, -795f, -1687f, -1482f)), vec2<f32>(406f, 1069f), vec4<i32>(2147483647i, 2147483647i, 9133i, -21142i), 1000f), Struct_3(Struct_2(38697u, vec3<u32>(0u, 98761u, 1u), vec3<f32>(-1285f, -268f, -1326f), Struct_1(vec2<i32>(0i, 19672i)), vec4<f32>(-973f, -313f, 472f, 1501f)), vec2<f32>(1139f, 732f), vec4<i32>(1i, i32(-2147483648), 1i, -39695i), -1127f), Struct_3(Struct_2(4294967295u, vec3<u32>(1u, 65560u, 4294967295u), vec3<f32>(-427f, 723f, -1000f), Struct_1(vec2<i32>(-20468i, -1i)), vec4<f32>(-738f, -341f, 1084f, 927f)), vec2<f32>(1005f, 589f), vec4<i32>(-1i, -1i, 12699i, 2147483647i), -1000f), Struct_3(Struct_2(4294967295u, vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(897f, 352f, 997f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), vec4<f32>(-1662f, 446f, 221f, -254f)), vec2<f32>(1160f, -973f), vec4<i32>(29775i, 2147483647i, 5668i, 9552i), 1045f));

var<private> global3: array<Struct_4, 13>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(~0u, 13u)];
    return _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f - 1246f))) - -141f));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_vec3_i32(~((-vec3<i32>(u_input.d, 22955i, -2147483647i) | ~vec3<i32>(-1i, u_input.d, u_input.d)) << (firstTrailingBit(vec3<u32>(u_input.a.x, 13110u, u_input.c)) % vec3<u32>(32u))), (vec3<i32>(reverseBits(2147483647i), 2147483647i, abs(1i)) ^ vec3<i32>(~u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d), firstTrailingBit(46406i))) << (_wgslsmith_div_vec3_u32(u_input.b, ~u_input.b) % vec3<u32>(32u)), -((vec3<i32>(u_input.d, 0i, u_input.d) >> (min(u_input.b, vec3<u32>(u_input.a.x, u_input.c, u_input.b.x)) % vec3<u32>(32u))) >> (u_input.b % vec3<u32>(32u))));
    let var_1 = global3[_wgslsmith_index_u32(58102u, 13u)];
    global1 = _wgslsmith_sub_i32(~1i, _wgslsmith_sub_i32(u_input.d, -var_0.x));
    global0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1222f - -1208f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1261f - -830f) - -1605f))), -vec2<i32>(-1774i | var_0.x, reverseBits(-2147483647i)) & ~var_0.zx));
    global2 = array<Struct_3, 24>();
    return firstLeadingBit(vec4<u32>(5600u, var_1.b, ~(~var_1.d.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 100305u), u_input.b.zx), _wgslsmith_mult_vec2_u32(u_input.b.zz, vec2<u32>(var_1.b, u_input.c)))) | ~(~(~vec4<u32>(25787u, u_input.c, 1u, 18637u))));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> i32 {
    var var_0 = ~(func_2() >> (firstTrailingBit(vec4<u32>(arg_0.a.a, u_input.c, 12149u, u_input.c & arg_0.a.a)) % vec4<u32>(32u)));
    global3 = array<Struct_4, 13>();
    let var_1 = select(select(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(floor(arg_0.b.x)) != 610f), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, all(vec2<bool>(false, true)), true), any(vec4<bool>(true, true, true, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true))), false, true), var_0.x == u_input.c);
    let var_2 = 4294967295u;
    var var_3 = Struct_4(select(!(!var_1), var_1, !select(select(var_1, vec3<bool>(false, true, false), var_1), select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.x), select(var_1, var_1, var_1.x))), ~var_2, var_2, ~_wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(0u, 1u)), firstLeadingBit(u_input.b.zy)));
    return _wgslsmith_sub_i32(~u_input.d, 32372i ^ -(~(~arg_0.a.d.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global1 = _wgslsmith_clamp_i32(~0i, reverseBits(func_1(global2[_wgslsmith_index_u32(1u, 24u)], -1664f)) << (firstTrailingBit(u_input.b.x) % 32u), func_1(Struct_3(Struct_2(_wgslsmith_mult_u32(u_input.b.x, 10654u), u_input.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1297f, 2209f, 137f))), Struct_1(vec2<i32>(0i, 10740i)), vec4<f32>(531f, -1000f, 1000f, -175f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-946f, 1143f), vec2<f32>(-1354f, 928f)))), abs(~vec4<i32>(-10752i, 0i, 16828i, -2147483647i)), -1000f), 1000f));
    var var_1 = -19924i;
    var var_2 = func_2().x;
    let var_3 = u_input.a.x;
    var var_4 = ~var_3;
    global2 = array<Struct_3, 24>();
    var var_5 = Struct_2(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_u32(abs(u_input.a.x), var_3))), u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(178f, -734f, -1022f) * vec3<f32>(947f, 1329f, -1013f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, -471f, -597f)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1000f, -896f)), Struct_1(~firstTrailingBit(vec2<i32>(var_0, -35442i) >> (u_input.a % vec2<u32>(32u)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(525f)), -454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f - 1085f)), _wgslsmith_f_op_f32(-666f + _wgslsmith_div_f32(-681f, 228f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(434f, 424f, 533f, 570f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-153f, 1871f, -326f, 903f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_5.d.a.x, u_input.d, u_input.d)), -_wgslsmith_div_vec3_i32(vec3<i32>(var_5.d.a.x, var_0, -37756i), vec3<i32>(8093i, -2891i, var_0))), ~u_input.d, firstLeadingBit(var_3), var_3, ~var_5.b.x);
}

