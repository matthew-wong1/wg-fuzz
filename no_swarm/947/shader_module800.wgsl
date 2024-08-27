struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2;

var<private> global2: f32 = 1000f;

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(101f, Struct_1(vec4<u32>(9890u, 0u, 1u, 1u), false, vec2<f32>(1651f, -212f), 2404i), Struct_1(vec4<u32>(4294967295u, 40819u, 1u, 6391u), true, vec2<f32>(-323f, -1048f), 2147483647i)), Struct_2(223f, Struct_1(vec4<u32>(58012u, 33614u, 42667u, 26038u), false, vec2<f32>(446f, 1928f), 29955i), Struct_1(vec4<u32>(26778u, 32435u, 13420u, 0u), false, vec2<f32>(-235f, 384f), i32(-2147483648))), Struct_2(-505f, Struct_1(vec4<u32>(1u, 1u, 4294967295u, 8364u), true, vec2<f32>(162f, -388f), -1i), Struct_1(vec4<u32>(4294967295u, 0u, 52717u, 0u), true, vec2<f32>(324f, -793f), 16147i)), Struct_2(143f, Struct_1(vec4<u32>(34815u, 29859u, 4557u, 1u), true, vec2<f32>(-1091f, 344f), 2147483647i), Struct_1(vec4<u32>(150792u, 1u, 51744u, 32032u), false, vec2<f32>(1296f, 1000f), -17773i)), Struct_2(-1042f, Struct_1(vec4<u32>(1u, 4294967295u, 28051u, 23136u), false, vec2<f32>(481f, -1639f), 1i), Struct_1(vec4<u32>(1874u, 6935u, 32723u, 87446u), false, vec2<f32>(-895f, 473f), i32(-2147483648))), Struct_2(-1749f, Struct_1(vec4<u32>(1u, 14109u, 1u, 77716u), false, vec2<f32>(-981f, -324f), 2508i), Struct_1(vec4<u32>(4294967295u, 47710u, 19814u, 4294967295u), true, vec2<f32>(-2202f, 435f), 18278i)), Struct_2(770f, Struct_1(vec4<u32>(20402u, 70901u, 25469u, 0u), true, vec2<f32>(-193f, -1885f), 2147483647i), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u), false, vec2<f32>(-214f, 336f), 40363i)), Struct_2(1173f, Struct_1(vec4<u32>(54384u, 19551u, 9766u, 0u), true, vec2<f32>(1491f, -303f), 83111i), Struct_1(vec4<u32>(2396u, 17109u, 49211u, 5984u), false, vec2<f32>(1000f, -534f), 26635i)), Struct_2(-698f, Struct_1(vec4<u32>(24824u, 80243u, 31748u, 44433u), true, vec2<f32>(-631f, -809f), 22090i), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 3032u), false, vec2<f32>(1438f, 477f), 930i)), Struct_2(-499f, Struct_1(vec4<u32>(47095u, 3127u, 0u, 1u), false, vec2<f32>(-128f, 199f), 2147483647i), Struct_1(vec4<u32>(26796u, 4294967295u, 0u, 4294967295u), false, vec2<f32>(1498f, -567f), -28626i)), Struct_2(834f, Struct_1(vec4<u32>(0u, 86460u, 46225u, 0u), true, vec2<f32>(2175f, -813f), 20860i), Struct_1(vec4<u32>(0u, 33793u, 27813u, 4294967295u), false, vec2<f32>(1732f, -1951f), -4102i)), Struct_2(-159f, Struct_1(vec4<u32>(20051u, 67718u, 4294967295u, 0u), true, vec2<f32>(-154f, 1973f), -54236i), Struct_1(vec4<u32>(4294967295u, 29865u, 49257u, 4294967295u), false, vec2<f32>(-466f, 156f), -1i)), Struct_2(1316f, Struct_1(vec4<u32>(24073u, 4294967295u, 30428u, 0u), false, vec2<f32>(424f, 1323f), 2147483647i), Struct_1(vec4<u32>(1u, 56821u, 4294967295u, 5818u), true, vec2<f32>(-467f, -635f), -3152i)), Struct_2(-180f, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), true, vec2<f32>(1368f, 1000f), i32(-2147483648)), Struct_1(vec4<u32>(1u, 1u, 0u, 13364u), true, vec2<f32>(1024f, 330f), i32(-2147483648))), Struct_2(-768f, Struct_1(vec4<u32>(57840u, 60039u, 4294967295u, 83954u), true, vec2<f32>(349f, 465f), -49413i), Struct_1(vec4<u32>(4294967295u, 1u, 47652u, 13564u), false, vec2<f32>(-368f, -810f), 2147483647i)), Struct_2(173f, Struct_1(vec4<u32>(61438u, 1u, 42554u, 70150u), true, vec2<f32>(325f, 2091f), -8609i), Struct_1(vec4<u32>(23003u, 27570u, 0u, 1u), false, vec2<f32>(-542f, -843f), -39864i)), Struct_2(-116f, Struct_1(vec4<u32>(27259u, 0u, 19669u, 5584u), false, vec2<f32>(1028f, -200f), 11009i), Struct_1(vec4<u32>(1u, 0u, 8382u, 25414u), true, vec2<f32>(-331f, 1000f), 1i)), Struct_2(-138f, Struct_1(vec4<u32>(40443u, 9300u, 4294967295u, 1u), false, vec2<f32>(-1022f, -1000f), 2147483647i), Struct_1(vec4<u32>(1u, 1u, 0u, 26351u), false, vec2<f32>(-235f, 782f), -6231i)), Struct_2(-2274f, Struct_1(vec4<u32>(1u, 45210u, 53084u, 1u), false, vec2<f32>(158f, -200f), 1i), Struct_1(vec4<u32>(4294967295u, 24698u, 41133u, 27201u), true, vec2<f32>(144f, -732f), 1i)), Struct_2(1068f, Struct_1(vec4<u32>(0u, 32878u, 110318u, 1u), true, vec2<f32>(169f, -398f), 16983i), Struct_1(vec4<u32>(25123u, 1236u, 4294967295u, 4294967295u), false, vec2<f32>(-176f, 2061f), 0i)), Struct_2(2897f, Struct_1(vec4<u32>(48771u, 18543u, 0u, 52896u), false, vec2<f32>(1438f, 773f), -31017i), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), true, vec2<f32>(-575f, -1184f), -53982i)), Struct_2(-1692f, Struct_1(vec4<u32>(48509u, 50221u, 0u, 15043u), false, vec2<f32>(479f, -1157f), -3000i), Struct_1(vec4<u32>(4294967295u, 8106u, 11043u, 4294967295u), false, vec2<f32>(-826f, -205f), 42427i)), Struct_2(-525f, Struct_1(vec4<u32>(73460u, 4294967295u, 1u, 4294967295u), true, vec2<f32>(535f, 319f), 36181i), Struct_1(vec4<u32>(1593u, 18845u, 11929u, 1u), true, vec2<f32>(308f, -616f), 36646i)), Struct_2(431f, Struct_1(vec4<u32>(4294967295u, 24632u, 1u, 14959u), false, vec2<f32>(1411f, -218f), 60340i), Struct_1(vec4<u32>(35480u, 0u, 4294967295u, 3019u), true, vec2<f32>(334f, -237f), -25453i)), Struct_2(-174f, Struct_1(vec4<u32>(16455u, 44577u, 0u, 1u), false, vec2<f32>(918f, -906f), -63135i), Struct_1(vec4<u32>(4294967295u, 126012u, 10041u, 387u), true, vec2<f32>(-1628f, 662f), -35830i)), Struct_2(-717f, Struct_1(vec4<u32>(0u, 13623u, 29735u, 66687u), true, vec2<f32>(-1181f, -316f), -17082i), Struct_1(vec4<u32>(4252u, 68930u, 58528u, 4294967295u), false, vec2<f32>(1000f, 1000f), 20389i)), Struct_2(-938f, Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u), true, vec2<f32>(222f, 213f), -1i), Struct_1(vec4<u32>(21057u, 16771u, 1u, 4294967295u), false, vec2<f32>(-346f, 700f), i32(-2147483648))), Struct_2(-1237f, Struct_1(vec4<u32>(43678u, 16651u, 1u, 1u), true, vec2<f32>(-1000f, -1145f), -1i), Struct_1(vec4<u32>(1u, 13142u, 51230u, 4294967295u), false, vec2<f32>(851f, -592f), 1i)), Struct_2(-1337f, Struct_1(vec4<u32>(0u, 31647u, 33847u, 0u), true, vec2<f32>(-315f, 1009f), 1i), Struct_1(vec4<u32>(1u, 43401u, 5408u, 4294967295u), false, vec2<f32>(-685f, -704f), 12197i)), Struct_2(-2110f, Struct_1(vec4<u32>(16961u, 55141u, 55091u, 4294967295u), true, vec2<f32>(-1000f, 343f), i32(-2147483648)), Struct_1(vec4<u32>(23839u, 56540u, 1u, 1u), true, vec2<f32>(-658f, 2259f), 28130i)), Struct_2(-443f, Struct_1(vec4<u32>(0u, 4294967295u, 72693u, 1u), true, vec2<f32>(1329f, 352f), 2147483647i), Struct_1(vec4<u32>(54009u, 4294967295u, 24954u, 1u), true, vec2<f32>(-1000f, -361f), -1i)));

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1041f, _wgslsmith_f_op_f32(f32(-1f) * -371f))), -675f)));
    let var_0 = arg_1.b;
    global1 = Struct_2(global1.b.c.x, global1.c, global1.c);
    global4 = -(~u_input.b);
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.b.a.yzw, ~vec3<u32>(arg_1.a, _wgslsmith_div_u32(abs(global1.b.a.x), arg_1.a), ~(~4294967295u))), 31u)];
    return _wgslsmith_clamp_u32(reverseBits(max(countOneBits(~global1.c.a.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(7545u, global1.c.a.x, arg_1.a), 9040u))), _wgslsmith_sub_u32(abs(arg_0.a | max(arg_1.a, 84714u)), abs(arg_0.a)), ~arg_0.a);
}

