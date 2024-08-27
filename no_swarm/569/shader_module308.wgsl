struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(true, Struct_1(vec3<u32>(4294967295u, 1u, 18911u), 49762i, 370f, vec3<f32>(-1061f, 290f, 482f), vec2<i32>(26000i, 1i)), false, 2147483647i, -509f), Struct_2(true, Struct_1(vec3<u32>(25413u, 0u, 0u), -28664i, 167f, vec3<f32>(-1674f, -2033f, 743f), vec2<i32>(-26647i, 27328i)), true, 9093i, -577f), Struct_2(false, Struct_1(vec3<u32>(0u, 120370u, 1u), -21792i, 1475f, vec3<f32>(104f, -586f, -1273f), vec2<i32>(-54590i, 22886i)), true, -21522i, -246f), Struct_2(false, Struct_1(vec3<u32>(0u, 4294967295u, 1u), 0i, -665f, vec3<f32>(-859f, 1043f, 2299f), vec2<i32>(-1i, -1i)), true, 13296i, -495f), Struct_2(true, Struct_1(vec3<u32>(28344u, 13367u, 13836u), 2147483647i, 449f, vec3<f32>(-974f, 1000f, 518f), vec2<i32>(-55957i, i32(-2147483648))), true, i32(-2147483648), 1213f), Struct_2(true, Struct_1(vec3<u32>(46986u, 0u, 4294967295u), i32(-2147483648), 1414f, vec3<f32>(311f, 856f, -2324f), vec2<i32>(5962i, 1i)), false, 2670i, 736f), Struct_2(true, Struct_1(vec3<u32>(81014u, 84335u, 17505u), -14966i, 682f, vec3<f32>(-1224f, -490f, -290f), vec2<i32>(-1i, -9885i)), false, 31820i, -738f), Struct_2(true, Struct_1(vec3<u32>(0u, 36333u, 1622u), 5633i, 1721f, vec3<f32>(-892f, 440f, 252f), vec2<i32>(-9948i, 0i)), true, i32(-2147483648), 123f), Struct_2(true, Struct_1(vec3<u32>(16337u, 1u, 0u), -5780i, -1000f, vec3<f32>(1453f, 148f, -788f), vec2<i32>(-100087i, 0i)), true, 1i, -1013f), Struct_2(false, Struct_1(vec3<u32>(87541u, 43922u, 74950u), -71788i, -228f, vec3<f32>(193f, -1862f, 826f), vec2<i32>(0i, -1i)), true, i32(-2147483648), -1423f), Struct_2(true, Struct_1(vec3<u32>(11504u, 19530u, 1u), i32(-2147483648), -500f, vec3<f32>(115f, -774f, 325f), vec2<i32>(i32(-2147483648), -11748i)), true, 2147483647i, -693f), Struct_2(false, Struct_1(vec3<u32>(20692u, 76236u, 17639u), -13964i, 1106f, vec3<f32>(1597f, 1178f, 1825f), vec2<i32>(-31724i, 51792i)), true, 0i, 1000f), Struct_2(true, Struct_1(vec3<u32>(0u, 3916u, 1u), -1i, -2495f, vec3<f32>(-742f, -690f, 1586f), vec2<i32>(1i, 33132i)), true, -21258i, -328f), Struct_2(true, Struct_1(vec3<u32>(68601u, 46170u, 25244u), 1i, -739f, vec3<f32>(548f, 626f, -1208f), vec2<i32>(2147483647i, 1i)), true, 3520i, -265f), Struct_2(true, Struct_1(vec3<u32>(1u, 27216u, 50223u), 2147483647i, 1134f, vec3<f32>(-529f, -700f, 980f), vec2<i32>(2147483647i, 0i)), true, 0i, 749f), Struct_2(true, Struct_1(vec3<u32>(0u, 0u, 81272u), i32(-2147483648), 836f, vec3<f32>(1301f, 989f, -925f), vec2<i32>(4208i, 1i)), false, -10213i, 1000f), Struct_2(false, Struct_1(vec3<u32>(1944u, 58089u, 30953u), -18070i, -957f, vec3<f32>(-106f, -1223f, -417f), vec2<i32>(2147483647i, -1i)), false, -1i, 738f), Struct_2(true, Struct_1(vec3<u32>(33336u, 1u, 29404u), 5151i, -1418f, vec3<f32>(-662f, -1000f, 404f), vec2<i32>(58114i, 2147483647i)), false, 2147483647i, 1000f), Struct_2(false, Struct_1(vec3<u32>(61085u, 0u, 98273u), -1i, 1000f, vec3<f32>(1859f, 277f, -1082f), vec2<i32>(0i, -17594i)), false, -1i, -318f), Struct_2(true, Struct_1(vec3<u32>(4294967295u, 4294967295u, 21872u), -1i, -2172f, vec3<f32>(2204f, 1031f, -1629f), vec2<i32>(i32(-2147483648), -46207i)), false, i32(-2147483648), 931f), Struct_2(false, Struct_1(vec3<u32>(0u, 46191u, 4294967295u), i32(-2147483648), -303f, vec3<f32>(166f, -2146f, -838f), vec2<i32>(3509i, 1i)), true, -31610i, 1367f), Struct_2(true, Struct_1(vec3<u32>(1u, 66922u, 3638u), 38274i, -242f, vec3<f32>(827f, 542f, 1462f), vec2<i32>(-28307i, -16382i)), true, 26403i, 434f), Struct_2(false, Struct_1(vec3<u32>(4294967295u, 30438u, 0u), 27566i, 478f, vec3<f32>(-567f, -1281f, 305f), vec2<i32>(0i, 0i)), true, -11826i, -821f), Struct_2(false, Struct_1(vec3<u32>(34762u, 1u, 1u), i32(-2147483648), 319f, vec3<f32>(-1087f, 459f, -192f), vec2<i32>(19365i, 1i)), false, -36216i, 405f), Struct_2(true, Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), 2147483647i, -1000f, vec3<f32>(137f, 1000f, -773f), vec2<i32>(9697i, i32(-2147483648))), true, 1i, -857f), Struct_2(true, Struct_1(vec3<u32>(94891u, 77880u, 0u), -39468i, 167f, vec3<f32>(2337f, -2138f, -1151f), vec2<i32>(-1i, 1i)), true, 33942i, -115f), Struct_2(true, Struct_1(vec3<u32>(1u, 31064u, 0u), 37196i, -1000f, vec3<f32>(145f, 416f, 472f), vec2<i32>(10784i, 8150i)), false, 26898i, 1318f), Struct_2(true, Struct_1(vec3<u32>(99725u, 0u, 4294967295u), -6957i, -183f, vec3<f32>(-364f, -445f, 778f), vec2<i32>(-10835i, 1i)), false, 0i, -1000f), Struct_2(false, Struct_1(vec3<u32>(1u, 0u, 41581u), 2147483647i, -1000f, vec3<f32>(-1051f, 1016f, 1150f), vec2<i32>(0i, 15583i)), true, -16506i, -746f), Struct_2(true, Struct_1(vec3<u32>(50698u, 4294967295u, 58841u), 598i, -1152f, vec3<f32>(553f, -279f, -391f), vec2<i32>(0i, 28927i)), false, -50141i, -1703f), Struct_2(false, Struct_1(vec3<u32>(23117u, 4294967295u, 127725u), 1i, 689f, vec3<f32>(-431f, 962f, 619f), vec2<i32>(-1i, 1i)), true, 2147483647i, 1023f), Struct_2(true, Struct_1(vec3<u32>(37993u, 1u, 4294967295u), 2147483647i, -1177f, vec3<f32>(705f, -151f, 175f), vec2<i32>(i32(-2147483648), -1i)), true, -1i, -990f));

