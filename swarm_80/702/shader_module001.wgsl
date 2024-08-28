struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(false, vec4<u32>(97001u, 34069u, 4294967295u, 24950u), 4294967295u, vec3<f32>(-697f, 1000f, -1518f), vec3<i32>(13219i, 2147483647i, 2147483647i)), vec3<f32>(535f, 117f, -444f)), Struct_2(Struct_1(false, vec4<u32>(9775u, 11102u, 1434u, 54030u), 0u, vec3<f32>(1015f, -431f, -225f), vec3<i32>(28959i, 40569i, 51388i)), vec3<f32>(-359f, 762f, 495f)), Struct_2(Struct_1(true, vec4<u32>(1328u, 0u, 0u, 19823u), 88957u, vec3<f32>(1051f, -539f, -1207f), vec3<i32>(-1i, -10160i, 0i)), vec3<f32>(602f, 1804f, -1023f)), Struct_2(Struct_1(false, vec4<u32>(27420u, 4294967295u, 16852u, 1u), 1u, vec3<f32>(538f, 1623f, 1958f), vec3<i32>(i32(-2147483648), 0i, -1i)), vec3<f32>(-787f, 2342f, -596f)), Struct_2(Struct_1(true, vec4<u32>(11283u, 1355u, 25590u, 4294967295u), 36847u, vec3<f32>(772f, 819f, -621f), vec3<i32>(-31942i, 0i, -1i)), vec3<f32>(542f, 280f, -745f)), Struct_2(Struct_1(true, vec4<u32>(0u, 47239u, 37515u, 1u), 64869u, vec3<f32>(-805f, -1091f, -1903f), vec3<i32>(6026i, 1i, -26876i)), vec3<f32>(461f, 521f, 336f)), Struct_2(Struct_1(false, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), 1u, vec3<f32>(-1000f, -901f, 2459f), vec3<i32>(-14083i, 26172i, 1i)), vec3<f32>(-463f, 1000f, 2165f)), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 1u, 0u, 1u), 53999u, vec3<f32>(1570f, 185f, 1304f), vec3<i32>(1i, 0i, 1i)), vec3<f32>(-526f, 126f, -1413f)), Struct_2(Struct_1(false, vec4<u32>(1u, 78757u, 0u, 4294967295u), 4294967295u, vec3<f32>(737f, -2395f, -1059f), vec3<i32>(-12997i, 1i, -20762i)), vec3<f32>(1451f, -215f, 264f)), Struct_2(Struct_1(false, vec4<u32>(66982u, 17358u, 0u, 20219u), 35733u, vec3<f32>(268f, 1194f, -1239f), vec3<i32>(i32(-2147483648), 2147483647i, 1i)), vec3<f32>(909f, -543f, 1408f)), Struct_2(Struct_1(false, vec4<u32>(1u, 4294967295u, 35384u, 26600u), 28553u, vec3<f32>(769f, 176f, -355f), vec3<i32>(1i, -3952i, -5075i)), vec3<f32>(-204f, 908f, 485f)), Struct_2(Struct_1(true, vec4<u32>(18280u, 1u, 26760u, 13378u), 30191u, vec3<f32>(892f, -1491f, -690f), vec3<i32>(1i, -55775i, -1i)), vec3<f32>(1153f, 1069f, -597f)), Struct_2(Struct_1(true, vec4<u32>(9218u, 0u, 0u, 43455u), 3121u, vec3<f32>(102f, -2373f, 748f), vec3<i32>(69i, 1i, i32(-2147483648))), vec3<f32>(-291f, -1786f, 340f)), Struct_2(Struct_1(true, vec4<u32>(0u, 1u, 4294967295u, 95991u), 30377u, vec3<f32>(-450f, 767f, -181f), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i)), vec3<f32>(-1345f, 1438f, 1284f)), Struct_2(Struct_1(true, vec4<u32>(13412u, 11334u, 4294967295u, 4294967295u), 0u, vec3<f32>(1737f, 884f, -128f), vec3<i32>(-1i, -16551i, -43450i)), vec3<f32>(137f, 770f, -305f)), Struct_2(Struct_1(false, vec4<u32>(0u, 0u, 0u, 8209u), 40413u, vec3<f32>(1635f, -978f, -297f), vec3<i32>(-8951i, 2147483647i, -7000i)), vec3<f32>(-804f, -419f, 339f)), Struct_2(Struct_1(false, vec4<u32>(28786u, 67693u, 4294967295u, 24403u), 50358u, vec3<f32>(262f, -984f, -969f), vec3<i32>(-1i, 7000i, -1i)), vec3<f32>(182f, -1146f, 1221f)), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 65593u, 1626u, 59181u), 0u, vec3<f32>(1015f, 623f, 236f), vec3<i32>(-1i, 2147483647i, 2147483647i)), vec3<f32>(-210f, 1217f, 1118f)), Struct_2(Struct_1(false, vec4<u32>(29639u, 0u, 24764u, 115450u), 36510u, vec3<f32>(-1345f, 1291f, -1451f), vec3<i32>(43254i, -7792i, 0i)), vec3<f32>(1042f, -432f, 300f)), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 13974u, 62818u, 57328u), 1u, vec3<f32>(1277f, 580f, -1030f), vec3<i32>(-14037i, -24841i, 1i)), vec3<f32>(997f, 391f, -205f)), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 24111u, 1u, 0u), 59970u, vec3<f32>(891f, 364f, -1115f), vec3<i32>(1i, 1i, 55922i)), vec3<f32>(1125f, 604f, -773f)), Struct_2(Struct_1(false, vec4<u32>(12020u, 9219u, 41416u, 17132u), 4294967295u, vec3<f32>(783f, -1393f, -1447f), vec3<i32>(0i, 19161i, 14076i)), vec3<f32>(488f, -376f, 1292f)), Struct_2(Struct_1(true, vec4<u32>(0u, 0u, 94247u, 0u), 1u, vec3<f32>(1000f, -836f, -1000f), vec3<i32>(-9422i, 1i, 21325i)), vec3<f32>(1000f, -445f, 1990f)), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 0u, 90133u, 51575u), 29292u, vec3<f32>(-880f, -2120f, 1557f), vec3<i32>(26871i, 2147483647i, 52548i)), vec3<f32>(-966f, -1070f, -1274f)), Struct_2(Struct_1(true, vec4<u32>(50246u, 1u, 3274u, 18939u), 44130u, vec3<f32>(-1901f, -289f, 347f), vec3<i32>(1i, -28567i, 21437i)), vec3<f32>(2043f, 133f, -334f)), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 33304u, 1u, 1u), 4294967295u, vec3<f32>(-131f, 1215f, 1180f), vec3<i32>(-6257i, -55299i, 89143i)), vec3<f32>(-246f, -715f, -1092f)), Struct_2(Struct_1(true, vec4<u32>(4023u, 20782u, 16382u, 62813u), 4294967295u, vec3<f32>(-1000f, 999f, 881f), vec3<i32>(-46216i, -54067i, 1i)), vec3<f32>(1000f, 896f, 425f)), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 10805u, 0u, 1u), 17865u, vec3<f32>(-157f, 1120f, -732f), vec3<i32>(-1i, 17866i, -1i)), vec3<f32>(1856f, -1742f, -111f)), Struct_2(Struct_1(true, vec4<u32>(62169u, 25293u, 10073u, 31406u), 1u, vec3<f32>(622f, -701f, 400f), vec3<i32>(17000i, 27531i, -11605i)), vec3<f32>(187f, -510f, 1000f)));

