struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(3457u, 35981u, vec4<bool>(false, true, true, false), 0u, false), Struct_1(31581u, 79910u, vec4<bool>(true, false, true, false), 0u, false), Struct_1(4294967295u, 63945u, vec4<bool>(true, false, true, true), 4829u, true), Struct_1(4294967295u, 97227u, vec4<bool>(true, false, true, false), 0u, true), Struct_1(4583u, 19091u, vec4<bool>(false, true, true, true), 4294967295u, false), Struct_1(0u, 1u, vec4<bool>(false, false, false, false), 0u, false), Struct_1(4294967295u, 1u, vec4<bool>(false, true, false, true), 49346u, true), Struct_1(0u, 1u, vec4<bool>(false, false, false, true), 34027u, true), Struct_1(0u, 1u, vec4<bool>(true, true, false, false), 68661u, true), Struct_1(0u, 4294967295u, vec4<bool>(true, true, true, false), 0u, false));

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(9364u, 55317u, vec4<bool>(true, false, true, false), 0u, false), Struct_1(0u, 0u, vec4<bool>(false, false, true, false), 68625u, false), Struct_1(5332u, 4294967295u, vec4<bool>(false, true, true, true), 50390u, false), Struct_1(1u, 4294967295u, vec4<bool>(true, true, true, true), 4950u, true), Struct_1(4294967295u, 6029u, vec4<bool>(false, false, false, false), 12266u, false), Struct_1(33775u, 4294967295u, vec4<bool>(false, false, true, true), 0u, true), Struct_1(8207u, 44302u, vec4<bool>(true, true, false, false), 1u, false), Struct_1(30555u, 88271u, vec4<bool>(false, false, false, true), 39557u, false), Struct_1(4294967295u, 4294967295u, vec4<bool>(true, true, true, false), 49321u, true), Struct_1(1u, 97013u, vec4<bool>(true, false, true, false), 0u, true), Struct_1(1u, 17907u, vec4<bool>(false, false, false, true), 4294967295u, false), Struct_1(32579u, 0u, vec4<bool>(true, true, true, true), 54924u, false), Struct_1(32601u, 4294967295u, vec4<bool>(true, false, false, true), 1u, true), Struct_1(0u, 4294967295u, vec4<bool>(false, true, false, false), 0u, true), Struct_1(1u, 0u, vec4<bool>(true, true, true, false), 31009u, false), Struct_1(0u, 1u, vec4<bool>(false, false, false, true), 25630u, true), Struct_1(30145u, 1u, vec4<bool>(true, true, false, false), 16783u, true), Struct_1(4294967295u, 17864u, vec4<bool>(false, true, false, true), 0u, false), Struct_1(48962u, 0u, vec4<bool>(true, false, true, true), 4294967295u, false), Struct_1(49304u, 115545u, vec4<bool>(true, true, false, true), 42058u, true), Struct_1(30025u, 1u, vec4<bool>(true, true, false, true), 0u, false), Struct_1(4294967295u, 224u, vec4<bool>(true, true, true, false), 1561u, true), Struct_1(123751u, 9357u, vec4<bool>(true, false, false, false), 4294967295u, false), Struct_1(2593u, 4294967295u, vec4<bool>(false, true, true, false), 59531u, true), Struct_1(1u, 4294967295u, vec4<bool>(false, false, false, true), 1u, true), Struct_1(32936u, 0u, vec4<bool>(true, false, false, true), 0u, true), Struct_1(0u, 0u, vec4<bool>(true, true, true, false), 4294967295u, true));

