struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<f32>(106f, -323f, 541f, 122f), vec3<f32>(1000f, -813f, 1000f), -27324i, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec4<f32>(338f, 1203f, 1153f, -1192f), vec3<f32>(268f, -521f, -600f), -35051i, vec4<i32>(-10057i, 2147483647i, -29097i, 1i))), Struct_2(Struct_1(vec4<f32>(175f, 602f, 784f, -777f), vec3<f32>(121f, 407f, -485f), -37513i, vec4<i32>(2147483647i, -26544i, 26884i, 1i))), Struct_2(Struct_1(vec4<f32>(-660f, -589f, 109f, -1629f), vec3<f32>(1000f, -520f, 1774f), -13157i, vec4<i32>(7050i, i32(-2147483648), -1i, -22077i))), Struct_2(Struct_1(vec4<f32>(1207f, -1657f, -552f, -2272f), vec3<f32>(772f, -275f, 746f), -1i, vec4<i32>(21294i, 13846i, 1i, 0i))), Struct_2(Struct_1(vec4<f32>(-1716f, 318f, 1241f, 1219f), vec3<f32>(1336f, 852f, 1727f), -1i, vec4<i32>(29139i, -2657i, 1i, 39476i))), Struct_2(Struct_1(vec4<f32>(-183f, 252f, 1008f, -1000f), vec3<f32>(154f, -929f, 745f), 0i, vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(vec4<f32>(811f, 481f, 1519f, 137f), vec3<f32>(624f, -586f, -409f), i32(-2147483648), vec4<i32>(1i, -13546i, i32(-2147483648), 21298i))), Struct_2(Struct_1(vec4<f32>(106f, 369f, 246f, -318f), vec3<f32>(-1499f, 1342f, -931f), 1i, vec4<i32>(9114i, -1i, -2193i, 2147483647i))), Struct_2(Struct_1(vec4<f32>(297f, -1499f, 1070f, 1019f), vec3<f32>(351f, -1000f, -580f), 0i, vec4<i32>(19907i, 2147483647i, i32(-2147483648), 0i))), Struct_2(Struct_1(vec4<f32>(1378f, -576f, -267f, 950f), vec3<f32>(256f, -511f, 672f), 10014i, vec4<i32>(13872i, i32(-2147483648), 21647i, -1i))), Struct_2(Struct_1(vec4<f32>(1131f, -1212f, -1000f, 180f), vec3<f32>(602f, 523f, 101f), -1i, vec4<i32>(1i, 15482i, 26680i, 2147483647i))), Struct_2(Struct_1(vec4<f32>(-236f, -705f, 1702f, -1032f), vec3<f32>(572f, 519f, 623f), -42729i, vec4<i32>(-33680i, 1i, 1i, -26411i))), Struct_2(Struct_1(vec4<f32>(235f, 1839f, -1000f, 126f), vec3<f32>(-1968f, -1163f, -295f), 0i, vec4<i32>(1i, i32(-2147483648), 22073i, -51414i))), Struct_2(Struct_1(vec4<f32>(-553f, -1721f, -980f, -1387f), vec3<f32>(1276f, 455f, 1430f), i32(-2147483648), vec4<i32>(-9158i, 11429i, -19906i, i32(-2147483648)))), Struct_2(Struct_1(vec4<f32>(-138f, 1180f, 1753f, -515f), vec3<f32>(1112f, 1018f, 165f), -33897i, vec4<i32>(42413i, 5229i, 11972i, -36873i))), Struct_2(Struct_1(vec4<f32>(-325f, 1145f, -1051f, -644f), vec3<f32>(1428f, 542f, 140f), 10880i, vec4<i32>(-65710i, 8089i, i32(-2147483648), -27880i))), Struct_2(Struct_1(vec4<f32>(545f, 270f, 193f, 1595f), vec3<f32>(-1064f, 1510f, -1000f), i32(-2147483648), vec4<i32>(-34486i, i32(-2147483648), 21013i, -40382i))), Struct_2(Struct_1(vec4<f32>(625f, 2644f, -1000f, -2165f), vec3<f32>(193f, 1830f, 1449f), 32344i, vec4<i32>(14886i, -59909i, i32(-2147483648), 15437i))), Struct_2(Struct_1(vec4<f32>(-1341f, -1537f, 851f, 1123f), vec3<f32>(-612f, -1010f, 186f), -31876i, vec4<i32>(-10732i, 10746i, 21042i, 0i))), Struct_2(Struct_1(vec4<f32>(1040f, -138f, 1211f, 1000f), vec3<f32>(589f, -788f, -484f), -11032i, vec4<i32>(0i, 34997i, 10986i, 36174i))), Struct_2(Struct_1(vec4<f32>(-1354f, 357f, -678f, 749f), vec3<f32>(1428f, -674f, -111f), -1582i, vec4<i32>(-38786i, 1i, 2147483647i, -31064i))), Struct_2(Struct_1(vec4<f32>(-838f, 1157f, -1197f, 1385f), vec3<f32>(203f, 1742f, 1612f), 45605i, vec4<i32>(i32(-2147483648), 1i, 27593i, 2147483647i))), Struct_2(Struct_1(vec4<f32>(-158f, -507f, -628f, 614f), vec3<f32>(-1000f, -529f, 462f), 6859i, vec4<i32>(1i, -1i, 3113i, i32(-2147483648)))), Struct_2(Struct_1(vec4<f32>(-1016f, -878f, 386f, -248f), vec3<f32>(-2851f, -1008f, 1695f), 1i, vec4<i32>(32151i, 1i, 25090i, 15164i))));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1270f));
    let var_1 = countOneBits(vec2<u32>(3050u, ~max(abs(1u), 1u)));
    var_0 = 857f;
    var_0 = 981f;
    let var_2 = abs(_wgslsmith_add_vec4_u32(~reverseBits(~vec4<u32>(3485u, 27447u, 1u, 9130u)), ~countOneBits(select(vec4<u32>(27743u, 1u, 44202u, 10395u), vec4<u32>(var_1.x, 9787u, var_1.x, var_1.x), true))));
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec4<u32> {
    let var_0 = u_input.b;
    global0 = array<Struct_2, 25>();
    var var_1 = !vec4<bool>(false, select(true, true, all(vec2<bool>(true, true))), any(vec3<bool>(var_0 <= var_0, true, true)), all(select(vec4<bool>(true, true, true, true), func_3(1000f, vec3<i32>(0i, u_input.a, var_0)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))));
    var var_2 = vec2<bool>(false, false);
    let var_3 = reverseBits(vec3<i32>(arg_0, arg_0, -arg_0)) ^ ~countOneBits(vec3<i32>(arg_0, -58619i, -2481i));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(countOneBits(select(arg_1, 2558u, var_1.x)), ~arg_1 & (arg_1 ^ 7916u)), 1u, ~arg_1, ~_wgslsmith_add_u32(~1u, arg_1 ^ 4294967295u)), min(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 2013u, 28742u)), ~vec4<u32>(arg_1, arg_1, arg_1, arg_1)), ~vec4<u32>(54076u >> (arg_1 % 32u), countOneBits(63051u), ~25533u, _wgslsmith_add_u32(39099u, arg_1))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_5) -> vec3<f32> {
    var var_0 = arg_2.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(abs(-193f))), arg_2.c)), vec2<f32>(_wgslsmith_f_op_f32(floor(707f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-589f, -487f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 150f), vec2<f32>(-460f, var_1.x)))))));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.x, -603f)), -1561f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(313f, 1015f)) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1000f) - _wgslsmith_f_op_f32(max(var_1.x, -634f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x))), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(152f, var_1.x, -569f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -1396f, var_1.x)))))), 34502i, vec4<i32>(arg_2.e.x, u_input.a, ~arg_2.e.x, -u_input.a));
    global0 = array<Struct_2, 25>();
    return _wgslsmith_f_op_vec3_f32(-var_2.a.yyy);
}

