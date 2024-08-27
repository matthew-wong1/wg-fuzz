struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1000f, 1803f), false, 47725u, vec4<f32>(535f, -390f, 1000f, 449f), vec2<i32>(-45242i, 7132i)), vec4<u32>(108731u, 1u, 1u, 3623u), 51308u);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(144f, 2138f), false, 44021u, vec4<f32>(1000f, -526f, 1085f, -858f), vec2<i32>(-71904i, -29299i));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(244f, -459f), true, 1u, vec4<f32>(383f, 1568f, -905f, -1425f), vec2<i32>(-1i, 0i)), Struct_1(vec2<f32>(-617f, 1000f), false, 10601u, vec4<f32>(-916f, -1856f, -1803f, 135f), vec2<i32>(-17970i, 40943i)), Struct_1(vec2<f32>(315f, -859f), true, 1u, vec4<f32>(-997f, -1729f, 1568f, 811f), vec2<i32>(0i, -12185i)), Struct_1(vec2<f32>(230f, -1110f), true, 1u, vec4<f32>(-308f, -995f, -133f, 391f), vec2<i32>(i32(-2147483648), 14475i)), Struct_1(vec2<f32>(821f, 692f), false, 76926u, vec4<f32>(-1000f, 138f, -1000f, 1743f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<f32>(-708f, 545f), true, 4294967295u, vec4<f32>(-216f, 355f, -804f, 1219f), vec2<i32>(2147483647i, -9081i)), Struct_1(vec2<f32>(-1101f, -1046f), true, 27952u, vec4<f32>(-1102f, -490f, 1410f, 580f), vec2<i32>(2147483647i, 5913i)), Struct_1(vec2<f32>(-279f, -526f), false, 78004u, vec4<f32>(1215f, -548f, -2619f, -1138f), vec2<i32>(1i, 2147483647i)), Struct_1(vec2<f32>(755f, -1258f), false, 1u, vec4<f32>(-533f, -980f, 235f, -654f), vec2<i32>(25049i, -1i)), Struct_1(vec2<f32>(-2242f, 1324f), true, 0u, vec4<f32>(2182f, -176f, -1199f, -1101f), vec2<i32>(1i, -1i)), Struct_1(vec2<f32>(1107f, -327f), true, 82247u, vec4<f32>(936f, -1000f, 2014f, -261f), vec2<i32>(-17896i, 1i)), Struct_1(vec2<f32>(1108f, -158f), false, 4294967295u, vec4<f32>(-1832f, -1735f, 1000f, 416f), vec2<i32>(-9385i, 2147483647i)), Struct_1(vec2<f32>(1073f, -146f), false, 4294967295u, vec4<f32>(-656f, -959f, -497f, 855f), vec2<i32>(-7054i, 4475i)), Struct_1(vec2<f32>(397f, 397f), false, 4294967295u, vec4<f32>(-489f, 471f, 820f, 981f), vec2<i32>(26212i, -202i)), Struct_1(vec2<f32>(262f, -1154f), false, 94609u, vec4<f32>(118f, 531f, -1000f, 162f), vec2<i32>(-49811i, 2147483647i)), Struct_1(vec2<f32>(-523f, 3074f), false, 0u, vec4<f32>(-905f, 1353f, 1241f, 347f), vec2<i32>(2147483647i, 14471i)), Struct_1(vec2<f32>(276f, -554f), true, 61320u, vec4<f32>(196f, 518f, 1623f, 337f), vec2<i32>(-5825i, 9611i)), Struct_1(vec2<f32>(2133f, 207f), false, 73601u, vec4<f32>(-741f, -1290f, 1103f, 200f), vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<f32>(1393f, 693f), true, 4294967295u, vec4<f32>(785f, -373f, -240f, -442f), vec2<i32>(2147483647i, -32524i)), Struct_1(vec2<f32>(272f, -102f), false, 4294967295u, vec4<f32>(1600f, -999f, -177f, 767f), vec2<i32>(5380i, 12436i)), Struct_1(vec2<f32>(-510f, 511f), false, 0u, vec4<f32>(-2666f, -497f, -758f, 296f), vec2<i32>(-5108i, -36538i)), Struct_1(vec2<f32>(2183f, 126f), false, 65222u, vec4<f32>(-179f, -1084f, 1392f, -611f), vec2<i32>(-20297i, -1i)));

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(false, vec4<u32>(17407u, 4294967295u, 34771u, 4294967295u), Struct_2(Struct_1(vec2<f32>(-1576f, -871f), true, 0u, vec4<f32>(-1000f, 1321f, -196f, -1160f), vec2<i32>(-3398i, 46721i)), vec4<u32>(1u, 0u, 1u, 0u), 44449u), Struct_2(Struct_1(vec2<f32>(519f, 646f), true, 56315u, vec4<f32>(-667f, 781f, -1019f, 432f), vec2<i32>(-1i, -56494i)), vec4<u32>(0u, 1u, 0u, 11714u), 55330u)), Struct_3(true, vec4<u32>(0u, 67418u, 0u, 20215u), Struct_2(Struct_1(vec2<f32>(1221f, -471f), false, 0u, vec4<f32>(-1000f, 1394f, -326f, -1218f), vec2<i32>(8046i, 52252i)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 29991u), 52575u), Struct_2(Struct_1(vec2<f32>(-1000f, -724f), true, 68192u, vec4<f32>(-1000f, -837f, 470f, 644f), vec2<i32>(i32(-2147483648), i32(-2147483648))), vec4<u32>(13050u, 1u, 4294967295u, 0u), 22751u)), Struct_3(true, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), Struct_2(Struct_1(vec2<f32>(-1000f, 941f), true, 1u, vec4<f32>(-1000f, 598f, 1684f, 511f), vec2<i32>(11764i, 0i)), vec4<u32>(1u, 4294967295u, 82787u, 1u), 23813u), Struct_2(Struct_1(vec2<f32>(197f, 742f), false, 4294967295u, vec4<f32>(501f, 893f, 482f, -1000f), vec2<i32>(-41378i, 12786i)), vec4<u32>(2725u, 0u, 0u, 1u), 1u)), Struct_3(false, vec4<u32>(0u, 4294967295u, 30531u, 25909u), Struct_2(Struct_1(vec2<f32>(1000f, 416f), false, 77882u, vec4<f32>(1115f, -536f, 1162f, 478f), vec2<i32>(26033i, 2147483647i)), vec4<u32>(4942u, 0u, 28532u, 33559u), 0u), Struct_2(Struct_1(vec2<f32>(-1502f, -1268f), true, 1502u, vec4<f32>(-1000f, 871f, 541f, -189f), vec2<i32>(2147483647i, 3721i)), vec4<u32>(33298u, 0u, 1140u, 74279u), 0u)), Struct_3(true, vec4<u32>(14916u, 4294967295u, 170u, 1u), Struct_2(Struct_1(vec2<f32>(-153f, -1127f), true, 6391u, vec4<f32>(-1062f, -382f, 234f, 1000f), vec2<i32>(-45554i, -27277i)), vec4<u32>(4294967295u, 63425u, 59533u, 16054u), 1u), Struct_2(Struct_1(vec2<f32>(463f, 577f), false, 0u, vec4<f32>(327f, 1403f, 570f, -109f), vec2<i32>(3778i, -1i)), vec4<u32>(0u, 34804u, 31110u, 4294967295u), 77272u)), Struct_3(true, vec4<u32>(48625u, 9214u, 1u, 4294967295u), Struct_2(Struct_1(vec2<f32>(-1000f, -148f), true, 53379u, vec4<f32>(1625f, -789f, -298f, 248f), vec2<i32>(-14406i, 0i)), vec4<u32>(23566u, 9681u, 11276u, 0u), 65699u), Struct_2(Struct_1(vec2<f32>(-1188f, -1298f), true, 1u, vec4<f32>(-833f, -1000f, -440f, -594f), vec2<i32>(-35175i, 1i)), vec4<u32>(4294967295u, 15648u, 225u, 8107u), 1u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = 9066i;
    var var_1 = global0.b.ww;
    global2 = array<Struct_1, 22>();
    let var_2 = abs(-(vec4<i32>(-1i) * -(~vec4<i32>(arg_0.x, var_0, -45392i, -6362i))));
    let var_3 = Struct_2(global0.a, global0.b, abs(4294967295u));
    return !vec2<bool>(all(select(select(vec4<bool>(global0.a.b, var_3.a.b, var_3.a.b, global0.a.b), vec4<bool>(var_3.a.b, true, var_3.a.b, false), vec4<bool>(true, global0.a.b, true, false)), vec4<bool>(global1.b, false, true, global1.b), vec4<bool>(true, true, true, true))), all(vec3<bool>(global1.b, true, global0.a.b)));
}

fn func_3() -> i32 {
    return ~(-23657i);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = global0.a.d;
    var var_1 = !vec4<bool>(true, true, !any(func_2(vec3<i32>(global1.e.x, -1i, global0.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(943f))) < global1.d.x);
    let var_2 = Struct_4(_wgslsmith_clamp_i32(func_3(), select(firstLeadingBit(u_input.b.x) & abs(26647i), global0.a.e.x, true), 9814i), 4294967295u, Struct_3(!(!var_1.x), global0.b, Struct_2(Struct_1(vec2<f32>(117f, arg_1), 1115f > global0.a.d.x, ~1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 177f, global1.d.x, 1459f)), vec2<i32>(u_input.b.x, arg_2)), ~_wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(global0.a.c, 1u, 7286u, global0.a.c), global0.b), global1.c), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(277f, global0.a.d.x) * global0.a.a), var_1.x, ~62402u, _wgslsmith_f_op_vec4_f32(floor(global0.a.d)), _wgslsmith_mod_vec2_i32(global1.e, global1.e)), ~reverseBits(global0.b), firstTrailingBit(~38549u))), !(arg_0.x > (-2147483647i | global0.a.e.x)) && global1.b);
    let var_3 = false;
    global1 = var_2.c.d.a;
    return reverseBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min((vec3<u32>(countOneBits(u_input.a), _wgslsmith_mult_u32(global0.a.c, u_input.a), ~33366u) | ~vec3<u32>(0u, u_input.a, 1u)) & vec3<u32>(~(~global0.c), select(73450u, 10852u, any(vec3<bool>(true, global0.a.b, true))), func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(14003i, 0i, u_input.b.x, -1i), vec4<i32>(global0.a.e.x, 1i, u_input.b.x, global0.a.e.x), vec4<i32>(2147483647i, u_input.b.x, -2147483647i, global1.e.x)), _wgslsmith_f_op_f32(floor(144f)), 2147483647i)), reverseBits(global0.b.zwz));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-885f)) + _wgslsmith_f_op_f32(1353f + global1.a.x));
    let var_3 = select(_wgslsmith_sub_vec4_u32(~vec4<u32>(~u_input.a, 4294967295u, 1u, ~0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, ~global1.c, _wgslsmith_div_u32(global1.c, 1u), var_0.x), countOneBits(~vec4<u32>(4294967295u, 22259u, 4294967295u, global0.c)))), ~_wgslsmith_mod_vec4_u32(abs(global0.b), vec4<u32>(29305u, 0u, 9811u, 4294967295u)) & countOneBits(vec4<u32>(~var_0.x, abs(global1.c), ~4294967295u, firstTrailingBit(2258u))), _wgslsmith_f_op_f32(1056f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-127f)) + 209f)) > global0.a.d.x);
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.a.d.x)), _wgslsmith_f_op_f32(858f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.a.x, -1724f))))), func_2(-_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, 1i, global1.e.x), ~vec3<i32>(u_input.b.x, u_input.b.x, -1i))).x, ~var_0.x, _wgslsmith_f_op_vec4_f32(global0.a.d + global0.a.d), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_u32(~55678u, var_0.x), _wgslsmith_add_u32(var_0.x, ~global0.a.c)), var_3.yxz);
}

