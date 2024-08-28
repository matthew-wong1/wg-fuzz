struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(1u, Struct_1(vec4<f32>(-1000f, 324f, -148f, -911f)), 11259u, -93876i), Struct_2(48604u, Struct_1(vec4<f32>(-469f, -310f, -878f, 1312f)), 17372u, 2147483647i), Struct_2(19131u, Struct_1(vec4<f32>(624f, 1578f, -250f, 962f)), 44693u, -1i), Struct_2(0u, Struct_1(vec4<f32>(-680f, 969f, -363f, 181f)), 1u, -1i), Struct_2(1u, Struct_1(vec4<f32>(-312f, -513f, -955f, -1731f)), 4572u, i32(-2147483648)), Struct_2(0u, Struct_1(vec4<f32>(369f, 994f, 280f, 196f)), 39301u, -27530i), Struct_2(19036u, Struct_1(vec4<f32>(-561f, -335f, -227f, -1000f)), 121771u, 44265i), Struct_2(0u, Struct_1(vec4<f32>(152f, -642f, 409f, 392f)), 41082u, 9698i), Struct_2(41856u, Struct_1(vec4<f32>(-461f, 1550f, -1530f, 1000f)), 16403u, 2147483647i), Struct_2(1u, Struct_1(vec4<f32>(-507f, 880f, -817f, -1261f)), 60108u, i32(-2147483648)), Struct_2(41945u, Struct_1(vec4<f32>(1978f, -301f, 852f, 638f)), 1u, 38958i), Struct_2(15209u, Struct_1(vec4<f32>(-152f, -603f, 1973f, -452f)), 4294967295u, 17097i), Struct_2(0u, Struct_1(vec4<f32>(892f, 1357f, 165f, 672f)), 53293u, 40673i), Struct_2(54657u, Struct_1(vec4<f32>(-1057f, 370f, -1000f, 422f)), 1u, i32(-2147483648)), Struct_2(0u, Struct_1(vec4<f32>(-1010f, 1182f, 1666f, -213f)), 0u, -38184i), Struct_2(0u, Struct_1(vec4<f32>(-723f, -197f, -596f, -501f)), 3196u, -1i), Struct_2(4294967295u, Struct_1(vec4<f32>(-1157f, -694f, 694f, 300f)), 1u, 57476i), Struct_2(4294967295u, Struct_1(vec4<f32>(-1139f, -1253f, 150f, 506f)), 4294967295u, -15813i), Struct_2(0u, Struct_1(vec4<f32>(-2797f, 1000f, -279f, -260f)), 38290u, 19398i), Struct_2(30034u, Struct_1(vec4<f32>(-991f, -2236f, -635f, 1261f)), 8664u, -22725i), Struct_2(1u, Struct_1(vec4<f32>(-810f, -1030f, 1058f, 884f)), 1u, -11635i), Struct_2(0u, Struct_1(vec4<f32>(2210f, -1666f, -227f, -1000f)), 13803u, 38263i), Struct_2(4294967295u, Struct_1(vec4<f32>(-240f, -585f, -597f, 890f)), 16020u, 0i), Struct_2(1141u, Struct_1(vec4<f32>(-397f, -829f, -652f, -1138f)), 43933u, 0i));

var<private> global1: array<vec4<f32>, 28>;

var<private> global2: f32 = -2094f;

var<private> global3: vec4<bool>;