fn func_1(arg_0: vec2<f32>) -> vec3<f32> {
    global0 = array<Struct_2, 25>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x)), 541f < arg_0.x))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 939f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f - -1784f) + -504f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(firstLeadingBit(2147483647i), vec2<u32>(~748u, _wgslsmith_div_u32(1u, 1u)), Struct_5(func_2(u_input.a, 36045u), Struct_4(38995u, 73487u, vec3<bool>(false, false, false), vec3<u32>(24195u, 22242u, 2144u), 4231u), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false)), -vec3<i32>(-11830i, u_input.a, 27890i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1000f)), vec3<f32>(158f, _wgslsmith_f_op_f32(max(-263f, 2904f)), -1033f))), 1i, ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-669i, u_input.b, -27017i, 0i), vec4<i32>(-2147483647i, i32(-1i) * -38438i, 2640i, _wgslsmith_mult_i32(u_input.a, 0i))));
    global0 = array<Struct_2, 25>();
    var var_1 = any(vec2<bool>(all(func_3(_wgslsmith_f_op_f32(f32(-1f) * -264f), vec3<i32>(22551i, -8432i, -1i)).wx), true));
    let var_2 = Struct_1(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.a.ywx))), var_0.b), ~(~_wgslsmith_mult_i32(max(-2147483647i, u_input.a), ~0i)), -countOneBits(var_0.d));
    return vec3<f32>(-431f, -721f, _wgslsmith_f_op_f32(arg_0.x + var_2.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_2 {
    global0 = array<Struct_2, 25>();
    var var_0 = 31873u;
    var var_1 = Struct_3(false);
    var_1 = Struct_3(true);
    let var_2 = arg_2;
    return Struct_2(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(2113f, -537f, 1889f, 1464f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(732f, 1169f, 1194f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1421f, 492f, -745f, -1583f), vec4<f32>(571f, -1125f, -1343f, 202f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, -200f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-916f, 441f, 1385f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(635f, 630f, -769f) + vec3<f32>(-910f, 344f, 503f))), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)))), u_input.b, abs(abs(vec4<i32>(u_input.a, -18117i, u_input.a, u_input.a) >> (vec4<u32>(var_0, var_0, var_0, 0u) % vec4<u32>(32u))))), ~11231u, true);
    global0 = array<Struct_2, 25>();
    var_1 = global0[_wgslsmith_index_u32(1u, 25u)];
    let var_2 = ~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(19925u, 0u)) | _wgslsmith_div_vec2_u32(vec2<u32>(var_0, 22680u), max(vec2<u32>(76501u, var_0), vec2<u32>(65196u, var_0))), func_2(-1313i, 16519u).zz, reverseBits((vec2<u32>(1u, 4294967295u) ^ vec2<u32>(var_0, 0u)) << (select(vec2<u32>(7949u, 4294967295u), vec2<u32>(18949u, 4294967295u), false) % vec2<u32>(32u))));
    let var_3 = var_1.a.d;
    var var_4 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(760f + var_1.a.b.x))) >= -309f, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~abs(func_2(-2147483647i, var_0).x)), func_5(func_5(func_5(func_5(Struct_1(var_1.a.a, vec3<f32>(var_1.a.b.x, 296f, -1884f), var_3.x, vec4<i32>(-1i, -45955i, -1i, 1i)), 4294967295u, var_4.x).a, ~var_0, var_4.x).a, var_0, false).a, 4294967295u, (!var_4.x | true) || false).a.c);
}

