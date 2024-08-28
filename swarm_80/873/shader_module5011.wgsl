struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(0i, Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(0u, 0u, 48106u, 44633u), 1u, 25419i, vec2<u32>(0u, 53084u)), vec3<f32>(-832f, -456f, -282f)), vec3<f32>(-702f, -1645f, 765f), false, false), Struct_4(-52036i, Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u), 25619u, 1i, vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(1000f, 675f, -1860f)), vec3<f32>(126f, -175f, 496f), true, true), Struct_4(0i, Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 0u, 2147483647i, vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(-687f, -1200f, -1464f)), vec3<f32>(-2301f, -402f, -101f), true, true), Struct_4(-36564i, Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec4<u32>(4294967295u, 60142u, 4294967295u, 31261u), 77543u, -1i, vec2<u32>(32935u, 15382u)), vec3<f32>(-433f, 1179f, 149f)), vec3<f32>(-756f, 1397f, -1095f), true, false), Struct_4(-23161i, Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(0u, 4294967295u, 9395u, 0u), 4294967295u, 37166i, vec2<u32>(0u, 1u)), vec3<f32>(631f, -203f, -233f)), vec3<f32>(272f, -2914f, 1034f), true, false), Struct_4(24032i, Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec4<u32>(0u, 34258u, 57014u, 65617u), 56155u, 1i, vec2<u32>(4294967295u, 1u)), vec3<f32>(-1187f, -937f, 1000f)), vec3<f32>(-590f, -1040f, 194f), true, false), Struct_4(-3843i, Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec4<u32>(9875u, 0u, 34645u, 0u), 4294967295u, 40612i, vec2<u32>(11377u, 8459u)), vec3<f32>(1461f, 927f, -1522f)), vec3<f32>(-1292f, -1207f, 258f), false, true), Struct_4(-1i, Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(1u, 26349u, 0u, 57100u), 4294967295u, -31885i, vec2<u32>(0u, 4294967295u)), vec3<f32>(-156f, -158f, 461f)), vec3<f32>(-245f, -219f, 302f), true, true), Struct_4(-1i, Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(4294967295u, 4294967295u, 67460u, 27104u), 69803u, -26803i, vec2<u32>(1u, 956u)), vec3<f32>(1623f, 226f, -1345f)), vec3<f32>(1084f, -706f, 277f), false, false), Struct_4(0i, Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(1u, 78408u, 2407u, 19212u), 60867u, -74698i, vec2<u32>(4294967295u, 16531u)), vec3<f32>(-106f, 397f, 1107f)), vec3<f32>(519f, -1209f, 817f), true, false), Struct_4(0i, Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec4<u32>(22461u, 7152u, 1u, 0u), 93247u, -1233i, vec2<u32>(29171u, 48094u)), vec3<f32>(-909f, 1363f, 1000f)), vec3<f32>(-254f, -1529f, -1266f), false, true), Struct_4(36573i, Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec4<u32>(56940u, 35503u, 14410u, 4294967295u), 1u, -2183i, vec2<u32>(48667u, 0u)), vec3<f32>(1000f, -1000f, -814f)), vec3<f32>(290f, -1000f, -453f), false, false), Struct_4(-50991i, Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec4<u32>(1u, 8703u, 87163u, 25775u), 7584u, 1i, vec2<u32>(0u, 4294967295u)), vec3<f32>(-797f, 275f, -1396f)), vec3<f32>(1272f, -343f, 491f), true, false), Struct_4(1i, Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(74385u, 4294967295u, 0u, 97276u), 2282u, 0i, vec2<u32>(4294967295u, 31066u)), vec3<f32>(290f, -742f, 930f)), vec3<f32>(505f, 413f, 239f), false, true), Struct_4(26736i, Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(1u, 1u, 0u, 40396u), 25638u, 0i, vec2<u32>(1u, 36646u)), vec3<f32>(1002f, 1000f, -255f)), vec3<f32>(1356f, -1663f, -1338f), true, true), Struct_4(-1i, Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(39527u, 4294967295u, 74914u, 0u), 1u, i32(-2147483648), vec2<u32>(4294967295u, 2108u)), vec3<f32>(-1066f, 1771f, -1809f)), vec3<f32>(492f, 786f, 230f), true, false), Struct_4(1i, Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec4<u32>(107294u, 4294967295u, 1u, 30876u), 34280u, -1i, vec2<u32>(0u, 143492u)), vec3<f32>(-2981f, 3796f, 1498f)), vec3<f32>(-297f, -1941f, 963f), true, true), Struct_4(-7564i, Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(0u, 1u, 0u, 1u), 44086u, -39651i, vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(662f, 391f, -149f)), vec3<f32>(-1199f, 472f, -1361f), true, true), Struct_4(i32(-2147483648), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec4<u32>(1u, 53739u, 0u, 38612u), 1u, 62832i, vec2<u32>(20878u, 0u)), vec3<f32>(-419f, 1037f, -151f)), vec3<f32>(1000f, 896f, -754f), false, false), Struct_4(0i, Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 4294967295u, i32(-2147483648), vec2<u32>(38374u, 0u)), vec3<f32>(-292f, -1000f, 361f)), vec3<f32>(1000f, -113f, -511f), false, false), Struct_4(0i, Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(38338u, 4294967295u, 1u, 58968u), 0u, 0i, vec2<u32>(13784u, 0u)), vec3<f32>(322f, -687f, 566f)), vec3<f32>(-2946f, 300f, -615f), false, true), Struct_4(0i, Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec4<u32>(4294967295u, 0u, 29641u, 4294967295u), 86901u, -46131i, vec2<u32>(4982u, 0u)), vec3<f32>(671f, 1206f, 349f)), vec3<f32>(438f, -831f, -299f), false, false), Struct_4(i32(-2147483648), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec4<u32>(36869u, 1u, 4294967295u, 47745u), 44327u, 9270i, vec2<u32>(69751u, 44081u)), vec3<f32>(183f, -1072f, -929f)), vec3<f32>(-2835f, 383f, 1293f), false, true), Struct_4(44607i, Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(1u, 4294967295u, 16245u, 110038u), 0u, 15989i, vec2<u32>(1u, 19738u)), vec3<f32>(1393f, -1088f, 672f)), vec3<f32>(-603f, -1095f, -788f), true, false), Struct_4(24152i, Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec4<u32>(4294967295u, 4294967295u, 8532u, 1u), 25476u, i32(-2147483648), vec2<u32>(62647u, 51241u)), vec3<f32>(646f, -651f, 2513f)), vec3<f32>(-350f, -714f, 322f), false, true), Struct_4(-31949i, Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec4<u32>(21804u, 0u, 5461u, 70513u), 56721u, -1i, vec2<u32>(38269u, 1u)), vec3<f32>(2211f, 1099f, -1000f)), vec3<f32>(-646f, -520f, -1432f), false, false), Struct_4(25676i, Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec4<u32>(37320u, 0u, 0u, 4294967295u), 29969u, i32(-2147483648), vec2<u32>(50398u, 4294967295u)), vec3<f32>(1167f, -1887f, 703f)), vec3<f32>(954f, 1000f, 2002f), true, true), Struct_4(-38727i, Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(27501u, 20151u, 34003u, 14655u), 0u, 36889i, vec2<u32>(4294967295u, 109074u)), vec3<f32>(-542f, 1315f, 278f)), vec3<f32>(1844f, 2907f, 481f), false, true), Struct_4(-1i, Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec4<u32>(32557u, 2287u, 0u, 4294967295u), 1u, 1i, vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(1845f, -1749f, 519f)), vec3<f32>(-1427f, 1994f, 248f), true, true), Struct_4(12678i, Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec4<u32>(2431u, 4294967295u, 13638u, 19034u), 71340u, 2147483647i, vec2<u32>(4294967295u, 22760u)), vec3<f32>(670f, 545f, -696f)), vec3<f32>(-322f, 761f, -223f), false, false), Struct_4(2147483647i, Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec4<u32>(4294967295u, 15702u, 1u, 1u), 1u, 0i, vec2<u32>(7903u, 0u)), vec3<f32>(-215f, 1000f, -881f)), vec3<f32>(1915f, 1300f, -471f), false, false), Struct_4(0i, Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(34536u, 1u, 0u, 2881u), 4294967295u, 29803i, vec2<u32>(36663u, 4294967295u)), vec3<f32>(-285f, -1461f, -419f)), vec3<f32>(712f, -168f, -811f), false, true));