var<private> global1: f32 = 390f;

var<private> global2: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(11393u, 52439u, 59475u, 4294967295u), vec4<u32>(77804u, 4294967295u, 21076u, 5004u), vec4<u32>(39424u, 79943u, 1u, 79172u), vec4<u32>(65768u, 72917u, 0u, 19482u), vec4<u32>(1u, 4294967295u, 53825u, 15413u), vec4<u32>(5028u, 39780u, 25685u, 51485u), vec4<u32>(1u, 4294967295u, 8223u, 70623u), vec4<u32>(0u, 24326u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(91578u, 1u, 22506u, 88670u), vec4<u32>(66575u, 1u, 4294967295u, 43540u), vec4<u32>(1u, 4294967295u, 820u, 23927u), vec4<u32>(7154u, 1u, 62162u, 58944u), vec4<u32>(47853u, 28461u, 0u, 4294967295u), vec4<u32>(26034u, 4294967295u, 2172u, 1u), vec4<u32>(16202u, 4294967295u, 23683u, 17496u), vec4<u32>(49246u, 36609u, 56040u, 52367u), vec4<u32>(1u, 1u, 8718u, 41447u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~0u) << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 52391u, 62059u, 0u)), vec4<u32>(4294967295u, 39272u, 4294967295u, 52418u)) % 32u), 44385u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(20282u, 93143u), u_input.d.yx) << (_wgslsmith_add_vec2_u32(vec2<u32>(71009u, 8834u), vec2<u32>(u_input.d.x, 4294967295u)) % vec2<u32>(32u)), u_input.c.wy)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), u_input.b, 1u), _wgslsmith_add_vec3_u32(~u_input.d.zwy, u_input.c.xzy)) ^ u_input.d.yzz);
    global2 = array<vec4<u32>, 18>();
    var var_1 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) + _wgslsmith_f_op_f32(f32(-1f) * -232f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f - 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-443f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1255f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -485f)), any(vec3<bool>(true, true, false))))), -(~u_input.e.x ^ ~(-65983i)));
}

