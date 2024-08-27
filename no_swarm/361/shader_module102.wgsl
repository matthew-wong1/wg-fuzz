struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<u32>(0u, 4294967295u), vec2<i32>(0i, 2147483647i), Struct_1(vec3<f32>(-1000f, -427f, 1882f), vec4<u32>(1u, 4294967295u, 24462u, 44337u), false), Struct_1(vec3<f32>(323f, 242f, -104f), vec4<u32>(32487u, 1u, 37532u, 45195u), false)), Struct_2(vec2<u32>(1u, 5108u), vec2<i32>(-1i, -1i), Struct_1(vec3<f32>(-1481f, 983f, -183f), vec4<u32>(4294967295u, 58494u, 0u, 0u), true), Struct_1(vec3<f32>(1223f, -447f, -1000f), vec4<u32>(53922u, 0u, 9954u, 59293u), true)), Struct_2(vec2<u32>(49419u, 4294967295u), vec2<i32>(-63210i, 5899i), Struct_1(vec3<f32>(2738f, -495f, 906f), vec4<u32>(695u, 0u, 59475u, 94347u), true), Struct_1(vec3<f32>(524f, -137f, 434f), vec4<u32>(4294967295u, 59087u, 8564u, 71250u), false)), Struct_2(vec2<u32>(48120u, 0u), vec2<i32>(25197i, 2147483647i), Struct_1(vec3<f32>(-616f, 1942f, 881f), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), true), Struct_1(vec3<f32>(-115f, -631f, 1912f), vec4<u32>(15902u, 12822u, 0u, 4294967295u), false)), Struct_2(vec2<u32>(4294967295u, 37065u), vec2<i32>(-73629i, 2147483647i), Struct_1(vec3<f32>(175f, 1463f, 1000f), vec4<u32>(125191u, 52184u, 29876u, 1u), true), Struct_1(vec3<f32>(-399f, 791f, -848f), vec4<u32>(0u, 4294967295u, 31279u, 26250u), false)), Struct_2(vec2<u32>(0u, 0u), vec2<i32>(-28887i, -8136i), Struct_1(vec3<f32>(770f, 224f, 1780f), vec4<u32>(4294967295u, 30324u, 12294u, 13627u), true), Struct_1(vec3<f32>(-1000f, 1329f, -601f), vec4<u32>(95988u, 1u, 4294967295u, 27837u), false)), Struct_2(vec2<u32>(17289u, 0u), vec2<i32>(-33034i, -32168i), Struct_1(vec3<f32>(-520f, 622f, -1024f), vec4<u32>(4294967295u, 44541u, 4294967295u, 0u), false), Struct_1(vec3<f32>(919f, -970f, -397f), vec4<u32>(4294967295u, 0u, 1u, 118923u), true)), Struct_2(vec2<u32>(28736u, 0u), vec2<i32>(-1i, 2147483647i), Struct_1(vec3<f32>(-2235f, 1526f, 1599f), vec4<u32>(4294967295u, 48501u, 4294967295u, 0u), false), Struct_1(vec3<f32>(1288f, -1011f, 1245f), vec4<u32>(4294967295u, 65500u, 35655u, 29106u), true)), Struct_2(vec2<u32>(0u, 1u), vec2<i32>(1i, -5305i), Struct_1(vec3<f32>(189f, -1136f, 361f), vec4<u32>(4294967295u, 66640u, 4294967295u, 1u), false), Struct_1(vec3<f32>(361f, -434f, -331f), vec4<u32>(0u, 2385u, 63605u, 42031u), true)), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(56990i, -1i), Struct_1(vec3<f32>(-1441f, -2755f, -665f), vec4<u32>(45766u, 17630u, 13676u, 18132u), true), Struct_1(vec3<f32>(-529f, -509f, 1339f), vec4<u32>(4294967295u, 4294967295u, 44578u, 56358u), false)), Struct_2(vec2<u32>(0u, 1u), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec3<f32>(716f, -1000f, -716f), vec4<u32>(0u, 17872u, 45996u, 0u), false), Struct_1(vec3<f32>(-519f, 1363f, -619f), vec4<u32>(4294967295u, 25584u, 34026u, 31943u), true)), Struct_2(vec2<u32>(2156u, 29638u), vec2<i32>(1i, -1i), Struct_1(vec3<f32>(-619f, -186f, -1510f), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), false), Struct_1(vec3<f32>(477f, -1485f, 1373f), vec4<u32>(95592u, 30361u, 4294967295u, 1u), false)), Struct_2(vec2<u32>(4060u, 39664u), vec2<i32>(1i, 2147483647i), Struct_1(vec3<f32>(1000f, 581f, -1301f), vec4<u32>(1u, 0u, 25397u, 4294967295u), false), Struct_1(vec3<f32>(-1367f, 899f, -2474f), vec4<u32>(10073u, 20877u, 0u, 10204u), false)), Struct_2(vec2<u32>(47394u, 4294967295u), vec2<i32>(20055i, -40806i), Struct_1(vec3<f32>(-381f, -1289f, 258f), vec4<u32>(9842u, 14323u, 4294967295u, 1u), false), Struct_1(vec3<f32>(-1000f, 478f, -500f), vec4<u32>(0u, 4294967295u, 1u, 0u), true)), Struct_2(vec2<u32>(4294967295u, 0u), vec2<i32>(489i, 29284i), Struct_1(vec3<f32>(1084f, 1203f, 145f), vec4<u32>(0u, 60104u, 33507u, 26921u), false), Struct_1(vec3<f32>(1131f, -1373f, 1000f), vec4<u32>(1u, 1u, 33025u, 1u), true)), Struct_2(vec2<u32>(4294967295u, 11484u), vec2<i32>(i32(-2147483648), 33429i), Struct_1(vec3<f32>(736f, -701f, -1731f), vec4<u32>(38051u, 31115u, 0u, 0u), true), Struct_1(vec3<f32>(305f, -1000f, 625f), vec4<u32>(21303u, 1u, 4294967295u, 1u), false)), Struct_2(vec2<u32>(1u, 8687u), vec2<i32>(i32(-2147483648), 41194i), Struct_1(vec3<f32>(-1005f, -964f, -177f), vec4<u32>(26713u, 27329u, 33762u, 4294967295u), true), Struct_1(vec3<f32>(-200f, -2173f, 727f), vec4<u32>(4294967295u, 107098u, 0u, 13400u), true)), Struct_2(vec2<u32>(4294967295u, 0u), vec2<i32>(2147483647i, 45936i), Struct_1(vec3<f32>(283f, 697f, -528f), vec4<u32>(42746u, 35352u, 0u, 10751u), true), Struct_1(vec3<f32>(385f, -1187f, 1297f), vec4<u32>(4294967295u, 1u, 118713u, 39108u), true)), Struct_2(vec2<u32>(80733u, 61731u), vec2<i32>(11163i, 2147483647i), Struct_1(vec3<f32>(352f, 583f, -927f), vec4<u32>(1u, 41821u, 0u, 30542u), true), Struct_1(vec3<f32>(506f, -733f, -652f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 78783u), false)), Struct_2(vec2<u32>(43871u, 1u), vec2<i32>(-20352i, -68128i), Struct_1(vec3<f32>(171f, -701f, -398f), vec4<u32>(4294967295u, 1u, 42933u, 4294967295u), true), Struct_1(vec3<f32>(-567f, -604f, 516f), vec4<u32>(0u, 0u, 1u, 4294967295u), true)), Struct_2(vec2<u32>(74426u, 33933u), vec2<i32>(-7150i, -1i), Struct_1(vec3<f32>(-127f, 1019f, 486f), vec4<u32>(2794u, 1u, 68505u, 1u), true), Struct_1(vec3<f32>(-1000f, -1331f, -2004f), vec4<u32>(62512u, 1u, 26195u, 4294967295u), true)), Struct_2(vec2<u32>(38999u, 125143u), vec2<i32>(2147483647i, -1i), Struct_1(vec3<f32>(1496f, -291f, -426f), vec4<u32>(1u, 20833u, 0u, 22633u), false), Struct_1(vec3<f32>(2243f, 1000f, 665f), vec4<u32>(42167u, 1u, 4294967295u, 4294967295u), false)), Struct_2(vec2<u32>(45846u, 52589u), vec2<i32>(30210i, 15607i), Struct_1(vec3<f32>(450f, 637f, 892f), vec4<u32>(0u, 4294967295u, 30625u, 4294967295u), true), Struct_1(vec3<f32>(-2748f, -641f, -1236f), vec4<u32>(0u, 0u, 37884u, 44777u), true)), Struct_2(vec2<u32>(1u, 1u), vec2<i32>(2147483647i, 1i), Struct_1(vec3<f32>(-1268f, -1539f, 1176f), vec4<u32>(4294967295u, 79161u, 55548u, 1u), false), Struct_1(vec3<f32>(847f, 277f, 1000f), vec4<u32>(85287u, 16084u, 4294967295u, 80717u), false)), Struct_2(vec2<u32>(5970u, 4294967295u), vec2<i32>(0i, -2719i), Struct_1(vec3<f32>(-205f, 1044f, -1397f), vec4<u32>(85821u, 30548u, 4294967295u, 2768u), false), Struct_1(vec3<f32>(200f, -178f, 298f), vec4<u32>(66533u, 22766u, 43219u, 32577u), false)), Struct_2(vec2<u32>(1u, 1u), vec2<i32>(2147483647i, -1i), Struct_1(vec3<f32>(1550f, 283f, 1409f), vec4<u32>(1u, 1u, 1u, 0u), false), Struct_1(vec3<f32>(-1029f, 1132f, -410f), vec4<u32>(44501u, 38853u, 0u, 0u), true)), Struct_2(vec2<u32>(4294967295u, 59948u), vec2<i32>(22321i, i32(-2147483648)), Struct_1(vec3<f32>(242f, -659f, -1746f), vec4<u32>(6574u, 7303u, 40086u, 35329u), true), Struct_1(vec3<f32>(410f, -598f, 340f), vec4<u32>(67364u, 37620u, 50280u, 1u), false)), Struct_2(vec2<u32>(0u, 63994u), vec2<i32>(2147483647i, 69706i), Struct_1(vec3<f32>(-753f, 1000f, 1358f), vec4<u32>(122652u, 7070u, 66140u, 0u), true), Struct_1(vec3<f32>(-1000f, -307f, 1713f), vec4<u32>(4294967295u, 34683u, 4294967295u, 0u), true)), Struct_2(vec2<u32>(1u, 1u), vec2<i32>(32461i, -8865i), Struct_1(vec3<f32>(784f, -369f, -1312f), vec4<u32>(15752u, 1u, 31236u, 63142u), true), Struct_1(vec3<f32>(1576f, -565f, 1150f), vec4<u32>(4294967295u, 1u, 26299u, 4294967295u), false)), Struct_2(vec2<u32>(7749u, 25128u), vec2<i32>(572i, i32(-2147483648)), Struct_1(vec3<f32>(640f, -711f, 1000f), vec4<u32>(36800u, 4294967295u, 4547u, 1u), false), Struct_1(vec3<f32>(356f, -1000f, 906f), vec4<u32>(36670u, 0u, 18052u, 4294967295u), false)), Struct_2(vec2<u32>(4294967295u, 1u), vec2<i32>(0i, -18675i), Struct_1(vec3<f32>(-909f, 140f, 128f), vec4<u32>(11307u, 64149u, 118u, 11494u), true), Struct_1(vec3<f32>(514f, -754f, -186f), vec4<u32>(11532u, 0u, 6274u, 27814u), true)), Struct_2(vec2<u32>(0u, 74722u), vec2<i32>(-1i, 13067i), Struct_1(vec3<f32>(1639f, 266f, -1000f), vec4<u32>(2817u, 38895u, 0u, 0u), true), Struct_1(vec3<f32>(-545f, -991f, -521f), vec4<u32>(1u, 0u, 11890u, 115016u), true)));