fn func_2(arg_0: Struct_4) -> vec2<f32> {
    let var_0 = !select(!select(!vec3<bool>(global1.b.b, true, false), !vec3<bool>(global1.c.b, global1.c.b, global1.c.b), vec3<bool>(global1.c.b, false, global1.c.b)), vec3<bool>(global1.b.b, global1.c.b, true), !(!vec3<bool>(global1.c.b, false, false)));
    var var_1 = Struct_4(4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.c.x - 1160f))) * vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1318f)) - -2347f))), u_input.a.zzy);
    var_1 = arg_0;
    let var_2 = Struct_4(select(~0u, func_3(arg_0, Struct_4(global1.b.a.x, vec2<f32>(1000f, arg_0.b.x), var_1.c), vec2<bool>(global1.c.b, false), false), all(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(global1.c.b, global1.b.b, var_0.x, false), vec4<bool>(false, false, global1.b.b, global1.c.b)))) | ~_wgslsmith_sub_u32(~global1.c.a.x, arg_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(442f, var_1.b.x) - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x)))) - global1.c.c), vec3<i32>(min(var_1.c.x, -15647i), firstTrailingBit(reverseBits(_wgslsmith_add_i32(u_input.c, arg_0.c.x))), _wgslsmith_div_i32(~arg_0.c.x << ((25615u ^ var_1.a) % 32u), ~0i)));
    var var_3 = -1431f;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f + _wgslsmith_f_op_f32(-972f - -1000f))), _wgslsmith_f_op_f32(var_2.b.x * -167f)));
}