var<private> global3: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(vec2<u32>(63212u, 0u), vec3<f32>(-622f, 159f, 802f), vec2<f32>(1604f, -901f), vec2<u32>(14674u, 32998u), vec2<u32>(128984u, 0u)), Struct_5(vec2<u32>(0u, 1u), vec3<f32>(639f, 295f, -1000f), vec2<f32>(-735f, -2476f), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u)), Struct_5(vec2<u32>(0u, 0u), vec3<f32>(-149f, -701f, 968f), vec2<f32>(-474f, -569f), vec2<u32>(39930u, 1u), vec2<u32>(49820u, 4294967295u)), Struct_5(vec2<u32>(635u, 1u), vec3<f32>(1000f, 881f, -343f), vec2<f32>(958f, -2627f), vec2<u32>(64779u, 56978u), vec2<u32>(0u, 9229u)), Struct_5(vec2<u32>(40152u, 2530u), vec3<f32>(1674f, -578f, 1606f), vec2<f32>(-312f, -841f), vec2<u32>(11616u, 0u), vec2<u32>(20505u, 25895u)), Struct_5(vec2<u32>(0u, 0u), vec3<f32>(1445f, -969f, 1675f), vec2<f32>(-511f, -1000f), vec2<u32>(18092u, 83742u), vec2<u32>(4294967295u, 59876u)), Struct_5(vec2<u32>(68563u, 0u), vec3<f32>(-627f, 1504f, 1394f), vec2<f32>(999f, -414f), vec2<u32>(49536u, 4294967295u), vec2<u32>(0u, 0u)), Struct_5(vec2<u32>(4294967295u, 0u), vec3<f32>(158f, 537f, -147f), vec2<f32>(433f, -1480f), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 18670u)), Struct_5(vec2<u32>(1u, 23853u), vec3<f32>(-1179f, -229f, 230f), vec2<f32>(161f, 262f), vec2<u32>(3604u, 0u), vec2<u32>(29013u, 84856u)), Struct_5(vec2<u32>(54428u, 0u), vec3<f32>(1253f, 805f, 903f), vec2<f32>(-1235f, 1896f), vec2<u32>(4294967295u, 30586u), vec2<u32>(0u, 69100u)), Struct_5(vec2<u32>(30764u, 30821u), vec3<f32>(1462f, -579f, 1000f), vec2<f32>(314f, -588f), vec2<u32>(0u, 48548u), vec2<u32>(73187u, 34194u)), Struct_5(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1000f, -1827f, -250f), vec2<f32>(1425f, -898f), vec2<u32>(6858u, 69783u), vec2<u32>(80214u, 40695u)), Struct_5(vec2<u32>(52701u, 4294967295u), vec3<f32>(-713f, 1654f, -616f), vec2<f32>(-181f, -1160f), vec2<u32>(4294967295u, 1u), vec2<u32>(37712u, 4294967295u)), Struct_5(vec2<u32>(0u, 77484u), vec3<f32>(-208f, 1000f, 1000f), vec2<f32>(1000f, -1344f), vec2<u32>(0u, 4294967295u), vec2<u32>(23729u, 1u)), Struct_5(vec2<u32>(77944u, 59282u), vec3<f32>(1362f, -1098f, 1012f), vec2<f32>(617f, 1000f), vec2<u32>(49558u, 59779u), vec2<u32>(0u, 0u)), Struct_5(vec2<u32>(2422u, 18940u), vec3<f32>(-1674f, -1578f, -1962f), vec2<f32>(-739f, 1000f), vec2<u32>(4294967295u, 28295u), vec2<u32>(38514u, 1u)), Struct_5(vec2<u32>(0u, 61889u), vec3<f32>(-722f, -1308f, -1655f), vec2<f32>(-185f, -198f), vec2<u32>(0u, 13674u), vec2<u32>(2282u, 0u)), Struct_5(vec2<u32>(23440u, 31961u), vec3<f32>(-1000f, -993f, 1000f), vec2<f32>(-1067f, 1232f), vec2<u32>(47809u, 18300u), vec2<u32>(1u, 2605u)), Struct_5(vec2<u32>(64287u, 0u), vec3<f32>(1000f, -441f, 1044f), vec2<f32>(1000f, -339f), vec2<u32>(41472u, 4294967295u), vec2<u32>(40026u, 49445u)), Struct_5(vec2<u32>(65973u, 25684u), vec3<f32>(1198f, 680f, 1000f), vec2<f32>(459f, -798f), vec2<u32>(0u, 80770u), vec2<u32>(1u, 22252u)), Struct_5(vec2<u32>(1u, 1u), vec3<f32>(1659f, -936f, -423f), vec2<f32>(-1679f, 251f), vec2<u32>(111410u, 4871u), vec2<u32>(37081u, 46690u)), Struct_5(vec2<u32>(14917u, 33619u), vec3<f32>(-282f, 716f, 2564f), vec2<f32>(-975f, 120f), vec2<u32>(1u, 39075u), vec2<u32>(28810u, 0u)), Struct_5(vec2<u32>(65317u, 1u), vec3<f32>(540f, 353f, -350f), vec2<f32>(-1482f, 1443f), vec2<u32>(55778u, 4294967295u), vec2<u32>(30328u, 67839u)), Struct_5(vec2<u32>(34319u, 1u), vec3<f32>(269f, -556f, 351f), vec2<f32>(1417f, -1665f), vec2<u32>(0u, 27786u), vec2<u32>(6489u, 22857u)), Struct_5(vec2<u32>(1u, 0u), vec3<f32>(879f, 199f, -1992f), vec2<f32>(-1365f, -1135f), vec2<u32>(23546u, 3915u), vec2<u32>(4294967295u, 18236u)), Struct_5(vec2<u32>(28089u, 4294967295u), vec3<f32>(-598f, -557f, -146f), vec2<f32>(-483f, -160f), vec2<u32>(4294967295u, 6253u), vec2<u32>(4294967295u, 121478u)), Struct_5(vec2<u32>(0u, 0u), vec3<f32>(104f, 262f, -1000f), vec2<f32>(1000f, 295f), vec2<u32>(14218u, 1u), vec2<u32>(91019u, 39738u)));

