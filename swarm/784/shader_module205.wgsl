struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(40312u, Struct_3(Struct_2(vec2<u32>(1u, 39299u), Struct_1(vec2<f32>(1678f, -399f), vec2<u32>(0u, 44664u), i32(-2147483648)), 11260u), Struct_1(vec2<f32>(-1000f, -427f), vec2<u32>(0u, 73418u), -11473i), vec2<i32>(-7476i, 13944i), vec3<bool>(false, true, false)), vec4<f32>(-981f, 1000f, 235f, -442f), -1000f), Struct_4(1u, Struct_3(Struct_2(vec2<u32>(4183u, 0u), Struct_1(vec2<f32>(-1000f, 1123f), vec2<u32>(0u, 1u), i32(-2147483648)), 1u), Struct_1(vec2<f32>(236f, -1246f), vec2<u32>(15821u, 1u), i32(-2147483648)), vec2<i32>(0i, 0i), vec3<bool>(true, false, true)), vec4<f32>(-1983f, -478f, 453f, -160f), 351f), Struct_4(0u, Struct_3(Struct_2(vec2<u32>(23953u, 18986u), Struct_1(vec2<f32>(393f, 2974f), vec2<u32>(33754u, 0u), -1i), 4294967295u), Struct_1(vec2<f32>(656f, -699f), vec2<u32>(0u, 1u), -17066i), vec2<i32>(-1i, i32(-2147483648)), vec3<bool>(true, true, false)), vec4<f32>(-123f, 428f, 138f, 1123f), -393f), Struct_4(11062u, Struct_3(Struct_2(vec2<u32>(1u, 0u), Struct_1(vec2<f32>(-1450f, 1778f), vec2<u32>(0u, 20776u), -7868i), 45799u), Struct_1(vec2<f32>(-198f, -1157f), vec2<u32>(21225u, 64557u), -1i), vec2<i32>(-49910i, 10694i), vec3<bool>(false, false, true)), vec4<f32>(567f, -361f, -1168f, -911f), -452f), Struct_4(1280u, Struct_3(Struct_2(vec2<u32>(4294967295u, 56373u), Struct_1(vec2<f32>(-501f, 876f), vec2<u32>(4294967295u, 6018u), 17312i), 22332u), Struct_1(vec2<f32>(-166f, -689f), vec2<u32>(0u, 4294967295u), 2147483647i), vec2<i32>(-8206i, 1i), vec3<bool>(false, true, false)), vec4<f32>(885f, 528f, -241f, 1000f), 565f), Struct_4(54705u, Struct_3(Struct_2(vec2<u32>(1u, 73089u), Struct_1(vec2<f32>(-1590f, -2190f), vec2<u32>(902u, 5562u), 15928i), 4294967295u), Struct_1(vec2<f32>(119f, 288f), vec2<u32>(64582u, 35467u), 9885i), vec2<i32>(-1i, -885i), vec3<bool>(true, false, false)), vec4<f32>(-713f, -1790f, -403f, 951f), 151f), Struct_4(38869u, Struct_3(Struct_2(vec2<u32>(4259u, 0u), Struct_1(vec2<f32>(-1000f, -526f), vec2<u32>(68609u, 1u), 2147483647i), 0u), Struct_1(vec2<f32>(-1005f, 524f), vec2<u32>(13548u, 4294967295u), i32(-2147483648)), vec2<i32>(2147483647i, 14227i), vec3<bool>(false, true, true)), vec4<f32>(-904f, -799f, -233f, -1000f), 1465f), Struct_4(1u, Struct_3(Struct_2(vec2<u32>(0u, 57153u), Struct_1(vec2<f32>(-319f, -895f), vec2<u32>(1u, 55147u), 0i), 70153u), Struct_1(vec2<f32>(1000f, -478f), vec2<u32>(0u, 72559u), -23095i), vec2<i32>(20365i, -1i), vec3<bool>(true, false, true)), vec4<f32>(578f, -825f, 695f, -1342f), 542f), Struct_4(101773u, Struct_3(Struct_2(vec2<u32>(11492u, 0u), Struct_1(vec2<f32>(706f, -757f), vec2<u32>(37935u, 0u), i32(-2147483648)), 15371u), Struct_1(vec2<f32>(-1229f, -1000f), vec2<u32>(1969u, 8678u), i32(-2147483648)), vec2<i32>(2147483647i, -2687i), vec3<bool>(true, false, true)), vec4<f32>(295f, -933f, 264f, -972f), -560f), Struct_4(64958u, Struct_3(Struct_2(vec2<u32>(44980u, 4294967295u), Struct_1(vec2<f32>(-1482f, 466f), vec2<u32>(1u, 4294967295u), 44473i), 35570u), Struct_1(vec2<f32>(-1353f, 1813f), vec2<u32>(77018u, 0u), 15695i), vec2<i32>(1i, 37148i), vec3<bool>(false, true, true)), vec4<f32>(1533f, -1179f, -899f, 313f), 140f), Struct_4(17598u, Struct_3(Struct_2(vec2<u32>(42374u, 48815u), Struct_1(vec2<f32>(306f, 397f), vec2<u32>(0u, 1u), 1i), 22979u), Struct_1(vec2<f32>(-459f, 254f), vec2<u32>(3347u, 24345u), 59424i), vec2<i32>(-1i, -27280i), vec3<bool>(true, true, false)), vec4<f32>(-483f, -1200f, 1015f, 514f), 1140f), Struct_4(3075u, Struct_3(Struct_2(vec2<u32>(29647u, 29241u), Struct_1(vec2<f32>(446f, -515f), vec2<u32>(4294967295u, 133620u), -37489i), 0u), Struct_1(vec2<f32>(-723f, 1824f), vec2<u32>(4294967295u, 10674u), 0i), vec2<i32>(-1i, 2147483647i), vec3<bool>(true, true, false)), vec4<f32>(1221f, -1405f, 786f, 379f), 844f), Struct_4(47124u, Struct_3(Struct_2(vec2<u32>(75084u, 4294967295u), Struct_1(vec2<f32>(-505f, -355f), vec2<u32>(49946u, 14083u), -1i), 0u), Struct_1(vec2<f32>(-648f, -402f), vec2<u32>(0u, 0u), -12552i), vec2<i32>(-42703i, -1i), vec3<bool>(false, true, false)), vec4<f32>(429f, -189f, 1000f, -419f), 1725f), Struct_4(5319u, Struct_3(Struct_2(vec2<u32>(1u, 2968u), Struct_1(vec2<f32>(-291f, 194f), vec2<u32>(1u, 0u), -47112i), 87674u), Struct_1(vec2<f32>(-516f, -1649f), vec2<u32>(5503u, 4359u), 85382i), vec2<i32>(i32(-2147483648), 0i), vec3<bool>(true, false, true)), vec4<f32>(1000f, -1737f, -1000f, 1000f), -683f), Struct_4(0u, Struct_3(Struct_2(vec2<u32>(24001u, 25244u), Struct_1(vec2<f32>(729f, -270f), vec2<u32>(0u, 105192u), 25822i), 5108u), Struct_1(vec2<f32>(1375f, -242f), vec2<u32>(0u, 1u), -6000i), vec2<i32>(17334i, -1i), vec3<bool>(true, false, false)), vec4<f32>(-794f, -663f, -126f, 1000f), -432f), Struct_4(20177u, Struct_3(Struct_2(vec2<u32>(1u, 1639u), Struct_1(vec2<f32>(1987f, 944f), vec2<u32>(0u, 4294967295u), -1i), 0u), Struct_1(vec2<f32>(-132f, 1745f), vec2<u32>(1u, 0u), -10358i), vec2<i32>(0i, -1i), vec3<bool>(false, true, false)), vec4<f32>(676f, 429f, 609f, -771f), 529f), Struct_4(19911u, Struct_3(Struct_2(vec2<u32>(24457u, 4294967295u), Struct_1(vec2<f32>(-1686f, 1000f), vec2<u32>(1u, 1u), -60203i), 4294967295u), Struct_1(vec2<f32>(241f, -127f), vec2<u32>(21358u, 50033u), -5663i), vec2<i32>(2147483647i, -12131i), vec3<bool>(true, true, true)), vec4<f32>(-1199f, -704f, -1546f, 1454f), -790f), Struct_4(18754u, Struct_3(Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(-458f, 960f), vec2<u32>(0u, 56438u), 0i), 78766u), Struct_1(vec2<f32>(939f, 665f), vec2<u32>(54987u, 10976u), 44682i), vec2<i32>(10696i, 2147483647i), vec3<bool>(true, true, false)), vec4<f32>(-205f, -1199f, -119f, -561f), 1476f), Struct_4(4294967295u, Struct_3(Struct_2(vec2<u32>(0u, 60932u), Struct_1(vec2<f32>(-1094f, -1025f), vec2<u32>(1u, 67855u), 2147483647i), 0u), Struct_1(vec2<f32>(1702f, 885f), vec2<u32>(0u, 4294967295u), i32(-2147483648)), vec2<i32>(-14432i, 3102i), vec3<bool>(false, false, true)), vec4<f32>(-720f, -598f, -1531f, -124f), -1102f), Struct_4(1u, Struct_3(Struct_2(vec2<u32>(4294967295u, 77949u), Struct_1(vec2<f32>(-1373f, 242f), vec2<u32>(1u, 108211u), i32(-2147483648)), 10916u), Struct_1(vec2<f32>(615f, -611f), vec2<u32>(15525u, 8184u), 0i), vec2<i32>(2147483647i, -27048i), vec3<bool>(false, false, false)), vec4<f32>(2810f, -2999f, 2137f, -421f), 1572f), Struct_4(34158u, Struct_3(Struct_2(vec2<u32>(1u, 26220u), Struct_1(vec2<f32>(-513f, 158f), vec2<u32>(0u, 1u), 2147483647i), 0u), Struct_1(vec2<f32>(-1109f, -128f), vec2<u32>(10378u, 0u), i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec3<bool>(false, false, true)), vec4<f32>(-1000f, 1069f, 471f, -174f), 163f), Struct_4(35839u, Struct_3(Struct_2(vec2<u32>(1u, 1u), Struct_1(vec2<f32>(578f, -515f), vec2<u32>(1u, 4294967295u), -3947i), 0u), Struct_1(vec2<f32>(-629f, -168f), vec2<u32>(44916u, 4294967295u), -9962i), vec2<i32>(12745i, -1i), vec3<bool>(true, false, false)), vec4<f32>(254f, 382f, 1272f, -939f), 378f), Struct_4(0u, Struct_3(Struct_2(vec2<u32>(1u, 1746u), Struct_1(vec2<f32>(-187f, 840f), vec2<u32>(25562u, 1u), -25557i), 76164u), Struct_1(vec2<f32>(266f, 198f), vec2<u32>(1u, 0u), 1722i), vec2<i32>(-12965i, 1i), vec3<bool>(false, false, true)), vec4<f32>(1248f, -2186f, 852f, -2514f), -359f));

