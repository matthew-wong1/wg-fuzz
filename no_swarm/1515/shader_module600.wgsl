struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(vec4<f32>(587f, -269f, 357f, 262f), Struct_1(true, vec3<bool>(false, false, true), vec2<u32>(0u, 4294967295u), vec4<u32>(2471u, 4294967295u, 29759u, 69964u), vec2<bool>(true, false)), 1803f), vec2<f32>(662f, -178f), Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(0u, 0u), vec4<u32>(44938u, 1u, 4294967295u, 0u), vec2<bool>(true, true)), vec2<u32>(45682u, 1u), Struct_2(vec4<f32>(649f, 2041f, 193f, 1000f), Struct_1(true, vec3<bool>(false, true, false), vec2<u32>(59808u, 0u), vec4<u32>(26663u, 0u, 0u, 32758u), vec2<bool>(true, false)), 542f)), Struct_3(Struct_2(vec4<f32>(-2195f, 129f, 690f, -564f), Struct_1(true, vec3<bool>(true, false, true), vec2<u32>(17099u, 14038u), vec4<u32>(55389u, 4294967295u, 11509u, 4294967295u), vec2<bool>(true, true)), -1188f), vec2<f32>(890f, 534f), Struct_1(true, vec3<bool>(false, false, true), vec2<u32>(1u, 0u), vec4<u32>(1u, 69660u, 48805u, 4294967295u), vec2<bool>(true, true)), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec4<f32>(1323f, -1473f, 450f, 596f), Struct_1(false, vec3<bool>(true, false, true), vec2<u32>(0u, 16396u), vec4<u32>(10112u, 1u, 28590u, 21885u), vec2<bool>(true, false)), -192f)), Struct_3(Struct_2(vec4<f32>(-215f, -2384f, 794f, 1299f), Struct_1(true, vec3<bool>(false, true, false), vec2<u32>(54384u, 4294967295u), vec4<u32>(1u, 9632u, 13058u, 35205u), vec2<bool>(true, false)), 1323f), vec2<f32>(-193f, -1183f), Struct_1(true, vec3<bool>(false, true, true), vec2<u32>(48452u, 8311u), vec4<u32>(49625u, 0u, 0u, 4294967295u), vec2<bool>(true, false)), vec2<u32>(29169u, 61238u), Struct_2(vec4<f32>(-102f, 492f, -1000f, -109f), Struct_1(false, vec3<bool>(false, true, false), vec2<u32>(4294967295u, 0u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec2<bool>(false, true)), 1162f)), Struct_3(Struct_2(vec4<f32>(-1878f, 328f, -116f, 873f), Struct_1(true, vec3<bool>(true, true, false), vec2<u32>(0u, 17392u), vec4<u32>(130893u, 4294967295u, 4294967295u, 1u), vec2<bool>(true, true)), -311f), vec2<f32>(-2077f, -692f), Struct_1(true, vec3<bool>(true, true, true), vec2<u32>(51470u, 0u), vec4<u32>(39596u, 39815u, 55924u, 11069u), vec2<bool>(false, true)), vec2<u32>(4429u, 92202u), Struct_2(vec4<f32>(-260f, 2259f, 1831f, 415f), Struct_1(false, vec3<bool>(true, false, false), vec2<u32>(0u, 1u), vec4<u32>(12422u, 1u, 0u, 39759u), vec2<bool>(true, false)), 689f)), Struct_3(Struct_2(vec4<f32>(-1736f, 1688f, 952f, 1368f), Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(0u, 36125u), vec4<u32>(14305u, 1u, 1u, 4294967295u), vec2<bool>(true, true)), 1670f), vec2<f32>(-2962f, -1237f), Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(18063u, 1u), vec4<u32>(71156u, 17221u, 1u, 100926u), vec2<bool>(false, false)), vec2<u32>(14173u, 0u), Struct_2(vec4<f32>(2031f, -450f, 481f, 282f), Struct_1(false, vec3<bool>(false, true, false), vec2<u32>(0u, 6719u), vec4<u32>(74057u, 1u, 0u, 0u), vec2<bool>(false, false)), 126f)), Struct_3(Struct_2(vec4<f32>(-1193f, 548f, 264f, -305f), Struct_1(false, vec3<bool>(false, true, false), vec2<u32>(15260u, 54697u), vec4<u32>(2177u, 0u, 59137u, 12174u), vec2<bool>(false, false)), 206f), vec2<f32>(-712f, 538f), Struct_1(false, vec3<bool>(false, false, true), vec2<u32>(33555u, 1u), vec4<u32>(15012u, 15275u, 1112u, 0u), vec2<bool>(true, true)), vec2<u32>(52964u, 0u), Struct_2(vec4<f32>(-2386f, 623f, -563f, -471f), Struct_1(false, vec3<bool>(false, true, false), vec2<u32>(73192u, 8050u), vec4<u32>(82209u, 28547u, 4294967295u, 0u), vec2<bool>(true, false)), 1000f)), Struct_3(Struct_2(vec4<f32>(-494f, 2574f, -1142f, 2432f), Struct_1(false, vec3<bool>(true, false, false), vec2<u32>(0u, 11683u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec2<bool>(false, true)), 555f), vec2<f32>(690f, 918f), Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(1u, 1u), vec4<u32>(4294967295u, 4294967295u, 18224u, 0u), vec2<bool>(true, true)), vec2<u32>(1u, 2999u), Struct_2(vec4<f32>(622f, 1467f, -575f, -1161f), Struct_1(false, vec3<bool>(true, true, true), vec2<u32>(4294967295u, 66057u), vec4<u32>(4294967295u, 63426u, 0u, 4294967295u), vec2<bool>(false, false)), 1145f)), Struct_3(Struct_2(vec4<f32>(-380f, 176f, -258f, -2587f), Struct_1(true, vec3<bool>(true, true, false), vec2<u32>(1u, 9561u), vec4<u32>(1u, 4294967295u, 59993u, 4294967295u), vec2<bool>(false, true)), 835f), vec2<f32>(222f, -512f), Struct_1(true, vec3<bool>(true, true, false), vec2<u32>(1u, 10154u), vec4<u32>(1u, 66548u, 0u, 4294967295u), vec2<bool>(true, true)), vec2<u32>(1u, 3442u), Struct_2(vec4<f32>(-709f, 771f, -833f, 139f), Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(1u, 0u), vec4<u32>(51836u, 1u, 0u, 0u), vec2<bool>(true, false)), -532f)), Struct_3(Struct_2(vec4<f32>(520f, 921f, -375f, 944f), Struct_1(true, vec3<bool>(true, false, true), vec2<u32>(30158u, 1u), vec4<u32>(44650u, 28447u, 1u, 14236u), vec2<bool>(false, false)), -1727f), vec2<f32>(101f, -972f), Struct_1(true, vec3<bool>(true, true, false), vec2<u32>(65781u, 1u), vec4<u32>(4294967295u, 60171u, 0u, 33061u), vec2<bool>(false, false)), vec2<u32>(110916u, 13197u), Struct_2(vec4<f32>(1037f, 208f, 323f, 195f), Struct_1(false, vec3<bool>(false, false, false), vec2<u32>(12917u, 1u), vec4<u32>(1u, 55192u, 5913u, 50699u), vec2<bool>(false, false)), 1310f)), Struct_3(Struct_2(vec4<f32>(1250f, -790f, -133f, 751f), Struct_1(false, vec3<bool>(true, false, false), vec2<u32>(27482u, 21192u), vec4<u32>(32328u, 58380u, 0u, 2736u), vec2<bool>(false, false)), 1061f), vec2<f32>(-1000f, 801f), Struct_1(true, vec3<bool>(true, false, false), vec2<u32>(3439u, 38624u), vec4<u32>(0u, 1u, 4260u, 25432u), vec2<bool>(false, true)), vec2<u32>(1u, 4294967295u), Struct_2(vec4<f32>(1976f, -544f, 591f, -1000f), Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(9894u, 114474u), vec4<u32>(4294967295u, 1u, 22585u, 6345u), vec2<bool>(false, true)), 174f)), Struct_3(Struct_2(vec4<f32>(1000f, -222f, -1311f, -166f), Struct_1(false, vec3<bool>(false, false, true), vec2<u32>(0u, 0u), vec4<u32>(35151u, 51899u, 121747u, 23691u), vec2<bool>(true, true)), 1194f), vec2<f32>(492f, -536f), Struct_1(true, vec3<bool>(true, false, false), vec2<u32>(4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec2<bool>(true, false)), vec2<u32>(1u, 4294967295u), Struct_2(vec4<f32>(771f, -1934f, 693f, -1386f), Struct_1(false, vec3<bool>(true, false, false), vec2<u32>(1u, 1u), vec4<u32>(9517u, 28280u, 7801u, 1u), vec2<bool>(false, false)), 590f)), Struct_3(Struct_2(vec4<f32>(-1487f, 1711f, 1583f, 253f), Struct_1(false, vec3<bool>(false, false, true), vec2<u32>(7397u, 1270u), vec4<u32>(51440u, 1u, 1u, 40061u), vec2<bool>(false, false)), 1000f), vec2<f32>(-532f, 921f), Struct_1(true, vec3<bool>(false, false, false), vec2<u32>(0u, 1u), vec4<u32>(1u, 3482u, 0u, 4294967295u), vec2<bool>(false, true)), vec2<u32>(21148u, 0u), Struct_2(vec4<f32>(-1682f, 1043f, -819f, -810f), Struct_1(true, vec3<bool>(false, false, true), vec2<u32>(0u, 34421u), vec4<u32>(4294967295u, 36150u, 1u, 1u), vec2<bool>(false, false)), 941f)), Struct_3(Struct_2(vec4<f32>(-2134f, 1000f, -813f, 241f), Struct_1(false, vec3<bool>(true, true, false), vec2<u32>(12663u, 51958u), vec4<u32>(1u, 1u, 87710u, 4294967295u), vec2<bool>(false, false)), 923f), vec2<f32>(-458f, -256f), Struct_1(false, vec3<bool>(false, true, true), vec2<u32>(0u, 4294967295u), vec4<u32>(0u, 30511u, 13985u, 1u), vec2<bool>(true, false)), vec2<u32>(29683u, 0u), Struct_2(vec4<f32>(2117f, 748f, -1089f, -1239f), Struct_1(false, vec3<bool>(true, false, true), vec2<u32>(4294967295u, 34849u), vec4<u32>(0u, 41277u, 1u, 27782u), vec2<bool>(false, false)), -1173f)));

