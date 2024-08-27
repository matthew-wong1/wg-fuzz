struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(-38581i, -5089i), vec4<u32>(0u, 56011u, 75757u, 108259u), vec3<f32>(-1648f, -216f, 610f), vec3<f32>(1066f, 1072f, -180f), 1773i), Struct_1(vec2<i32>(0i, -79928i), vec4<u32>(1u, 51133u, 50980u, 61397u), vec3<f32>(-564f, -1172f, -1116f), vec3<f32>(664f, 1395f, 1519f), -1i), Struct_1(vec2<i32>(2147483647i, -13575i), vec4<u32>(15821u, 4294967295u, 57291u, 0u), vec3<f32>(1845f, 1148f, -1000f), vec3<f32>(-1085f, 2344f, -2476f), 1i), Struct_1(vec2<i32>(0i, 1i), vec4<u32>(1u, 1u, 0u, 0u), vec3<f32>(-313f, -1000f, -470f), vec3<f32>(771f, 1106f, -1562f), 1i), Struct_1(vec2<i32>(38369i, 2147483647i), vec4<u32>(67938u, 0u, 1u, 0u), vec3<f32>(376f, 1412f, -1309f), vec3<f32>(471f, -1176f, 1283f), 24572i), Struct_1(vec2<i32>(-32029i, -9916i), vec4<u32>(32987u, 0u, 36510u, 55946u), vec3<f32>(272f, -572f, 1274f), vec3<f32>(-729f, 1398f, 1161f), -1i), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 28435u, 4294967295u), vec3<f32>(890f, 1474f, -430f), vec3<f32>(1506f, 767f, 909f), 17088i), Struct_1(vec2<i32>(2147483647i, 0i), vec4<u32>(4294967295u, 0u, 1284u, 4294967295u), vec3<f32>(-305f, -1312f, 191f), vec3<f32>(-1180f, 409f, -555f), 5532i), Struct_1(vec2<i32>(-1i, 922i), vec4<u32>(26238u, 39960u, 4294967295u, 51050u), vec3<f32>(-371f, 848f, -880f), vec3<f32>(1212f, -912f, 137f), -2505i), Struct_1(vec2<i32>(-5727i, 44477i), vec4<u32>(0u, 0u, 13943u, 34097u), vec3<f32>(-447f, 1000f, 466f), vec3<f32>(176f, 323f, 209f), 0i), Struct_1(vec2<i32>(-18791i, i32(-2147483648)), vec4<u32>(57671u, 1u, 0u, 0u), vec3<f32>(-851f, 1000f, -1871f), vec3<f32>(-318f, 1236f, 2178f), 0i), Struct_1(vec2<i32>(0i, 64987i), vec4<u32>(31984u, 23621u, 28369u, 78430u), vec3<f32>(1000f, 1719f, 244f), vec3<f32>(-965f, -1492f, 187f), -8540i), Struct_1(vec2<i32>(-5215i, -23273i), vec4<u32>(101668u, 8707u, 4398u, 4294967295u), vec3<f32>(497f, 662f, 2909f), vec3<f32>(-281f, -401f, -474f), -1i), Struct_1(vec2<i32>(-35888i, i32(-2147483648)), vec4<u32>(0u, 44031u, 88901u, 83468u), vec3<f32>(677f, 1242f, -762f), vec3<f32>(-187f, 745f, -387f), 46036i), Struct_1(vec2<i32>(0i, 62173i), vec4<u32>(1u, 4294967295u, 7338u, 0u), vec3<f32>(-957f, -1590f, 581f), vec3<f32>(1000f, -676f, -701f), i32(-2147483648)), Struct_1(vec2<i32>(38186i, 7540i), vec4<u32>(36822u, 20927u, 18821u, 0u), vec3<f32>(2168f, -1301f, -516f), vec3<f32>(-1168f, 1216f, 974f), -27726i), Struct_1(vec2<i32>(i32(-2147483648), -9627i), vec4<u32>(1u, 33684u, 9536u, 12708u), vec3<f32>(-348f, -1000f, -127f), vec3<f32>(1622f, -463f, 461f), -6652i), Struct_1(vec2<i32>(-1i, 44694i), vec4<u32>(0u, 1u, 78964u, 32143u), vec3<f32>(-767f, 1137f, -1824f), vec3<f32>(-1000f, -422f, -1254f), 15411i), Struct_1(vec2<i32>(-29856i, i32(-2147483648)), vec4<u32>(58397u, 0u, 1u, 12445u), vec3<f32>(1101f, -1000f, 445f), vec3<f32>(-825f, -1056f, 374f), 18813i), Struct_1(vec2<i32>(-1i, 0i), vec4<u32>(4294967295u, 1u, 1u, 0u), vec3<f32>(255f, 703f, -500f), vec3<f32>(-494f, 1282f, 1931f), 2147483647i), Struct_1(vec2<i32>(-34857i, 1i), vec4<u32>(0u, 13198u, 63333u, 22064u), vec3<f32>(461f, 1350f, 436f), vec3<f32>(640f, -1382f, 2000f), 3130i), Struct_1(vec2<i32>(2147483647i, 1i), vec4<u32>(32218u, 98905u, 1u, 0u), vec3<f32>(459f, 152f, -1609f), vec3<f32>(258f, 430f, 710f), 0i), Struct_1(vec2<i32>(32482i, -1i), vec4<u32>(20561u, 4294967295u, 6784u, 4294967295u), vec3<f32>(1567f, 127f, 422f), vec3<f32>(-338f, 427f, 1327f), i32(-2147483648)), Struct_1(vec2<i32>(0i, 1i), vec4<u32>(25553u, 89366u, 1u, 93142u), vec3<f32>(1172f, -903f, 755f), vec3<f32>(-1043f, 599f, 1742f), i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 22931i), vec4<u32>(5246u, 3385u, 0u, 32836u), vec3<f32>(170f, -362f, 2117f), vec3<f32>(-708f, 260f, -1313f), 2147483647i), Struct_1(vec2<i32>(74803i, 0i), vec4<u32>(1u, 1u, 0u, 26963u), vec3<f32>(-592f, -733f, -1000f), vec3<f32>(-1658f, 912f, -1000f), 59515i), Struct_1(vec2<i32>(22370i, -46443i), vec4<u32>(4294967295u, 12472u, 4294967295u, 6106u), vec3<f32>(1490f, 1480f, 1298f), vec3<f32>(-1000f, 521f, 439f), 0i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(u_input.c, firstTrailingBit(reverseBits(vec4<u32>(1u, 1u, u_input.b, 4294967295u)) << (vec4<u32>(arg_1.b.x, 56736u, 0u, arg_1.b.x) % vec4<u32>(32u))) >> (vec4<u32>(~u_input.b, 4294967295u, ~(~3562u), _wgslsmith_div_u32(4294967295u ^ arg_1.b.x, _wgslsmith_add_u32(u_input.a.x, 54740u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1394f, -707f, arg_1.d.x)))), _wgslsmith_f_op_vec3_f32(arg_1.c * _wgslsmith_f_op_vec3_f32(abs(arg_1.d))), _wgslsmith_clamp_i32(0i, 55623i, -1i));
    let var_1 = Struct_2(true, false & !select(true, all(vec4<bool>(false, true, true, false)), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-843f, var_0.d.x, 377f, -248f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, 1559f, 497f, 459f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2330f, arg_1.d.x, var_0.d.x, 228f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(179f, var_0.c.x, -1182f, arg_1.d.x) - vec4<f32>(arg_1.d.x, arg_1.c.x, -1000f, 681f)))), true))), -var_0.a, countOneBits(u_input.a));
    let var_2 = arg_1.a.x;
    var_0 = Struct_1(firstTrailingBit(reverseBits(vec2<i32>(var_2 & 1i, 21104i))), vec4<u32>(_wgslsmith_div_u32(var_0.b.x, reverseBits(min(1u, 27166u))), ~(~36382u), 4294967295u, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1191f, _wgslsmith_f_op_f32(arg_1.d.x * var_0.d.x), 2124f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.c.yxx, vec3<f32>(283f, -970f, var_1.c.x)))), (false && var_1.b) || var_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, var_0.c.x, 654f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)), 177f, arg_1.d.x)), u_input.c.x);
    var_0 = Struct_1(vec2<i32>(var_1.d.x, -1212i), vec4<u32>(4294967295u, 30251u, ~(~var_1.e.x) | 39860u, 1u), var_1.c.yxw, _wgslsmith_f_op_vec3_f32(arg_1.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1171f, arg_1.d.x, var_1.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(227f, 508f, var_0.c.x) * vec3<f32>(-246f, -1599f, var_0.c.x)))))), _wgslsmith_dot_vec2_i32(var_1.d, u_input.c));
    return select(arg_1.b.x, ~(61769u & ~arg_1.b.x), var_1.b || !var_1.b) == arg_1.b.x;
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(46340u, 27u)];
    let var_1 = func_3(2147483647i, global1[_wgslsmith_index_u32(abs(~(~4294967295u)), 27u)]);
    var var_2 = ~1u;
    var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 27u)];
    var var_3 = var_1;
    return firstLeadingBit(((1u ^ _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 59717u)) | 20023u) | 2693u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    let var_0 = Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.d.x, -1i) | -vec2<i32>(arg_2.d.x, arg_0.d.x), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.d, arg_2.d, vec2<i32>(arg_2.d.x, arg_2.d.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 47882i), arg_2.d))), _wgslsmith_sub_vec4_u32(vec4<u32>(max(func_2(), ~arg_0.e.x), 11942u, arg_2.e.x, _wgslsmith_add_u32(1u, 48718u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 0u, arg_1, arg_2.e.x), vec4<u32>(99792u, arg_2.e.x, 4294967295u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(arg_2.c.wzx, arg_0.c.zxw), vec3<f32>(-1260f, -1041f, arg_2.c.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1787f, arg_0.c.x, arg_2.c.x) + vec3<f32>(-123f, 1046f, arg_0.c.x)))))), vec3<bool>(!(!arg_3), select(true, !arg_0.b, !arg_0.b), !arg_3))), arg_0.c.wwz, u_input.c.x);
    let var_1 = arg_0.c.x;
    global0 = 33170u;
    return !(!(!vec2<bool>(func_3(-2147483647i, global1[_wgslsmith_index_u32(arg_2.e.x, 27u)]), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = abs(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(arg_1.e.x, arg_1.e.x)));
    global0 = reverseBits(~arg_1.e.x) >> (29979u % 32u);
    var var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.x, 1i, u_input.c.x, arg_1.d.x), vec4<i32>(9374i, 42777i, 869i, -1i)), arg_1.d.x, arg_1.d.x << (152986u % 32u)), min(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(1i, u_input.c.x, arg_1.d.x) << (u_input.a.wyw % vec3<u32>(32u))), vec3<i32>(-1588i, 2147483647i, arg_1.d.x >> (arg_1.e.x % 32u))), min(~(-vec3<i32>(2147483647i, -75i, u_input.c.x) << (vec3<u32>(0u, 25u, u_input.a.x) % vec3<u32>(32u))), select(~max(vec3<i32>(22696i, -2147483647i, arg_1.d.x), vec3<i32>(-2147483647i, -36489i, arg_1.d.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1.d.x, u_input.c.x, -924i), ~vec3<i32>(arg_1.d.x, arg_1.d.x, -18274i)), true)));
    return Struct_1(vec2<i32>(max(~2147483647i, arg_1.d.x), 7401i), ~abs(~arg_1.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, -494f, _wgslsmith_f_op_f32(118f - arg_1.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.c.x))), arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + _wgslsmith_f_op_f32(arg_1.c.x * -416f)), 1f), ~(~1i));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    global0 = arg_0.b.x;
    global1 = array<Struct_1, 27>();
    let var_0 = func_3(countOneBits(0i) >> (~arg_0.b.x % 32u), Struct_1(func_4(vec2<bool>(false, false), Struct_2(true, false, vec4<f32>(arg_0.c.x, -745f, 126f, arg_0.c.x), vec2<i32>(u_input.c.x, arg_0.a.x), arg_0.b)).a & arg_0.a, select(vec4<u32>(u_input.a.x, arg_0.b.x | 30287u, 1u, arg_0.b.x), min(arg_0.b, _wgslsmith_add_vec4_u32(arg_0.b, vec4<u32>(arg_0.b.x, u_input.b, arg_0.b.x, u_input.d.x))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-707f, _wgslsmith_f_op_f32(arg_0.c.x * arg_0.d.x), _wgslsmith_f_op_f32(step(-679f, arg_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(616f - arg_0.d.x), -1599f, _wgslsmith_f_op_f32(select(865f, 226f, true))), false)), vec3<f32>(1295f, -532f, _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(trunc(arg_0.c.x)))), -1i));
    global1 = array<Struct_1, 27>();
    var var_1 = vec4<i32>(~0i, _wgslsmith_sub_i32(reverseBits(2147483647i), _wgslsmith_mult_i32(~18734i, firstLeadingBit(arg_0.e)) & select(_wgslsmith_dot_vec4_i32(vec4<i32>(-34268i, arg_0.e, -1i, -2147483647i), vec4<i32>(-3984i, u_input.c.x, 2147483647i, arg_0.a.x)), func_4(vec2<bool>(var_0, var_0), Struct_2(true, var_0, vec4<f32>(arg_0.d.x, -213f, arg_0.d.x, -378f), u_input.c, u_input.a)).a.x, var_0)), i32(-1i) * -(~u_input.c.x), arg_0.e >> (u_input.d.x % 32u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, 1866f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(432f, 1054f, var_0)))), 717f), !(!func_1(Struct_2(true, false, vec4<f32>(-688f, 1657f, arg_0.d.x, arg_0.c.x), arg_0.a, u_input.a), u_input.a.x, Struct_2(var_0, var_0, vec4<f32>(-1000f, -539f, arg_0.c.x, arg_0.c.x), vec2<i32>(var_1.x, u_input.c.x), vec4<u32>(46315u, arg_0.b.x, u_input.a.x, 0u)), false)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(round(-412f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(select(vec2<bool>(false, false), func_1(Struct_2(true, false, vec4<f32>(-717f, 746f, 256f, 583f), u_input.c, u_input.d), u_input.d.x, Struct_2(true, true, vec4<f32>(404f, -620f, 118f, 844f), u_input.c, u_input.a), false), true), Struct_2(true, all(vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-441f, 1334f, -808f, -1000f))), u_input.c, vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(490f, -1000f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1532f, 289f), vec2<f32>(708f, -219f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1486f, -210f)) * vec2<f32>(769f, 1000f)) - vec2<f32>(1f, -1300f))));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c.x >> (84636u % 32u), ~u_input.c.x), ~(u_input.c | (vec2<i32>(-1i, u_input.c.x) | vec2<i32>(2147483647i, u_input.c.x)))), vec4<u32>(32456u, u_input.a.x, ~func_4(vec2<bool>(false, false), Struct_2(false, false, vec4<f32>(var_0.x, var_0.x, 701f, var_0.x), u_input.c, vec4<u32>(u_input.b, 1u, 48227u, u_input.a.x))).b.x, 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -374f) + vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -430f, var_0.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -2525f, -252f))))))), vec3<f32>(_wgslsmith_f_op_f32(-408f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), func_4(vec2<bool>(false, false), Struct_2(true, false, vec4<f32>(var_0.x, -675f, -1300f, var_0.x), vec2<i32>(0i, 1i), u_input.d)).c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-867f, var_0.x), -1378f, true))), _wgslsmith_f_op_f32(abs(1f))), u_input.c.x);
    var var_2 = Struct_2(false, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_1.c.x, -874f) - vec4<f32>(var_1.d.x, 926f, -1687f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, 475f, 447f, var_1.c.x) - vec4<f32>(-457f, var_0.x, -284f, -390f))))), -(var_1.a >> (~vec2<u32>(u_input.b, 9845u) % vec2<u32>(32u))) | select(vec2<i32>(u_input.c.x, var_1.e), ~vec2<i32>(0i, 1i), _wgslsmith_f_op_f32(-var_1.c.x) >= _wgslsmith_f_op_f32(-var_1.c.x)), firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), _wgslsmith_clamp_u32(u_input.d.x, var_1.b.x, 34167u), var_1.b.x, 0u) >> (vec4<u32>(countOneBits(u_input.d.x), var_1.b.x, func_4(vec2<bool>(true, false), Struct_2(true, true, vec4<f32>(var_0.x, var_1.c.x, var_1.c.x, 163f), vec2<i32>(7265i, -63929i), u_input.a)).b.x, ~var_1.b.x) % vec4<u32>(32u))));
    var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(var_2.d, ~vec2<i32>(var_2.d.x, var_1.a.x), select(_wgslsmith_add_vec2_i32(var_2.d, var_2.d), ~(~vec2<i32>(var_2.d.x, 2147483647i)), var_2.b)), u_input.a & ~var_1.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c.wzz * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.c.x, var_2.c.x) + var_1.c))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 962f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.c.zyy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, var_0.x, var_1.d.x)) + vec3<f32>(var_1.d.x, var_2.c.x, -754f)), !select(vec3<bool>(false, false, true), vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(false, false, true))))), _wgslsmith_mod_i32(abs(0i), u_input.c.x));
    global1 = array<Struct_1, 27>();
    let var_3 = ~var_1.b.x;
    var var_4 = Struct_2(all(vec2<bool>(!var_2.a, true)) && !func_1(Struct_2(var_2.b, false, vec4<f32>(var_0.x, var_0.x, 180f, var_2.c.x), var_1.a, vec4<u32>(u_input.b, var_3, var_3, u_input.d.x)), max(var_2.e.x, 4294967295u), Struct_2(false, true, vec4<f32>(-923f, var_0.x, -832f, var_0.x), vec2<i32>(u_input.c.x, -2147483647i), vec4<u32>(0u, var_1.b.x, var_1.b.x, 105593u)), !var_2.b).x, true & (((var_2.b & false) & true) || false), _wgslsmith_f_op_vec4_f32(var_2.c + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_2.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_1.d.x, var_2.c.x) + vec4<f32>(var_0.x, 1211f, -1000f, -512f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2.c.x, var_1.c.x, -983f))))), -(~_wgslsmith_mult_vec2_i32(firstLeadingBit(var_2.d), var_1.a >> (vec2<u32>(32654u, var_2.e.x) % vec2<u32>(32u)))), ~min(~(~vec4<u32>(0u, 2614u, 17088u, 1u)), abs(u_input.a & var_2.e)));
    var var_5 = select(!vec2<bool>(false, var_4.b), select(vec2<bool>(var_2.a, false), vec2<bool>(true, var_2.a), false), !(!vec2<bool>(var_4.b, !var_2.b)));
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(var_4.c.x * func_4(vec2<bool>(true, true & var_5.x), Struct_2(any(vec4<bool>(true, false, true, true)), var_2.a != var_5.x, _wgslsmith_f_op_vec4_f32(trunc(var_2.c)), vec2<i32>(var_2.d.x, u_input.c.x), ~vec4<u32>(var_2.e.x, 1u, 20745u, var_2.e.x))).c.x), var_1.d.x, 955f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wxw, 44248u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-220f, func_4(!vec2<bool>(false, var_2.b), Struct_2(var_5.x, var_5.x, var_4.c, vec2<i32>(9531i, u_input.c.x), var_1.b)).c.x))), 574u, firstTrailingBit(vec3<i32>(var_1.e, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-19279i, 10989i, var_2.d.x) ^ vec3<i32>(-2147483647i, 14326i, var_1.e), vec3<i32>(var_2.d.x, 0i, u_input.c.x) & vec3<i32>(var_1.e, u_input.c.x, var_1.e)))));
}