var<private> global2: vec4<i32> = vec4<i32>(0i, 67491i, -11489i, -1i);

var<private> global3: vec4<f32>;

var<private> global4: u32 = 21354u;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    global0 = arg_1;
    let var_0 = arg_1.a;
    var var_1 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.d, arg_1.b.x, 77680u)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.b.x, arg_1.b.x), u_input.b), ~_wgslsmith_add_u32(arg_1.b.x, global0.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b.x, global0.b.x, 1u, 24515u), vec4<u32>(1u, arg_1.b.x, u_input.b, u_input.d) << (vec4<u32>(global0.b.x, u_input.a, 1u, 1u) % vec4<u32>(32u))), 17175u)) ^ u_input.d;
    var var_2 = !vec3<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), all(vec4<bool>(true, true, true, true)));
    var var_3 = Struct_4(u_input.a, Struct_3(Struct_2(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.x, arg_1.b.x), arg_1.b, vec2<u32>(17332u, 102997u))), arg_1, ~142u), Struct_1(var_0, vec2<u32>(abs(87531u), u_input.b & 48802u), 5064i), global2.yy, vec3<bool>(true, select(var_2.x, 38880u >= global0.b.x, !var_2.x), var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.a.x, -1321f, 411f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global3.x, 1417f, -558f), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -653f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, -707f, global3.x) - vec4<f32>(-439f, arg_1.a.x, arg_1.a.x, global3.x)) - vec4<f32>(-642f, global3.x, var_0.x, 757f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1005f), _wgslsmith_f_op_f32(-var_0.x))), 1000f))));
    return 896f;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a.x, arg_0.a.x, -1772f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(256f, global0.a.x, -1048f, global0.a.x), vec4<f32>(-2089f, 1768f, global0.a.x, -649f), true)))), vec4<f32>(383f, 1433f, _wgslsmith_f_op_f32(global0.a.x + -121f), 2915f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))))));
    var var_0 = vec3<f32>(-696f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(func_3(~0i, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(743f, global3.x) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1000f * arg_0.a.x))));
    var var_1 = true;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global3.yw, arg_0.a), _wgslsmith_f_op_vec2_f32(-global3.wy))))), max(~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, global0.b.x), vec2<u32>(4294967295u, arg_0.b.x), vec2<u32>(global0.b.x, 0u)), ~arg_0.b), global0.b), -17333i);
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = all(!vec3<bool>(!any(vec3<bool>(false, true, false)), select(true, true, all(vec2<bool>(false, false))), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), -1466f, _wgslsmith_f_op_f32(round(arg_0.b.a.x)), _wgslsmith_f_op_f32(round(-1525f)))))));
}