var<private> global1: array<Struct_1, 13>;

var<private> global2: i32 = -64697i;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: bool) -> bool {
    global1 = array<Struct_1, 13>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1283f, -355f, -1013f, -299f), vec4<f32>(397f, 1000f, -583f, -1000f)) * vec4<f32>(2040f, -1177f, 984f, 124f)))), global1[_wgslsmith_index_u32(arg_0, 13u)], _wgslsmith_f_op_f32(1097f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1137f), -673f))));
    var var_1 = Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, -471f))))));
    let var_2 = -countOneBits(min(vec4<i32>(abs(-1i), ~u_input.b.x, 0i, u_input.b.x), vec4<i32>(u_input.b.x, i32(-1i) * -31314i, -2147483647i, arg_1.x & -1i)));
    var var_3 = select(!vec3<bool>(u_input.b.x >= -1i, all(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, false), var_1.b.a)), false), !vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, var_1.b.b.x, var_1.b.b.x, false), vec4<bool>(false, var_0.b.b.x, true, false))), true, true), false);
    return all(!select(select(!vec3<bool>(false, var_3.x, false), !var_0.b.b, var_1.b.b), !vec3<bool>(var_0.b.e.x, var_1.b.a, false), var_1.b.e.x));
}

fn func_2() -> i32 {
    global1 = array<Struct_1, 13>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-742f, -174f, 867f, -1500f) * vec4<f32>(652f, -237f, -458f, -195f)))), Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), u_input.c.yx, vec4<u32>(1u, ~u_input.c.x, 1u, 1u), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false))), 515f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1189f, -802f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-731f, 505f) - vec2<f32>(-352f, 568f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1437f, _wgslsmith_f_op_f32(f32(-1f) * -792f))), vec2<bool>(!all(vec4<bool>(true, false, true, false)), select(func_3(u_input.c.x, u_input.a, true), any(vec2<bool>(true, false)), true)))), global1[_wgslsmith_index_u32(u_input.c.x ^ 1u, 13u)], max(abs(countOneBits(u_input.c.yx)), abs(firstTrailingBit(u_input.c.yw)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c.x) & vec2<u32>(u_input.c.x, 1u), vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(0u, 15712u))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-434f)) + _wgslsmith_f_op_f32(step(-310f, -378f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1560f, -492f)))), 380f, -898f), Struct_1(false, vec3<bool>(true, true, true), reverseBits(~u_input.c.yy), u_input.c, vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1f)))));
    let var_1 = var_0.e.c;
    global0 = array<Struct_3, 13>();
    let var_2 = ~_wgslsmith_mult_i32(reverseBits(-40354i), u_input.b.x);
    return -var_2;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = firstLeadingBit(-2147483647i ^ u_input.b.x);
    var var_1 = !vec3<bool>(_wgslsmith_mod_i32(i32(-1i) * -46807i, 1i) >= firstLeadingBit(func_2()), !(!(arg_0 != arg_0)), true);
    let var_2 = _wgslsmith_f_op_f32(select(-1003f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 1134f)), _wgslsmith_f_op_f32(f32(-1f) * -1001f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(394f + -1192f), -1746f))), -_wgslsmith_mult_i32(-1i, var_0) >= _wgslsmith_clamp_i32(abs(var_0), 19428i, var_0)));
    var var_3 = select(~vec4<i32>(-2147483647i, 1051i, _wgslsmith_add_i32(65151i, -2147483647i), var_0 | u_input.a.x), vec4<i32>(-25497i, ~_wgslsmith_mod_i32(u_input.a.x, var_0), 2147483647i ^ var_0, -1i), !(var_1.x & var_1.x) || true) << (u_input.c % vec4<u32>(32u));
    let var_4 = any(!vec4<bool>(any(select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, true, var_1.x, true))), false, all(vec4<bool>(var_1.x, false, var_1.x, true)), !var_1.x));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    let var_0 = u_input.c.wwx & vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c.x), countOneBits(vec2<u32>(u_input.c.x, u_input.c.x)) << (~u_input.c.wx % vec2<u32>(32u))), ~u_input.c.x, func_1(abs(4616u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-185f, 757f), _wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(trunc(2923f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, -725f, _wgslsmith_f_op_f32(-331f - 749f)))), ~vec4<u32>(u_input.c.x, var_0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), ~var_0.yz), _wgslsmith_mod_u32(countOneBits(var_0.x), u_input.c.x)));
}

