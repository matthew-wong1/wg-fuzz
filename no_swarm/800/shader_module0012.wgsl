struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(1u, 4294967295u, 21356u, 94807u), vec4<u32>(0u, 1u, 1u, 63388u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 27117u, 40945u, 80696u), vec4<u32>(36425u, 0u, 0u, 6149u), vec4<u32>(1u, 33303u, 25801u, 4294967295u), vec4<u32>(52227u, 0u, 1721u, 1u), vec4<u32>(0u, 10948u, 1u, 0u), vec4<u32>(0u, 10377u, 100671u, 0u), vec4<u32>(1u, 4046u, 1u, 33358u), vec4<u32>(0u, 3080u, 100589u, 16705u), vec4<u32>(70918u, 4294967295u, 23668u, 1197u), vec4<u32>(1u, 10872u, 82556u, 1u), vec4<u32>(32364u, 7571u, 0u, 0u), vec4<u32>(19041u, 28726u, 1u, 41651u), vec4<u32>(29989u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(75864u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 1u, 2462u, 18047u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 68116u), vec4<u32>(70608u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(70457u, 80639u, 4294967295u, 27622u), vec4<u32>(1u, 40747u, 0u, 1u), vec4<u32>(34977u, 1u, 48472u, 0u), vec4<u32>(17367u, 0u, 42110u, 11680u), vec4<u32>(1u, 69442u, 29673u, 3941u), vec4<u32>(0u, 13884u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 2451u, 0u));

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-1i, -46569i, 0i, i32(-2147483648)), vec4<i32>(-17242i, -1i, -50622i, 2147483647i), vec4<i32>(0i, -14600i, 35693i, -45319i), vec4<i32>(-1i, 46408i, -1i, -28262i), vec4<i32>(1i, 0i, -1i, 1i), vec4<i32>(i32(-2147483648), 0i, -1i, 44963i), vec4<i32>(1i, 32595i, -1i, 26151i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 6016i), vec4<i32>(-21278i, 75363i, 0i, -25229i), vec4<i32>(-16107i, 10512i, 0i, -44802i), vec4<i32>(-11957i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(22921i, 2147483647i, 0i, -55747i), vec4<i32>(-32203i, 1i, 1i, -1i), vec4<i32>(12450i, 2147483647i, i32(-2147483648), 23836i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 59865i), vec4<i32>(i32(-2147483648), 0i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, -41821i, 2147483647i), vec4<i32>(i32(-2147483648), -5856i, -24182i, i32(-2147483648)), vec4<i32>(-50001i, 0i, i32(-2147483648), -25102i), vec4<i32>(0i, 1i, -1i, -8941i), vec4<i32>(17225i, 0i, i32(-2147483648), -43827i), vec4<i32>(i32(-2147483648), 2147483647i, 55656i, -12132i), vec4<i32>(16862i, 2147483647i, 1i, 0i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(12965i, 2147483647i, 2147483647i, 45405i), vec4<i32>(67851i, -13671i, -10728i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-3910i, 2147483647i, 0i, -1i), vec4<i32>(23206i, -1i, 3944i, 1i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.a.yz >> (firstTrailingBit(_wgslsmith_clamp_vec2_u32(min(u_input.a.yy, u_input.a.yz), u_input.a.xy, firstLeadingBit(vec2<u32>(u_input.a.x, 38484u)))) % vec2<u32>(32u)), abs(vec2<u32>(_wgslsmith_mod_u32(63760u, u_input.a.x), ~u_input.a.x)) & ~(u_input.a.xy ^ ~u_input.a.yz), _wgslsmith_mod_vec2_u32(~u_input.a.zx << (vec2<u32>(24032u, 1u) % vec2<u32>(32u)), min(min(~u_input.a.xy, vec2<u32>(u_input.a.x, 40326u)), _wgslsmith_div_vec2_u32(~u_input.a.zz, ~vec2<u32>(0u, u_input.a.x)))));
    var var_1 = _wgslsmith_clamp_vec2_u32(var_0, _wgslsmith_mult_vec2_u32(var_0, min(reverseBits(vec2<u32>(u_input.a.x, 52743u)), vec2<u32>(0u, var_0.x))), abs(~vec2<u32>(var_0.x, 19535u))) | vec2<u32>(~_wgslsmith_add_u32(var_0.x, 4294967295u), reverseBits(_wgslsmith_mult_u32(u_input.a.x, var_0.x & 46828u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-709f, 1138f, _wgslsmith_f_op_f32(-885f * -2202f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), -443f, _wgslsmith_f_op_f32(f32(-1f) * -1161f))))));
    var_1 = u_input.a.yz;
    let var_3 = vec4<i32>(2147483647i, -1i, -2147483647i << (~var_0.x % 32u), 32591i);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, 2708f, 417f))))))), _wgslsmith_f_op_vec3_f32(func_3()));
    var var_1 = var_0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(353f - arg_1), -519f, arg_1))));
    let var_3 = all(vec2<bool>((_wgslsmith_f_op_f32(exp2(arg_1)) < arg_1) || all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), select(_wgslsmith_f_op_f32(sign(-1743f)) <= var_0.x, true, true)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), arg_1, any(vec2<bool>(var_3, false)) && true)), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-arg_1)))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 30u)];
    global3 = array<vec4<i32>, 29>();
    let var_2 = arg_0.e.a.xy;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_0.c, 5u)])))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(655f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), 1200f))))));
    return Struct_3(i32(-1i) * -7608i, var_0.d, select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.c), ~vec2<u32>(0u, arg_0.c)), var_1.x, 107645u > u_input.a.x), Struct_2(arg_0.d.a), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, var_3.x, -919f)), vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-1000f, -1000f))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_3) -> f32 {
    let var_0 = func_4(Struct_3((_wgslsmith_add_i32(-4206i, arg_3.d.a) | 1i) ^ abs(1i), arg_3.b, 1u, arg_3.d, func_2((vec3<i32>(arg_3.a, 0i, u_input.d) | vec3<i32>(-39096i, -1i, u_input.d)) ^ u_input.c, 916f)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(arg_3.e.a)), arg_3.e.a)))));
    global0 = array<vec2<f32>, 5>();
    var var_1 = vec3<u32>(4294967295u, 1u, 32579u & ~(~var_0.c));
    var var_2 = arg_3.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1692f, 538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1176f * var_0.e.a.x)))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_div_f32(1359f, _wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(abs(var_0.e.a.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: bool) -> vec2<i32> {
    let var_0 = func_4(Struct_3(arg_2.x, Struct_2(14363i << (_wgslsmith_mult_u32(0u, 45709u) % 32u)), 0u, Struct_2(u_input.b), func_2(-max(u_input.c, u_input.c), _wgslsmith_f_op_f32(floor(-2238f)))), func_2(~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 1824f) * arg_1.x))).e;
    global1 = array<vec2<bool>, 20>();
    global2 = array<vec4<u32>, 30>();
    var var_1 = func_4(func_4(func_4(func_4(func_4(Struct_3(u_input.b, Struct_2(arg_2.x), 49080u, Struct_2(arg_2.x), var_0), Struct_1(vec3<f32>(arg_1.x, -137f, -324f))), Struct_1(vec3<f32>(990f, arg_1.x, arg_1.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, var_0.a.x)))), func_4(Struct_3(_wgslsmith_mod_i32(u_input.c.x, u_input.b), func_4(Struct_3(arg_2.x, Struct_2(-1i), 1u, Struct_2(arg_2.x), Struct_1(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), Struct_1(var_0.a)).b, _wgslsmith_clamp_u32(0u, 4302u, 24781u), func_4(Struct_3(u_input.d, Struct_2(-1688i), 4294967295u, Struct_2(2714i), var_0), var_0).b, var_0), Struct_1(func_4(Struct_3(2147483647i, Struct_2(1i), 77692u, Struct_2(arg_2.x), Struct_1(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), Struct_1(var_0.a)).e.a)).e), Struct_1(var_0.a)).e;
    var var_2 = _wgslsmith_f_op_f32(func_4(func_4(Struct_3(1i ^ u_input.c.x, Struct_2(arg_2.x), ~u_input.a.x, Struct_2(67481i), var_0), var_0), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a))).e.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * 676f))));
    return abs(u_input.c.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 20>();
    var var_0 = func_5(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-354f, 1f, -1490f, -492f), vec4<f32>(_wgslsmith_f_op_f32(step(1000f, 209f)), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(17158u, 5u)], 1411f, vec2<u32>(1u, 20675u), Struct_3(u_input.d, Struct_2(2147483647i), 0u, Struct_2(u_input.b), Struct_1(vec3<f32>(490f, -1276f, 947f))))), _wgslsmith_f_op_f32(sign(546f)), func_4(Struct_3(1i, Struct_2(-2147483647i), 20267u, Struct_2(-24687i), Struct_1(vec3<f32>(-1708f, -591f, 603f))), Struct_1(vec3<f32>(1227f, -568f, -761f))).e.a.x), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1578f, 375f, 537f, -450f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(934f, -686f, 943f, 1867f) + vec4<f32>(-434f, -1403f, 209f, 397f))))), u_input.c.zy, !(!(false | any(vec3<bool>(true, false, true)))));
    let var_1 = vec3<i32>(-1i) * -firstLeadingBit(firstTrailingBit(vec3<i32>(2147483647i, var_0.x, -12295i)));
    global0 = array<vec2<f32>, 5>();
    let var_2 = func_4(Struct_3(~43075i, func_4(Struct_3(-36787i, func_4(Struct_3(var_1.x, Struct_2(-1i), u_input.a.x, Struct_2(0i), Struct_1(vec3<f32>(-725f, -1399f, -919f))), Struct_1(vec3<f32>(-1796f, -1341f, -1146f))).d, u_input.a.x, func_4(Struct_3(var_0.x, Struct_2(-1i), u_input.a.x, Struct_2(var_0.x), Struct_1(vec3<f32>(-1000f, 1686f, -760f))), Struct_1(vec3<f32>(-657f, 220f, -1000f))).d, Struct_1(vec3<f32>(1000f, -1707f, 664f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -338f, 244f) * vec3<f32>(901f, 329f, 297f)))).b, ~(~_wgslsmith_mult_u32(20030u, u_input.a.x)), func_4(func_4(Struct_3(1i, Struct_2(var_0.x), u_input.a.x, Struct_2(-28157i), Struct_1(vec3<f32>(886f, -602f, -241f))), func_2(vec3<i32>(0i, var_0.x, var_1.x), -1155f)), func_2(var_1, _wgslsmith_f_op_f32(max(-1273f, 1736f)))).d, func_2(vec3<i32>(-1i, 1i, 40663i) << (u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1351f, -764f)))), func_2(firstLeadingBit(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-6448i, -1i, var_0.x), var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x)));
    let var_3 = var_2.d;
    global3 = array<vec4<i32>, 29>();
    var var_4 = func_4(var_2, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.a.x, var_2.e.a.x, -2717f) + vec3<f32>(-552f, var_2.e.a.x, 846f))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.e.a.x), 1650f))) + -134f));
}