var<private> global2: u32 = 1u;

var<private> global3: array<vec4<f32>, 8>;

var<private> global4: array<u32, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    return arg_0.c;
}

fn func_3() -> bool {
    global2 = u_input.a.x;
    global3 = array<vec4<f32>, 8>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f)) + _wgslsmith_f_op_f32(trunc(125f)));
    global0 = array<vec3<f32>, 28>();
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(97449u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 16559u), ~12195u), 4u)], _wgslsmith_mod_u32(abs(global4[_wgslsmith_index_u32(72516u, 4u)]), u_input.a.x), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 45566u), max(u_input.a.x, 1u)), global4[_wgslsmith_index_u32(~59936u, 4u)]), ~select(vec4<u32>(47500u, 74447u, 53398u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(67022u, 1u, 0u, u_input.a.x), vec4<u32>(global4[_wgslsmith_index_u32(92963u, 4u)], 1u, 84508u, global4[_wgslsmith_index_u32(16372u, 4u)])), true)), 32u)];
    return var_1.c.c;
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = func_3();
    var_0 = !arg_0.d.c;
    var var_1 = (_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1993u, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(arg_0.d.b, vec4<u32>(28940u, u_input.a.x, arg_0.c.b.x, 3395u)), any(vec3<bool>(arg_0.d.c, false, true))), abs(arg_0.c.b) & vec4<u32>(53681u, arg_0.a.x, global4[_wgslsmith_index_u32(arg_0.d.b.x, 4u)], u_input.a.x)) << (_wgslsmith_mod_u32(~0u, 4294967295u) % 32u)) >> (65793u % 32u);
    var var_2 = max(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, arg_0.b.x, 456i) | vec4<i32>(-2147483647i, arg_0.b.x, u_input.b.x, 0i), firstTrailingBit(vec4<i32>(0i, -48430i, -3398i, 2147483647i))), u_input.b.x, 2147483647i, ~42726i) ^ vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-6419i, -1i)), -arg_0.b.x, arg_0.b.x, 2147483647i), vec4<i32>(0i, i32(-1i) * -(~(-2147483647i)), u_input.b.x, -arg_0.b.x));
    global3 = array<vec4<f32>, 8>();
    return arg_0.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = vec3<bool>(func_2(Struct_2(u_input.a.yx, u_input.b.zz, Struct_1(vec3<f32>(759f, 1343f, -932f), vec4<u32>(u_input.a.x, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 4u)], global4[_wgslsmith_index_u32(u_input.a.x, 4u)]), false), func_1(Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), u_input.b.yz, Struct_1(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 4u)], 28u)], vec4<u32>(u_input.a.x, u_input.a.x, 62472u, 33197u), false), Struct_1(global0[_wgslsmith_index_u32(35119u, 28u)], vec4<u32>(13053u, 4294967295u, u_input.a.x, 0u), true)), global1[_wgslsmith_index_u32(18337u, 32u)], -103f, Struct_2(u_input.a.yz, u_input.b.yy, Struct_1(vec3<f32>(1506f, 1331f, 491f), vec4<u32>(118238u, u_input.a.x, global4[_wgslsmith_index_u32(0u, 4u)], 16658u), true), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec4<u32>(4260u, global4[_wgslsmith_index_u32(58787u, 4u)], 64696u, u_input.a.x), false))))) && func_1(Struct_2(firstTrailingBit(u_input.a.xz), u_input.b.zz, func_1(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 4u)], 4u)], 32u)], Struct_2(vec2<u32>(u_input.a.x, 54215u), vec2<i32>(-1i, -2773i), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<u32>(65413u, 31003u, u_input.a.x, 4294967295u), true), Struct_1(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49242u, 4u)], 4u)], 4u)], 28u)], vec4<u32>(13480u, u_input.a.x, 7979u, global4[_wgslsmith_index_u32(0u, 4u)]), true)), -250f, Struct_2(vec2<u32>(0u, 46258u), u_input.b.zx, Struct_1(global0[_wgslsmith_index_u32(7392u, 28u)], vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 4u)]), true), Struct_1(vec3<f32>(350f, -221f, -172f), vec4<u32>(1u, 53432u, global4[_wgslsmith_index_u32(30539u, 4u)], 56055u), true))), func_1(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 4u)], 4u)], 32u)], global1[_wgslsmith_index_u32(4841u, 32u)], -1000f, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 4u)], 32u)])), Struct_2(u_input.a.xy, _wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(5264i, 45845i)), func_1(Struct_2(u_input.a.xy, u_input.b.xy, Struct_1(global0[_wgslsmith_index_u32(52544u, 28u)], vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.a.x, 4u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 4294967295u), false), Struct_1(global0[_wgslsmith_index_u32(1u, 28u)], vec4<u32>(86230u, u_input.a.x, 4294967295u, 4294967295u), true)), global1[_wgslsmith_index_u32(38262u, 32u)], 1000f, Struct_2(u_input.a.xy, u_input.b.xz, Struct_1(global0[_wgslsmith_index_u32(32426u, 28u)], vec4<u32>(98849u, 4294967295u, 5255u, 0u), true), Struct_1(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 28u)], vec4<u32>(61158u, global4[_wgslsmith_index_u32(u_input.a.x, 4u)], global4[_wgslsmith_index_u32(0u, 4u)], 4294967295u), true))), func_1(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15576u, 4u)], 32u)], Struct_2(u_input.a.zx, vec2<i32>(44975i, u_input.b.x), Struct_1(global0[_wgslsmith_index_u32(0u, 28u)], vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(1588u, 4u)], u_input.a.x, 1u), true), Struct_1(global0[_wgslsmith_index_u32(42620u, 28u)], vec4<u32>(7352u, 64719u, u_input.a.x, u_input.a.x), false)), -2453f, Struct_2(u_input.a.yz, u_input.b.xy, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], global4[_wgslsmith_index_u32(1u, 4u)], u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 4u)]), false), Struct_1(global0[_wgslsmith_index_u32(1733u, 28u)], vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(24675u, 4u)], 28199u, 91492u), false)))), -594f, global1[_wgslsmith_index_u32(~1u, 32u)]).c, true, true);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2030f), -194f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1639f, _wgslsmith_f_op_f32(-358f + -2341f)))))), _wgslsmith_mult_vec4_u32(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, 36547u, u_input.a.x), vec4<u32>(24075u, 4294967295u, 37032u, 62997u))), vec4<u32>(select(1u, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), 4u)], false), 77672u, ~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(7062u, 4u)], 35342u), 4u)], ~(~global4[_wgslsmith_index_u32(u_input.a.x, 4u)]))), !all(!vec2<bool>(var_1.x, var_1.x)));
    let var_3 = Struct_1(vec3<f32>(366f, _wgslsmith_f_op_f32(1420f * _wgslsmith_div_f32(var_2.a.x, -683f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(394f))) + _wgslsmith_f_op_f32(-1296f - _wgslsmith_f_op_f32(f32(-1f) * -1347f)))), firstTrailingBit(firstTrailingBit(vec4<u32>(max(2748u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 4u)], 4u)]), _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(1u, 4u)], global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 4294967295u), firstLeadingBit(41960u), global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)]))), var_2.a.x <= _wgslsmith_f_op_f32(-var_2.a.x));
    var var_4 = 1i;
    let var_5 = var_3;
    let var_6 = Struct_1(var_5.a, firstTrailingBit(_wgslsmith_mod_vec4_u32(reverseBits(var_3.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_5.b.x, 1u, var_2.b.x), vec4<u32>(var_5.b.x, u_input.a.x, global4[_wgslsmith_index_u32(56313u, 4u)], var_2.b.x)), vec4<u32>(4294967295u, var_2.b.x, ~83631u, firstLeadingBit(global4[_wgslsmith_index_u32(var_5.b.x, 4u)])))), var_5.c);
    var var_7 = Struct_2(var_3.b.yz, vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -5392i, firstTrailingBit(u_input.b.x)), abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(2147483647i, 0i, u_input.b.x)))), func_1(Struct_2(vec2<u32>(~42787u, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(var_6.b.x, 4u)], var_6.b.x)), _wgslsmith_div_vec2_i32(-u_input.b.yz, u_input.b.xx), func_1(Struct_2(vec2<u32>(global4[_wgslsmith_index_u32(var_6.b.x, 4u)], 0u), vec2<i32>(-37421i, -37900i), var_5, Struct_1(var_3.a, vec4<u32>(var_6.b.x, 4294967295u, var_2.b.x, 0u), true)), global1[_wgslsmith_index_u32(~var_2.b.x, 32u)], _wgslsmith_f_op_f32(f32(-1f) * -213f), global1[_wgslsmith_index_u32(var_2.b.x, 32u)]), var_6), Struct_2(~var_2.b.xz, vec2<i32>(-5442i, 9363i), var_3, var_5), var_3.a.x, Struct_2((var_5.b.wx ^ vec2<u32>(0u, var_3.b.x)) ^ vec2<u32>(4294967295u, 6845u), -vec2<i32>(u_input.b.x, -1i), Struct_1(var_2.a, var_3.b, var_6.c), Struct_1(_wgslsmith_f_op_vec3_f32(-var_6.a), vec4<u32>(28447u, global4[_wgslsmith_index_u32(21986u, 4u)], 68766u, var_6.b.x), var_6.c))), func_1(global1[_wgslsmith_index_u32(countOneBits(var_2.b.x) >> (var_2.b.x % 32u), 32u)], Struct_2(~(~vec2<u32>(19489u, 0u)), ~vec2<i32>(1i, -2147483647i), func_1(Struct_2(vec2<u32>(var_3.b.x, 9259u), u_input.b.yy, Struct_1(vec3<f32>(1000f, var_6.a.x, -1634f), var_6.b, true), var_6), global1[_wgslsmith_index_u32(~var_3.b.x, 32u)], _wgslsmith_f_op_f32(-var_6.a.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 32u)]), Struct_1(global0[_wgslsmith_index_u32(countOneBits(var_2.b.x), 28u)], firstTrailingBit(var_6.b), false)), _wgslsmith_f_op_f32(f32(-1f) * -1566f), Struct_2(vec2<u32>(72883u, global4[_wgslsmith_index_u32(var_5.b.x, 4u)]) & (vec2<u32>(0u, 115193u) | vec2<u32>(var_5.b.x, var_5.b.x)), countOneBits(-vec2<i32>(-21492i, u_input.b.x)), var_6, var_6)));
    let var_8 = ~53704u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, max(vec4<u32>(var_8 >> (7484u % 32u), ~u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 4u)] << (var_3.b.x % 32u), min(var_7.c.b.x, 22087u)) | ~func_1(Struct_2(var_2.b.zy, vec2<i32>(var_7.b.x, var_7.b.x), Struct_1(vec3<f32>(-166f, 472f, var_6.a.x), var_6.b, false), Struct_1(vec3<f32>(-886f, var_5.a.x, -990f), var_6.b, true)), Struct_2(var_2.b.zy, u_input.b.xz, Struct_1(vec3<f32>(-1824f, var_7.c.a.x, var_5.a.x), var_7.d.b, false), Struct_1(var_3.a, vec4<u32>(var_8, u_input.a.x, var_7.c.b.x, var_7.a.x), true)), 388f, Struct_2(var_6.b.yw, var_7.b, Struct_1(global0[_wgslsmith_index_u32(var_7.c.b.x, 28u)], vec4<u32>(114404u, var_8, 4294967295u, var_2.b.x), true), Struct_1(var_7.d.a, var_2.b, true))).b, vec4<u32>(reverseBits(4294967295u), 4294967295u, 1453u, max(~var_8, 53465u & var_6.b.x))), vec2<i32>(~(var_7.b.x & 1i), var_7.b.x));
}

