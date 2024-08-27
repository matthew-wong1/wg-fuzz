struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<f32>(-379f, 1338f, 1253f, 2180f), vec2<bool>(false, true), vec2<u32>(69839u, 1u), vec4<i32>(3998i, -33665i, -1i, 1i), 1014u), Struct_1(vec4<f32>(-1445f, 1097f, -430f, -1189f), vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-1i, 2147483647i, -13702i, -1i), 0u), Struct_1(vec4<f32>(-1031f, 1135f, -1249f, -614f), vec2<bool>(false, false), vec2<u32>(0u, 4294967295u), vec4<i32>(-1i, i32(-2147483648), -1i, -35690i), 0u), Struct_1(vec4<f32>(-682f, -439f, 1000f, 2237f), vec2<bool>(true, false), vec2<u32>(1u, 27244u), vec4<i32>(i32(-2147483648), -1i, -1439i, 45613i), 1u), Struct_1(vec4<f32>(1527f, 282f, 1605f, -1557f), vec2<bool>(true, false), vec2<u32>(0u, 0u), vec4<i32>(42001i, 17509i, 13465i, 3431i), 1u), Struct_1(vec4<f32>(1000f, -575f, 1141f, -1058f), vec2<bool>(false, true), vec2<u32>(35984u, 1u), vec4<i32>(1i, 62102i, 2147483647i, -9605i), 0u), Struct_1(vec4<f32>(-979f, 1296f, -124f, -2008f), vec2<bool>(false, true), vec2<u32>(4294967295u, 84199u), vec4<i32>(-33360i, 1077i, -1i, 21055i), 0u), Struct_1(vec4<f32>(1127f, -979f, 141f, -1505f), vec2<bool>(true, false), vec2<u32>(2226u, 71523u), vec4<i32>(2147483647i, -47376i, 0i, 1i), 37811u), Struct_1(vec4<f32>(330f, 746f, -2067f, 335f), vec2<bool>(true, true), vec2<u32>(4294967295u, 1u), vec4<i32>(-1i, 24099i, -1i, 73893i), 98429u), Struct_1(vec4<f32>(519f, -2121f, -159f, -2083f), vec2<bool>(false, true), vec2<u32>(1u, 4294967295u), vec4<i32>(2147483647i, 3432i, 19454i, 31972i), 4294967295u), Struct_1(vec4<f32>(-560f, 324f, 758f, 967f), vec2<bool>(false, true), vec2<u32>(0u, 0u), vec4<i32>(66359i, -1i, -6009i, 0i), 1u), Struct_1(vec4<f32>(190f, 940f, 239f, 570f), vec2<bool>(false, true), vec2<u32>(0u, 71411u), vec4<i32>(3350i, 2147483647i, 1i, 10876i), 35924u), Struct_1(vec4<f32>(-254f, -1772f, -721f, -664f), vec2<bool>(true, true), vec2<u32>(76037u, 21922u), vec4<i32>(-1i, 0i, -9551i, -1i), 84337u), Struct_1(vec4<f32>(-321f, -637f, -1275f, 1778f), vec2<bool>(true, true), vec2<u32>(1u, 8847u), vec4<i32>(65260i, 114024i, -8841i, 33356i), 1u));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(1536f, 633f, 241f, -953f), vec2<bool>(true, false), vec2<u32>(4294967295u, 28469u), vec4<i32>(-15026i, -22978i, -1i, 21215i), 4294967295u), Struct_1(vec4<f32>(1833f, -319f, -2268f, 545f), vec2<bool>(true, false), vec2<u32>(45152u, 26677u), vec4<i32>(i32(-2147483648), 1i, 3983i, 0i), 4294967295u), Struct_1(vec4<f32>(-399f, 179f, 508f, -503f), vec2<bool>(true, false), vec2<u32>(7734u, 0u), vec4<i32>(2147483647i, -17502i, i32(-2147483648), 19205i), 33232u), Struct_1(vec4<f32>(-195f, -3001f, 1677f, 780f), vec2<bool>(true, false), vec2<u32>(0u, 18060u), vec4<i32>(1i, 47745i, 0i, -8702i), 29100u), Struct_1(vec4<f32>(-599f, -1013f, -1340f, -980f), vec2<bool>(true, false), vec2<u32>(4294967295u, 25959u), vec4<i32>(1i, 2147483647i, 0i, 1i), 32844u), Struct_1(vec4<f32>(475f, 2391f, 934f, 823f), vec2<bool>(false, true), vec2<u32>(77527u, 4294967295u), vec4<i32>(-1i, -17163i, i32(-2147483648), 1916i), 76210u), Struct_1(vec4<f32>(1019f, -662f, 349f, 607f), vec2<bool>(true, true), vec2<u32>(32861u, 73627u), vec4<i32>(-27066i, -19394i, -1i, -10148i), 0u), Struct_1(vec4<f32>(-1648f, 696f, 188f, 943f), vec2<bool>(false, false), vec2<u32>(41403u, 1u), vec4<i32>(-33407i, 1i, 0i, -9916i), 0u), Struct_1(vec4<f32>(-1174f, 1174f, -325f, 1374f), vec2<bool>(false, true), vec2<u32>(1u, 98645u), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), i32(-2147483648)), 29056u), Struct_1(vec4<f32>(636f, 1692f, -1501f, 194f), vec2<bool>(true, true), vec2<u32>(1u, 89024u), vec4<i32>(-50202i, -8086i, -35746i, 4400i), 49222u), Struct_1(vec4<f32>(1788f, 209f, -177f, 805f), vec2<bool>(true, true), vec2<u32>(0u, 28037u), vec4<i32>(-6109i, i32(-2147483648), 59725i, 2147483647i), 0u), Struct_1(vec4<f32>(1000f, 231f, -766f, -1624f), vec2<bool>(true, true), vec2<u32>(3258u, 13875u), vec4<i32>(i32(-2147483648), i32(-2147483648), -33350i, 1077i), 0u), Struct_1(vec4<f32>(500f, -1305f, 1000f, 733f), vec2<bool>(false, false), vec2<u32>(46269u, 22242u), vec4<i32>(20408i, 2147483647i, 1i, i32(-2147483648)), 455u), Struct_1(vec4<f32>(137f, 296f, -826f, -1000f), vec2<bool>(false, true), vec2<u32>(10413u, 54599u), vec4<i32>(-6137i, -31770i, 0i, -18526i), 36323u), Struct_1(vec4<f32>(174f, -433f, -1246f, -1654f), vec2<bool>(false, false), vec2<u32>(1u, 1u), vec4<i32>(35033i, -1i, 1i, -11587i), 5999u), Struct_1(vec4<f32>(110f, 471f, -501f, -1000f), vec2<bool>(true, true), vec2<u32>(4294967295u, 12786u), vec4<i32>(17045i, -6528i, -16628i, -11007i), 27131u), Struct_1(vec4<f32>(1241f, 1902f, -1403f, -315f), vec2<bool>(false, true), vec2<u32>(1u, 87004u), vec4<i32>(-6983i, i32(-2147483648), i32(-2147483648), 7259i), 4294967295u), Struct_1(vec4<f32>(-406f, 527f, -948f, 1252f), vec2<bool>(false, true), vec2<u32>(1u, 5767u), vec4<i32>(57552i, 2147483647i, i32(-2147483648), 0i), 4294967295u), Struct_1(vec4<f32>(-211f, -556f, -1508f, -109f), vec2<bool>(false, true), vec2<u32>(1u, 29807u), vec4<i32>(1i, 23222i, 6156i, -1i), 31189u), Struct_1(vec4<f32>(1441f, 2296f, 111f, -977f), vec2<bool>(true, false), vec2<u32>(0u, 0u), vec4<i32>(-1334i, 14496i, -12315i, 0i), 44498u), Struct_1(vec4<f32>(-1702f, 1236f, -1240f, -859f), vec2<bool>(true, false), vec2<u32>(4776u, 0u), vec4<i32>(8342i, -19878i, 0i, 2147483647i), 3880u), Struct_1(vec4<f32>(-933f, 1175f, 105f, -586f), vec2<bool>(false, true), vec2<u32>(47219u, 68804u), vec4<i32>(-85241i, -32817i, 62793i, 2147483647i), 52870u), Struct_1(vec4<f32>(-1000f, -134f, -997f, -367f), vec2<bool>(false, true), vec2<u32>(4294967295u, 25442u), vec4<i32>(15244i, i32(-2147483648), 2147483647i, 0i), 4294967295u), Struct_1(vec4<f32>(-789f, -747f, 1293f, 1669f), vec2<bool>(true, true), vec2<u32>(0u, 4294967295u), vec4<i32>(0i, 1i, 8474i, 24391i), 2393u), Struct_1(vec4<f32>(229f, -955f, -406f, 1917f), vec2<bool>(false, false), vec2<u32>(36488u, 4294967295u), vec4<i32>(84170i, 0i, i32(-2147483648), 1i), 1u), Struct_1(vec4<f32>(-233f, 1000f, -219f, 528f), vec2<bool>(true, true), vec2<u32>(4294967295u, 1u), vec4<i32>(i32(-2147483648), 2147483647i, 81968i, -29133i), 23300u), Struct_1(vec4<f32>(-1059f, 1000f, -818f, -121f), vec2<bool>(false, true), vec2<u32>(16577u, 838u), vec4<i32>(90i, 5017i, -23461i, i32(-2147483648)), 30842u), Struct_1(vec4<f32>(820f, -2585f, -1448f, -593f), vec2<bool>(false, true), vec2<u32>(1u, 1u), vec4<i32>(-1i, 1i, -1i, 0i), 9714u), Struct_1(vec4<f32>(-496f, 1196f, -1960f, 149f), vec2<bool>(true, false), vec2<u32>(39977u, 20679u), vec4<i32>(-10713i, -29843i, i32(-2147483648), 2147483647i), 84096u), Struct_1(vec4<f32>(-571f, 260f, -229f, -401f), vec2<bool>(true, false), vec2<u32>(20611u, 1u), vec4<i32>(1383i, -1i, -32704i, -46308i), 40032u));