var<private> global2: vec3<i32> = vec3<i32>(-20219i, 0i, 0i);

var<private> global3: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec3<f32> {
    global3 = array<vec4<bool>, 22>();
    var var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), true));
    let var_1 = Struct_2(Struct_1(any(vec2<bool>(-307f >= arg_0, var_0.x)), vec4<u32>(~14865u, firstLeadingBit(60892u), 16597u, ~_wgslsmith_mult_u32(48845u, u_input.b)), firstLeadingBit(15339u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 2296f), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(select(-427f, arg_0, var_0.x))))), ~(-vec3<i32>(u_input.a, 0i, global2.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1196f, -842f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-355f, -1028f, 511f) + vec3<f32>(-1000f, -107f, -1216f)))))));
    let var_2 = var_0.x;
    global1 = array<Struct_2, 29>();
    return var_1.b;
}

fn func_3() -> vec2<bool> {
    global3 = array<vec4<bool>, 22>();
    var var_0 = vec2<u32>(1u, ~(~(u_input.b ^ 67165u)) >> (u_input.b % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -574f))) - vec2<f32>(-370f, -451f)))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1004f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-472f)))));
    var var_2 = ~(-_wgslsmith_div_i32(~abs(global2.x), reverseBits(~u_input.a)));
    return select(!vec2<bool>(select(true, true, true), true), vec2<bool>(false & ((u_input.b & u_input.b) >= var_0.x), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), !(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f + -370f)), u_input.a)))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global3 = array<vec4<bool>, 22>();
    let var_2 = func_3();
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    return Struct_1(any(!select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, true), var_2.x), vec3<bool>(var_2.x, true, true), !var_2.x)), firstTrailingBit(vec4<u32>(u_input.b, 1u, ~firstTrailingBit(u_input.b), ~1u)), u_input.b, vec3<f32>(1000f, 179f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -1480f), -2000f))), countOneBits(vec3<i32>(abs(-global2.x), -2147483647i, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1213f, var_0.d.x, -1378f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-864f, -2046f, var_0.d.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, var_0.d.x, var_0.d.x))))), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(50624i), global2.x, var_0.e.x, -u_input.a), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global2.x, 89i, -1i, var_0.e.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, 1i, var_0.e.x), vec4<i32>(global2.x, -8161i, global2.x, 0i), vec4<i32>(var_0.e.x, 1i, var_0.e.x, global2.x))), vec4<i32>(var_0.e.x, global2.x, i32(-1i) * -35071i, u_input.a))));
}