var<private> global3: array<vec2<u32>, 30>;

var<private> global4: array<vec3<f32>, 16>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1116f))) - -942f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-892f, 1336f), 1172f))))));
    var var_1 = max(u_input.d, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 1u, 0u, u_input.d), ~(vec4<u32>(0u, 26583u, u_input.d, 9491u) >> (vec4<u32>(u_input.d, 25517u, u_input.d, u_input.d) % vec4<u32>(32u)))));
    var var_2 = -493f;
    return _wgslsmith_sub_u32(u_input.d, abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(11284u, 60392u, u_input.d) >> (vec3<u32>(100216u, u_input.d, u_input.d) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 0u, 1u))));
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(func_3(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-20152i, 0i), ~(-41575i)) != (u_input.c.x & -2147483647i), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), false), !vec4<bool>(true, 9933u >= u_input.d, true, false)), countOneBits(u_input.d), 0u & (u_input.d ^ 3880u));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 22u)];
    let var_2 = global1[_wgslsmith_index_u32(1u, 22u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(firstTrailingBit(~u_input.d), 16u)]);
    var var_4 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 31765u, 1u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b, var_0.x, 35035u), var_2.a.yxw, vec3<u32>(0u, var_0.x, var_1.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.a.yyy, vec3<u32>(12346u, var_1.b, 1181u)), var_1.a.xwy)), var_2.a.www, ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, var_0.x, var_2.b), var_2.a.xyx));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 1182f, -2549f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, -1593f, -1249f, var_3.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x)))))), Struct_2(!vec4<bool>(any(vec2<bool>(true, false)), false, true, all(vec3<bool>(false, false, true))), global1[_wgslsmith_index_u32(~var_2.b, 22u)], var_3), var_2.c, vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_3.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f)), select(true, all(vec2<bool>(true, false)), true) | true));
}