var<private> global4: array<vec4<f32>, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3) -> bool {
    var var_0 = true;
    var var_1 = ~(~0i);
    global3 = array<Struct_5, 27>();
    global4 = array<vec4<f32>, 3>();
    var var_2 = global0.x;
    return !arg_2.a.e | true;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_5) -> vec2<bool> {
    var var_0 = any(select(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), (1548f < arg_2.b.x) & true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))));
    let var_1 = abs((1u >> (~arg_2.d.x % 32u)) ^ arg_2.e.x);
    let var_2 = vec4<f32>(-588f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.c.x * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)))), _wgslsmith_f_op_f32(-1976f * 548f), 1f);
    global0 = _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.d.xw & u_input.c.yz, arg_2.e), _wgslsmith_sub_u32(80964u | var_1, 29834u))), 3u)]);
    global3 = array<Struct_5, 27>();
    return select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec2<bool>(false, true), vec2<bool>(false, u_input.b <= u_input.b));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = !(!select(vec2<bool>(!arg_1.x, arg_3.x & arg_1.x), func_3(vec2<f32>(global0.x, -299f), global3[_wgslsmith_index_u32(~arg_2, 27u)], global3[_wgslsmith_index_u32(~0u, 27u)]), arg_1.yx));
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.zxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1186f, global0.x, global0.x))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.zzy - global0.wyy)))));
    let var_3 = vec4<u32>(~u_input.a, firstTrailingBit(48447u), 39619u ^ _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(13740u, 33583u, 111421u), vec3<u32>(u_input.b, 1u, arg_0.x))), reverseBits(u_input.c) ^ reverseBits(u_input.d.zzw)), ~max(_wgslsmith_div_u32(13430u, arg_2) & u_input.d.x, 4294967295u));
    return Struct_2(global0.x, _wgslsmith_f_op_f32(-var_2.x), -(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-14299i, -372i, -40498i), vec3<i32>(30009i, 21148i, -9400i), vec3<bool>(true, var_0.x, false))) ^ firstTrailingBit(vec3<i32>(-51469i, -1i, 24217i))), Struct_1(_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(4294967295u, ~1u, _wgslsmith_sub_u32(34584u, 1u), _wgslsmith_add_u32(arg_2, 20405u))), ~(_wgslsmith_add_u32(arg_0.x, arg_0.x) & _wgslsmith_mod_u32(53337u, 4294967295u)), select(!vec4<bool>(true, true, false, arg_3.x), select(!vec4<bool>(true, arg_1.x, true, false), select(vec4<bool>(arg_1.x, arg_3.x, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_3.x), arg_3.x), var_0.x), arg_3.x), 30933u, var_0.x || func_1(var_2.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(614f, global0.x, global0.x), global0.wyw)), Struct_3(global2[_wgslsmith_index_u32(29829u, 27u)], global2[_wgslsmith_index_u32(32634u, 27u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(~vec2<u32>(u_input.b, 0u), !(!vec3<bool>(any(vec2<bool>(true, false)), func_1(-561f, global0.yww, Struct_3(global2[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(2938u, 10u)])), true)), abs(u_input.c.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = Struct_3(Struct_1(min(16368u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4823u), vec2<u32>(var_0.d.a, 4294967295u))), countOneBits(1u), var_0.d.c, ~u_input.a, func_2(_wgslsmith_clamp_vec2_u32(~u_input.c.zz, u_input.c.zx, vec2<u32>(var_0.d.b, var_0.d.d)), !vec3<bool>(true, true, var_0.d.c.x), 1u, vec2<bool>(true, any(var_0.d.c.zx))).d.e), global2[_wgslsmith_index_u32(~u_input.c.x, 27u)]);
    global4 = array<vec4<f32>, 3>();
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~countOneBits(var_0.d.a), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 5561u)), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(51396u, 0u), ~vec2<u32>(0u, u_input.b)), abs(~var_1.a.b)))), 3u)];
    var var_2 = func_2(u_input.c.xz, !vec3<bool>(!(!var_1.b.c.x), var_1.b.c.x, all(var_1.b.c) && select(true, var_1.b.c.x, true)), 53389u, var_0.d.c.zy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.c ^ (vec3<i32>(-2147483647i, 1i, var_0.c.x) & var_2.c), _wgslsmith_sub_vec3_i32(select(var_0.c, vec3<i32>(var_2.c.x, var_0.c.x, -1i), vec3<bool>(false, false, true)), _wgslsmith_mult_vec3_i32(var_2.c, vec3<i32>(1i, var_0.c.x, -29931i)))), i32(-1i) * -25856i, _wgslsmith_sub_i32(var_2.c.x, _wgslsmith_div_i32(-var_0.c.x, _wgslsmith_mod_i32(0i, 1i))), (var_2.c.x & _wgslsmith_div_i32(-2147483647i, -57318i)) ^ var_2.c.x), vec4<i32>(-(~var_0.c.x) & var_0.c.x, var_0.c.x, -2080i, var_0.c.x), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstLeadingBit(~u_input.c.x), var_1.b.a), 3u)], (_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.b), min(0u, 60162u)) << (u_input.a % 32u)) >> (abs(var_1.a.a) % 32u), global0.x);
}