fn func_1() -> Struct_4 {
    global3 = array<Struct_2, 31>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(205f)))), Struct_1(~vec4<u32>(~1u, select(global1.c.a.x, 34187u, global1.b.b), global1.b.a.x, global1.c.a.x), global1.c.b, _wgslsmith_f_op_vec2_f32(-global1.b.c), 0i), global1.b);
    var var_1 = global1.c;
    global3 = array<Struct_2, 31>();
    var var_2 = all(!(!vec3<bool>(all(vec3<bool>(true, var_1.b, true)), true, global1.c.b)));
    return Struct_4(var_1.a.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.c.x, 1127f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), global1.a), _wgslsmith_f_op_vec2_f32(func_2(Struct_4(var_0.c.a.x, vec2<f32>(483f, -563f), vec3<i32>(var_0.c.d, var_0.c.d, 10963i)))), vec2<bool>(!global1.b.b, true))), !select(vec2<bool>(global1.c.b, false), vec2<bool>(var_0.c.b, var_0.b.b), var_1.b || true))), ~u_input.a.xzy);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(true, u_input.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.x, max(global1.b.d, -2724i), global1.c.d) >> (reverseBits(~vec3<u32>(arg_0.a, global1.b.a.x, arg_1.x)) % vec3<u32>(32u)), arg_0.c), Struct_2(global1.a, Struct_1(global1.c.a, false, global1.c.c, 13723i), Struct_1(~global1.b.a, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2064f, arg_0.b.x), vec2<f32>(arg_0.b.x, global1.c.c.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1123f, -107f))), firstLeadingBit(-arg_0.c.x))), ~(~(~global1.b.a.xyx)));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1360f, global1.c.c.x, -1531f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1311f, -719f, arg_0.b.x), vec3<f32>(var_0.d.c.c.x, arg_0.b.x, -780f)), !vec3<bool>(false, global1.b.b, false))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1522f, arg_0.b.x, var_0.d.b.c.x) + vec3<f32>(814f, 614f, -764f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, var_0.d.a, arg_0.b.x)))))));
    var var_2 = Struct_3(global1.c.b, var_0.b, var_0.c, global3[_wgslsmith_index_u32(~global1.b.a.x, 31u)], vec3<u32>(31700u, firstTrailingBit(min(1u, ~arg_0.a)), _wgslsmith_sub_u32(1u, var_0.d.c.a.x)));
    var var_3 = vec2<i32>(select(var_2.d.c.d << (1u % 32u), 15037i, !(!all(vec3<bool>(false, var_0.d.c.b, var_2.d.b.b)))), _wgslsmith_clamp_i32(firstTrailingBit(~arg_0.c.x) & _wgslsmith_clamp_i32(~(-18297i), ~u_input.c, arg_0.c.x), 0i, u_input.b));
    let var_4 = vec2<bool>(true | any(select(select(vec2<bool>(global1.b.b, true), vec2<bool>(global1.b.b, var_0.d.c.b), false), vec2<bool>(false, global1.b.b), vec2<bool>(true, true))), any(!select(vec2<bool>(false, global1.b.b), !vec2<bool>(global1.c.b, var_0.a), all(vec4<bool>(true, var_0.a, var_0.d.c.b, true)))));
    return Struct_2(var_2.d.c.c.x, global1.b, var_0.d.c);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_4(arg_0.c.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.c.x, -1837f)) - _wgslsmith_div_vec2_f32(global1.b.c, global1.b.c))))), -u_input.a.zzy);
    var_0 = func_1();
    var var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global1.b.a, vec4<u32>(4294967295u, arg_0.c.a.x, 45698u, 66554u)) << (global1.c.a % vec4<u32>(32u)), abs(global1.b.a) ^ ~global1.c.a), abs(_wgslsmith_add_vec4_u32(arg_0.c.a, ~vec4<u32>(4294967295u, 69824u, 8073u, global1.c.a.x))), global1.c.a);
    let var_2 = false;
    let var_3 = max(u_input.a << (global1.b.a % vec4<u32>(32u)), vec4<i32>(arg_1, -(i32(-1i) * -1i), -max(-2147483647i, -1i), _wgslsmith_dot_vec3_i32(firstTrailingBit(var_0.c), ~u_input.a.yyy))) & vec4<i32>(select(~(5197i ^ global1.b.d), (u_input.a.x ^ -41294i) ^ (u_input.b >> (var_1.x % 32u)), true), ~(-11730i), arg_0.b.d, 2147483647i);
    return func_4(func_1(), firstLeadingBit(min(_wgslsmith_div_vec2_u32(global1.b.a.xy, _wgslsmith_div_vec2_u32(var_1.zz, vec2<u32>(arg_0.c.a.x, 0u))), vec2<u32>(1215u, var_0.a)))).b;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_4(Struct_4(arg_3.b.a.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2.xz))))), ~(-vec3<i32>(-1i, -21417i, -2147483647i))), ~(~((global1.b.a.zx | global1.c.a.xx) ^ vec2<u32>(4294967295u, 4294967295u)))).b.c.x;
    global0 = 4123u;
    let var_1 = Struct_3(all(select(vec4<bool>(all(vec3<bool>(arg_0.b, global1.b.b, true)), any(vec2<bool>(false, true)), arg_3.c.b, arg_3.b.b || arg_1), vec4<bool>(!arg_0.b, true, all(vec3<bool>(false, global1.c.b, false)), any(vec4<bool>(arg_1, arg_1, false, arg_1))), vec4<bool>(any(vec2<bool>(true, global1.c.b)), arg_1 || global1.c.b, !arg_0.b, !arg_0.b))), -select(176i, u_input.a.x & func_5(global3[_wgslsmith_index_u32(global1.c.a.x, 31u)], 1i, 2147483647i).d, true), firstTrailingBit(vec3<i32>(arg_3.c.d | u_input.b, 0i, max(global1.c.d, -u_input.b))), global3[_wgslsmith_index_u32(4294967295u >> (global1.b.a.x % 32u), 31u)], max(func_5(global3[_wgslsmith_index_u32(~1u, 31u)], -14733i, ~global1.c.d).a.yxy >> (~(~vec3<u32>(1u, arg_3.b.a.x, global1.b.a.x)) % vec3<u32>(32u)), abs(vec3<u32>(38846u, firstTrailingBit(arg_3.b.a.x), abs(arg_0.a.x)))));
    var var_2 = vec4<u32>(arg_3.b.a.x, arg_3.c.a.x, 1u, ~arg_3.c.a.x);
    let var_3 = var_2.yx;
    return var_1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -1i;
    var var_0 = func_6(func_5(func_4(func_1(), ~(~global1.c.a.xy)), select(global1.c.d, -60255i, global1.c.b), global1.c.d), !global1.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.c.x, -398f, 742f) * vec3<f32>(global1.c.c.x, -866f, global1.a))))), func_4(Struct_4((global1.b.a.x << (global1.c.a.x % 32u)) & _wgslsmith_clamp_u32(41766u, global1.c.a.x, global1.b.a.x), func_1().b, vec3<i32>(0i, global1.b.d, global1.b.d)), vec2<u32>(81625u, ~global1.c.a.x ^ global1.b.a.x)));
    global4 = 43027i & (u_input.b & func_4(Struct_4(global1.c.a.x, vec2<f32>(global1.c.c.x, -207f), firstLeadingBit(vec3<i32>(-67075i, 0i, 34680i))), ~vec2<u32>(var_0.a.x, 1u)).c.d);
    global2 = _wgslsmith_f_op_f32(-530f - 1087f);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(exp2(var_0.c.x))) * _wgslsmith_div_f32(-616f, 1859f)), _wgslsmith_f_op_f32(trunc(-338f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1193f)), -2319f));
    global0 = global1.b.a.x;
    global3 = array<Struct_2, 31>();
    global0 = 4294967295u;
    let var_2 = select(vec3<bool>(true, !var_0.b, !all(!vec2<bool>(global1.b.b, false))), !(!select(!vec3<bool>(var_0.b, true, true), vec3<bool>(var_0.b, true, var_0.b), !vec3<bool>(var_0.b, global1.c.b, var_0.b))), all(!vec3<bool>(true, var_0.b, var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(u_input.a.zx, (u_input.a.wy << (vec2<u32>(var_0.a.x, global1.b.a.x) % vec2<u32>(32u))) << (~global1.c.a.yx % vec2<u32>(32u))), vec2<u32>(countOneBits(~17631u), 4294967295u) ^ ~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, global1.c.a.x), var_0.a.wx ^ vec2<u32>(15390u, 75082u)));
}