var<private> global2: Struct_2;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> bool {
    global0 = array<Struct_1, 14>();
    global1 = array<Struct_1, 30>();
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(974f, global2.a.a.x, -441f, -724f) - _wgslsmith_f_op_vec4_f32(global2.a.a * global2.a.a))), arg_1.yx, ~vec2<u32>(abs(0u), 0u), countOneBits(~_wgslsmith_sub_vec4_i32(global2.a.d, global2.a.d)), arg_0), -_wgslsmith_mult_i32(-1i, min(global2.b, global2.b)));
    let var_0 = !arg_1.xy;
    var var_1 = _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x)));
    return all(arg_1.xxw);
}

fn func_2() -> Struct_2 {
    var var_0 = select(vec3<bool>(global2.a.b.x, global2.a.b.x, global2.a.b.x), vec3<bool>(true, true, global2.a.b.x), select(select(vec3<bool>(false, !global2.a.b.x, u_input.a.x == u_input.a.x), vec3<bool>(any(vec3<bool>(false, global2.a.b.x, global2.a.b.x)), global2.a.a.x <= 474f, false), false), !(!select(vec3<bool>(true, false, false), vec3<bool>(global2.a.b.x, false, true), vec3<bool>(global2.a.b.x, true, false))), _wgslsmith_f_op_f32(ceil(341f)) < _wgslsmith_f_op_f32(exp2(global2.a.a.x))));
    let var_1 = 60083u;
    var_0 = !vec3<bool>(func_3(global2.a.e, vec4<bool>(-1188f < global2.a.a.x, true, global2.a.b.x, false)), !(!(421f != global2.a.a.x)), any(vec3<bool>(global2.a.b.x || true, global2.a.b.x, global2.a.b.x)));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global2.a.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.x, global2.a.a.x, 456f, 277f) * vec4<f32>(global2.a.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x)) * vec4<f32>(-2522f, 559f, global2.a.a.x, 853f))), global2.a.b, ~vec2<u32>(~78141u, firstTrailingBit(27521u)), ~vec4<i32>(~global2.b, 61567i & global2.b, -7750i, global2.a.d.x << (u_input.c.x % 32u)), 12608u), ~firstTrailingBit(i32(-1i) * -u_input.b));
    var_0 = vec3<bool>(!all(!global2.a.b), !(firstLeadingBit(var_1) == 28942u), var_0.x);
    return Struct_2(global1[_wgslsmith_index_u32(~firstTrailingBit(~1u), 30u)], global2.a.d.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 30>();
    global0 = array<Struct_1, 14>();
    global2 = func_2();
    global2 = func_2();
    let var_0 = func_2().a;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.a.c.x << (u_input.c.x % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(select(global2.a.a, _wgslsmith_f_op_vec4_f32(global2.a.a * vec4<f32>(1050f, global2.a.a.x, global2.a.a.x, 344f)), !vec4<bool>(global2.a.b.x, global2.a.b.x, false, true))), !vec2<bool>(global2.a.b.x & true, 200f != global2.a.a.x), ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c), global2.a.c), global2.a.d, 7633u));
    var_0 = Struct_1(global2.a.a, func_2().a.b, vec2<u32>(abs(_wgslsmith_div_u32(~49581u, _wgslsmith_dot_vec3_u32(vec3<u32>(4288u, global2.a.c.x, global2.a.c.x), vec3<u32>(4294967295u, 38513u, var_0.c.x)))), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1056u, var_0.e, global2.a.e), vec3<u32>(u_input.c.x, 4294967295u, 4294967295u)), firstTrailingBit(~vec3<u32>(13437u, 40143u, u_input.c.x)))), vec4<i32>(0i, i32(-1i) * -3625i, global2.b, max(_wgslsmith_dot_vec4_i32(~vec4<i32>(64841i, -2147483647i, var_0.d.x, var_0.d.x), -global2.a.d), -9728i)), func_1(~30706u, func_1(9735u, global0[_wgslsmith_index_u32(~var_0.c.x, 14u)])).c.x);
    let var_1 = var_0.a.x;
    global1 = array<Struct_1, 30>();
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.d, min(-12256i, _wgslsmith_div_i32(~_wgslsmith_mult_i32(-8127i, var_0.d.x), -var_0.d.x)));
}