var<private> global4: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(0u, Struct_1(vec4<f32>(150f, -323f, 945f, -1081f)), 0u, 13902i), Struct_2(19683u, Struct_1(vec4<f32>(1439f, -138f, 1776f, 447f)), 67746u, 0i), Struct_2(109u, Struct_1(vec4<f32>(326f, 1243f, 752f, 524f)), 52143u, 3804i), Struct_2(45555u, Struct_1(vec4<f32>(-2046f, -938f, 1000f, 1700f)), 38033u, 2147483647i), Struct_2(27076u, Struct_1(vec4<f32>(1000f, -1033f, 1000f, 609f)), 4294967295u, -33215i), Struct_2(0u, Struct_1(vec4<f32>(1036f, 350f, 1746f, -259f)), 116265u, 38388i), Struct_2(81167u, Struct_1(vec4<f32>(-739f, 128f, 1823f, -930f)), 39092u, -20829i), Struct_2(4294967295u, Struct_1(vec4<f32>(-1697f, -1360f, -943f, -235f)), 4294967295u, -25300i), Struct_2(4294967295u, Struct_1(vec4<f32>(-1107f, 1255f, 770f, 1702f)), 87532u, 43600i), Struct_2(4294967295u, Struct_1(vec4<f32>(376f, -183f, -338f, -774f)), 1u, 20514i), Struct_2(4294967295u, Struct_1(vec4<f32>(-616f, -1000f, -1855f, 286f)), 0u, 6937i), Struct_2(8492u, Struct_1(vec4<f32>(-261f, -1522f, -1000f, 405f)), 1u, -1i), Struct_2(1u, Struct_1(vec4<f32>(334f, 1244f, 119f, 1000f)), 0u, 1i), Struct_2(1u, Struct_1(vec4<f32>(-396f, -695f, -998f, 1713f)), 1u, -3597i), Struct_2(4294967295u, Struct_1(vec4<f32>(360f, 163f, 3045f, 1172f)), 1u, 1i), Struct_2(26083u, Struct_1(vec4<f32>(-2044f, 1484f, -720f, -748f)), 62210u, 1i), Struct_2(4294967295u, Struct_1(vec4<f32>(218f, 1258f, 823f, 1557f)), 6305u, 2147483647i), Struct_2(0u, Struct_1(vec4<f32>(651f, -504f, 1000f, 499f)), 61332u, i32(-2147483648)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = !(!global3.wz);
    let var_1 = Struct_1(arg_0.a);
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1.a.x)))), arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-860f - var_1.a.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(-449f, arg_0.a.x), arg_0.a.x)))));
    var_2 = var_1;
    global3 = select(!vec4<bool>(var_0.x, global3.x, false, true), select(vec4<bool>(!global3.x, !global3.x, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, global3.x, global3.x)), any(vec4<bool>(false, var_0.x, global3.x, false))), u_input.a.x >= (firstTrailingBit(u_input.b) & (60024u | ~u_input.b)));
    return _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(u_input.c.x, 1u, u_input.c.x))), firstTrailingBit(~_wgslsmith_sub_vec3_u32(u_input.c.zxx, u_input.c.xxy))) & ~(~5492u);
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<u32> {
    global4 = array<Struct_2, 18>();
    let var_0 = abs(_wgslsmith_add_i32(0i, _wgslsmith_div_i32(1i, -firstLeadingBit(-7847i))));
    var var_1 = !(~0u <= u_input.b);
    let var_2 = _wgslsmith_sub_i32(var_0, max(2147483647i | max(0i, firstTrailingBit(0i)), var_0));
    var var_3 = u_input.c & vec4<u32>(4294967295u, ~reverseBits(u_input.c.x), func_3(Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 3093u), 28u)])), abs(12454u));
    return reverseBits(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, var_3.x, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u)), vec3<u32>(1u, 1u, _wgslsmith_mult_u32(60226u, var_3.x))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.x * arg_1)))), arg_1, _wgslsmith_f_op_f32(-arg_0.b.a.x), 181f));
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(arg_2.d, arg_2.d, -2147483647i)), min(_wgslsmith_div_vec3_i32(-vec3<i32>(arg_2.d, -2147483647i, arg_2.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0.d, arg_2.d), vec3<i32>(arg_0.d, arg_0.d, arg_0.d), vec3<i32>(arg_0.d, -1047i, arg_2.d))), -(vec3<i32>(arg_0.d, arg_0.d, 1i) >> (vec3<u32>(arg_2.c, arg_0.a, 0u) % vec3<u32>(32u))))), vec3<i32>(max(-arg_2.d, _wgslsmith_mult_i32(-1i, arg_2.d)), -2147483647i, -1i) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(16607u, arg_0.a, 4294967295u), func_2(-1555f, arg_0.b.a.x)), ~abs(u_input.c.yyx)) % vec3<u32>(32u)));
    let var_2 = all(select(!select(!global3.ww, !global3.wy, false), vec2<bool>(global3.x, global3.x), vec2<bool>(true, false)));
    global3 = !(!(!vec4<bool>(!var_2, true, 1020f < var_0.a.x, false)));
    global4 = array<Struct_2, 18>();
    return Struct_1(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = vec4<i32>(arg_0.d, -arg_0.d, -2147483647i, select(-1i, _wgslsmith_add_i32(_wgslsmith_add_i32(19559i, -46624i), firstTrailingBit(arg_0.d | arg_0.d)), false));
    var_0 = abs(countOneBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.d, 42070i), i32(-1i) * -2147483647i), -abs(5631i), arg_0.d, var_0.x)));
    var_0 = ~vec4<i32>(-20342i, ~arg_0.d, 0i, -_wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.yww), -vec3<i32>(arg_0.d, var_0.x, -10755i)));
    let var_1 = -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-21598i, var_0.x, var_0.x), max(var_0.yyw, var_0.yxw)), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_0.d, var_0.x, 8401i), var_0.xwy)) & (arg_0.d << (countOneBits(u_input.c.x) % 32u));
    let var_2 = firstTrailingBit(u_input.c.xyw);
    return _wgslsmith_mod_u32(firstLeadingBit(var_2.x), 23131u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -35700i;
    var var_1 = _wgslsmith_mult_u32(49050u, 1u ^ func_4(Struct_2(~u_input.b, Struct_1(vec4<f32>(1959f, 1574f, 1399f, 1000f)), u_input.c.x, -22212i), func_1(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], -125f, global4[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 18u)]), true));
    global2 = -244f;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(529f * 331f)), -240f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-978f)) + -419f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(2096f, -918f, -330f, -1477f), _wgslsmith_f_op_vec4_f32(vec4<f32>(493f, 1428f, 317f, 1412f) - vec4<f32>(712f, 2017f, -272f, 1000f))), vec4<f32>(-1095f, _wgslsmith_f_op_f32(min(1122f, 195f)), _wgslsmith_f_op_f32(select(-1351f, -201f, true)), -1000f))))));
    let var_3 = min(~_wgslsmith_mod_i32(1i, 1993i << (u_input.c.x % 32u)) << (~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), u_input.c.x >> (u_input.a.x % 32u)) % 32u), ~1i);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.b, 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_4.a.x)))), _wgslsmith_f_op_f32(ceil(var_4.a.x)), -523f), vec3<f32>(-1317f, var_4.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.a.x)))), any(vec3<bool>(true, true, true)))), _wgslsmith_div_f32(-914f, _wgslsmith_f_op_f32(968f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2152f)))))), _wgslsmith_f_op_f32(select(-302f, var_4.a.x, !global3.x)));
}