fn func_1() -> vec4<u32> {
    let var_0 = global2.wx;
    global4 = countOneBits(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, global0.b.x, global0.b.x, 43508u), vec4<u32>(0u, u_input.b, global0.b.x, u_input.a)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), ~vec4<u32>(1u, 1u, u_input.b, 14643u), ~vec4<u32>(u_input.a, 0u, 4294967295u, u_input.b))));
    global3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(abs(global0.b), func_2(Struct_1(vec2<f32>(-228f, global3.x), global0.b, 0i), u_input.c.x), u_input.b)))))));
    var var_1 = global0.a;
    var var_2 = 0i;
    return max(max(select(vec4<u32>(global0.b.x, 41502u, u_input.d, global0.b.x) << (firstTrailingBit(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, u_input.d)) % vec4<u32>(32u)), ~(~vec4<u32>(1u, 54236u, 0u, 0u)), vec4<bool>(true, true, true, true)), countOneBits(max(vec4<u32>(4294967295u, 123999u, 36752u, global0.b.x), vec4<u32>(u_input.b, u_input.d, 17271u, 63398u))) & ((vec4<u32>(u_input.d, 15397u, u_input.b, 4294967295u) | vec4<u32>(0u, 4294967295u, global0.b.x, 1702u)) | max(vec4<u32>(4294967295u, 74924u, u_input.b, global0.b.x), vec4<u32>(44743u, 11836u, u_input.a, u_input.a)))), vec4<u32>(global0.b.x, global0.b.x, 1u, countOneBits(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_div_i32(global0.c, -2147483647i)), 9062i >> (global0.b.x % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, global0.a.x, true))), -802f)), vec2<u32>(global0.b.x | _wgslsmith_clamp_u32(1u, reverseBits(u_input.b), 50238u), firstLeadingBit(select(0u, ~global0.b.x, false))), 0i);
    var var_2 = 2147483647i;
    var var_3 = Struct_3(Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(func_1(), countOneBits(vec4<u32>(u_input.b, 64112u, 1u, var_1.b.x))), countOneBits(var_1.b.x | 1u)), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-489f, -179f), _wgslsmith_f_op_vec2_f32(global0.a * var_1.a))), ~vec2<u32>(4294967295u, u_input.d), ~(-var_1.c)), _wgslsmith_add_u32(u_input.d, var_1.b.x)), func_2(func_2(func_2(func_2(Struct_1(var_1.a, vec2<u32>(0u, 4526u), 0i), global0.c), -2147483647i), global0.c), ~firstLeadingBit(reverseBits(var_1.c))), ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c, 65702i), vec2<i32>(1i, 7140i), vec2<i32>(43776i, 1i)) | global2.zz, select(select(vec2<i32>(-33963i, -1463i), vec2<i32>(u_input.c.x, u_input.c.x), true), ~u_input.c.wy, vec2<bool>(true, false))), vec3<bool>((var_1.c < _wgslsmith_sub_i32(var_1.c, -6780i)) & false, false, !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))));
    let var_4 = _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(var_1.b.x, global0.b.x, ~_wgslsmith_mod_u32(u_input.d, var_3.b.b.x) & _wgslsmith_sub_u32(~var_3.a.c, 0u)));
    let var_5 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), vec2<u32>(abs(var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4, 5176u, 56137u), vec3<u32>(u_input.b, 68691u, 83482u))), global0.c), firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, global0.c, -1i)), countOneBits(vec3<i32>(var_0.x, global2.x, 38882i))), var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, -355f, var_3.b.a.x, var_1.a.x) - vec4<f32>(-160f, global3.x, -1064f, 220f)), _wgslsmith_div_vec4_f32(vec4<f32>(341f, var_5.a.x, 647f, var_3.a.b.a.x), vec4<f32>(742f, global3.x, 858f, global3.x))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, var_5.a.x, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, 1590f, 165f, global0.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, 759f, 1530f, global0.a.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 396f, -1000f, var_3.a.b.a.x) + vec4<f32>(921f, -1821f, global0.a.x, var_1.a.x))), vec4<f32>(_wgslsmith_div_f32(var_3.a.b.a.x, 1393f), _wgslsmith_div_f32(1094f, 1000f), _wgslsmith_f_op_f32(global3.x * 1013f), _wgslsmith_f_op_f32(step(-197f, -568f))))), any(var_3.d.xy))), 2147483647i);
}