fn func_1() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 22u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-515f - _wgslsmith_f_op_f32(round(133f))) + 269f);
    let var_2 = func_2();
    let var_3 = global1[_wgslsmith_index_u32(~1u, 22u)];
    var var_4 = var_2.b.a;
    return _wgslsmith_mult_u32(~(~u_input.d) & min(0u, 38938u), ~var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-465f, -1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-339f, 216f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622f - -1369f) + 239f), 131f)), !vec2<bool>(true, _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.b, u_input.c.x)) >= 0i)));
    let var_1 = !vec4<bool>(any(vec4<bool>(true, true, true, true)), (func_1() ^ u_input.d) <= firstTrailingBit(u_input.d >> (u_input.d % 32u)), false, true);
    var_0 = _wgslsmith_f_op_vec2_f32(func_2().a.xw - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = 39752i;
    global2 = array<Struct_4, 32>();
    global0 = _wgslsmith_f_op_f32(abs(904f));
    global4 = array<vec3<f32>, 16>();
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<u32>(10315u, _wgslsmith_div_u32(_wgslsmith_sub_u32(func_2().b.b.d.x, u_input.d), _wgslsmith_add_u32(firstLeadingBit(var_3.b.b.b), func_3(var_3.d.x, vec3<bool>(var_3.d.x, var_3.b.a.x, var_3.b.a.x), vec4<bool>(false, true, var_3.b.a.x, false)))), ~(~(~var_3.b.b.a.x))), vec4<i32>(u_input.a.x, abs(var_3.b.b.c), var_3.c, var_3.c));
}

