struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(1065f, -2567f), vec2<f32>(-525f, -1199f), vec2<f32>(-234f, 177f), vec2<f32>(-390f, -273f), vec2<f32>(366f, 311f), vec2<f32>(-355f, -1077f), vec2<f32>(1472f, 991f), vec2<f32>(1010f, -218f), vec2<f32>(-333f, 469f), vec2<f32>(1765f, 629f), vec2<f32>(702f, 656f), vec2<f32>(815f, -295f), vec2<f32>(1348f, -1017f), vec2<f32>(679f, -792f), vec2<f32>(-2695f, 317f), vec2<f32>(896f, -299f), vec2<f32>(-2759f, -957f), vec2<f32>(-1018f, -1339f), vec2<f32>(-1273f, -1247f), vec2<f32>(-1596f, -187f), vec2<f32>(-1054f, -755f), vec2<f32>(-529f, 2452f), vec2<f32>(-2028f, -670f), vec2<f32>(-1073f, 2474f), vec2<f32>(-147f, -1312f), vec2<f32>(171f, 731f));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<i32>(1i, 0i, i32(-2147483648)), vec4<u32>(51347u, 4294967295u, 1u, 30511u), vec4<f32>(955f, -291f, 981f, 1459f), Struct_1(84768u, -591f, i32(-2147483648), 2147483647i, -2311f)), Struct_2(vec3<i32>(-30046i, i32(-2147483648), -44378i), vec4<u32>(0u, 63505u, 10245u, 9662u), vec4<f32>(422f, 1213f, 645f, 929f), Struct_1(0u, 734f, i32(-2147483648), 7133i, -1316f)), Struct_2(vec3<i32>(2147483647i, 13487i, 1i), vec4<u32>(4294967295u, 34757u, 21813u, 0u), vec4<f32>(108f, -497f, -671f, -145f), Struct_1(1u, 530f, 20041i, -16163i, -280f)), Struct_2(vec3<i32>(26818i, 0i, 8539i), vec4<u32>(1u, 40806u, 97386u, 1u), vec4<f32>(719f, 1620f, -542f, -2224f), Struct_1(48011u, -2128f, -1i, -22309i, 500f)), Struct_2(vec3<i32>(i32(-2147483648), 41456i, -76495i), vec4<u32>(38024u, 0u, 50587u, 10458u), vec4<f32>(170f, 344f, -1173f, 511f), Struct_1(41u, -916f, 0i, 1i, 1121f)), Struct_2(vec3<i32>(i32(-2147483648), 44063i, -1i), vec4<u32>(1u, 1u, 55292u, 1u), vec4<f32>(205f, -563f, 692f, -1000f), Struct_1(60740u, -306f, 2147483647i, i32(-2147483648), -696f)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(2779u, 6u)];
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0.d.a, _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(94050u, u_input.b.x, 28802u, var_0.d.a)), 15603u & var_0.b.x)), vec3<u32>(u_input.c.x, ~_wgslsmith_mult_u32(var_0.b.x, 6676u), u_input.b.x)), _wgslsmith_div_vec3_u32(~(~_wgslsmith_div_vec3_u32(var_0.b.zyx, var_0.b.xzz)), vec3<u32>(min(var_0.d.a, 1u), 32130u << (~u_input.a % 32u), u_input.b.x)));
    global1 = array<Struct_2, 6>();
    global0 = array<vec2<f32>, 26>();
    var var_2 = var_0.b;
    return reverseBits(u_input.a << (_wgslsmith_dot_vec4_u32(firstTrailingBit(var_0.b), ~var_0.b) % 32u));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = arg_3.c.c;
    var var_1 = select(!select(vec4<bool>(false, all(vec3<bool>(arg_3.d, arg_3.d, arg_3.d)), true & arg_3.d, any(vec4<bool>(arg_2.x, arg_3.d, false, true))), vec4<bool>(arg_2.x, arg_3.d, all(vec2<bool>(arg_2.x, arg_2.x)), arg_3.d), !arg_2), !select(vec4<bool>(true, all(vec3<bool>(arg_3.d, arg_2.x, true)), arg_3.d, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_3.d), select(vec4<bool>(arg_3.d, true, true, false), arg_2, false)), select(select(arg_2, !vec4<bool>(false, true, arg_3.d, false), true), select(!arg_2, vec4<bool>(815f < arg_1.c.x, select(true, true, arg_3.d), false, arg_3.d), arg_2.x), false));
    global0 = array<vec2<f32>, 26>();
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f) * _wgslsmith_div_f32(1137f, _wgslsmith_f_op_f32(-arg_3.b.e))), -725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f - -178f))) + vec3<f32>(-747f, arg_1.d.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1426f * arg_3.b.e)))));
    return vec3<bool>(arg_3.d, all(select(var_1.zw, var_1.zy, false)), !(!select(arg_3.d, true, true)));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = vec2<bool>(all(select(select(vec3<bool>(true, true, true), func_3(4294967295u, Struct_2(vec3<i32>(1i, -1i, 10141i), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 1u), vec4<f32>(1000f, 406f, arg_0, arg_0), Struct_1(4294967295u, 1793f, 0i, 6672i, arg_0)), vec4<bool>(false, false, false, true), Struct_3(u_input.c, Struct_1(u_input.b.x, arg_0, -1i, -20050i, arg_0), Struct_1(10510u, 794f, 2147483647i, 44621i, -173f), true, arg_0)), vec3<bool>(true, true, false)), vec3<bool>(true, arg_1 != u_input.b.x, all(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true))), false);
    global0 = array<vec2<f32>, 26>();
    let var_1 = Struct_4(true, min(~abs(~vec4<u32>(u_input.c.x, arg_1, 48666u, 16152u)), ~vec4<u32>(arg_1, func_1(vec3<i32>(24073i, 22289i, -1i)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 2649u), vec2<u32>(77639u, 29561u)), 0u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0, -165f, _wgslsmith_f_op_f32(f32(-1f) * -2213f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1199f, arg_0, 1035f, -1312f)), vec4<f32>(arg_0, -806f, arg_0, arg_0), vec4<bool>(var_0.x, true, true, var_0.x)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, arg_0)), -587f), _wgslsmith_f_op_f32(-1355f * _wgslsmith_f_op_f32(ceil(1580f))), 785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1283f + arg_0))), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, true, var_0.x, var_0.x), arg_1 > 83175u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(423f, arg_0)), 852f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-732f * arg_0), arg_0))))));
    let var_2 = Struct_1(~_wgslsmith_mult_u32(u_input.b.x, ~(~25921u)), _wgslsmith_f_op_f32(-224f + _wgslsmith_f_op_f32(floor(1121f))), abs(min(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-59068i, 2147483647i))), _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(0i)))), ~(~73898i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(786f * arg_0), var_1.c.x));
    var var_3 = Struct_1(0u, _wgslsmith_f_op_f32(748f * -749f), var_2.c, var_2.d, -1720f);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(reverseBits(u_input.c), Struct_1(select(func_1(vec3<i32>(-1i, -43663i, 0i)), 45936u, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-797f, -1575f) + _wgslsmith_f_op_f32(abs(1748f)))), i32(-1i) * -1i, _wgslsmith_mult_i32(2147483647i, select(-1i, 16959i, false) << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u)), 1847f), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 614f)))), u_input.c.x), any(vec4<bool>(true, true, true, true)), func_2(_wgslsmith_f_op_f32(599f - _wgslsmith_f_op_f32(abs(-2226f))), 1u).b);
    var var_1 = ~(-3469i);
    var_1 = -1i;
    let var_2 = Struct_2(select(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, 1i, 1i), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.b.c, var_0.b.c), vec3<i32>(1i, var_0.c.c, -1i)), abs(vec3<i32>(1i, var_0.c.d, var_0.c.d)), !vec3<bool>(false, var_0.d, var_0.d))), (_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.c, 12801i, -1i), vec3<i32>(var_0.c.d, -31561i, var_0.c.d)) << (~vec3<u32>(u_input.b.x, var_0.a.x, 0u) % vec3<u32>(32u))) << (~vec3<u32>(0u, u_input.a, var_0.a.x) % vec3<u32>(32u)), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, var_0.d), true)), true, all(vec2<bool>(true, true)))), vec4<u32>(~(~(~u_input.c.x)), var_0.c.a, 58730u, 0u | func_1(countOneBits(vec3<i32>(var_0.c.c, -34681i, var_0.c.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, var_0.b.b, 250f, -1263f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(399f, 1442f, var_0.c.e, var_0.e) - vec4<f32>(-1009f, var_0.c.b, -1349f, -1021f))))), func_2(_wgslsmith_f_op_f32(min(1152f, 269f)), reverseBits(u_input.a)));
    var var_3 = !all(select(vec2<bool>(var_0.d, false), select(vec2<bool>(var_0.d, false), vec2<bool>(false, false), var_0.d), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, var_0.d), var_0.d))) & false;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(reverseBits(min(var_2.a, var_2.a))));
}

