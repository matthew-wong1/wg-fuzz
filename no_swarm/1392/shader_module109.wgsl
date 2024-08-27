struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), false, vec2<u32>(0u, 52777u), vec4<f32>(1000f, 989f, -1915f, 901f)), Struct_1(vec3<u32>(1u, 8087u, 50802u), false, vec2<u32>(0u, 6860u), vec4<f32>(1000f, 426f, 314f, 284f)), Struct_1(vec3<u32>(0u, 17196u, 1u), true, vec2<u32>(43376u, 4294967295u), vec4<f32>(990f, 1483f, 253f, 1263f)), Struct_1(vec3<u32>(18960u, 4294967295u, 1u), true, vec2<u32>(4294967295u, 1u), vec4<f32>(-1403f, -1038f, -1005f, -779f)), Struct_1(vec3<u32>(4294967295u, 92594u, 37305u), true, vec2<u32>(95147u, 1u), vec4<f32>(320f, -248f, -990f, -797f)), Struct_1(vec3<u32>(1u, 16715u, 124183u), false, vec2<u32>(75869u, 16477u), vec4<f32>(-1000f, 585f, 140f, 932f)), Struct_1(vec3<u32>(44463u, 9210u, 31023u), false, vec2<u32>(18191u, 4294967295u), vec4<f32>(684f, -934f, -1005f, 1091f)), Struct_1(vec3<u32>(0u, 4294967295u, 56973u), true, vec2<u32>(4294967295u, 36653u), vec4<f32>(330f, 444f, -1270f, 1000f)), Struct_1(vec3<u32>(4294967295u, 9791u, 0u), false, vec2<u32>(0u, 7070u), vec4<f32>(-375f, -2628f, -807f, 983f)), Struct_1(vec3<u32>(82426u, 89957u, 6088u), true, vec2<u32>(32473u, 11847u), vec4<f32>(-1244f, 614f, -646f, 128f)), Struct_1(vec3<u32>(46604u, 99759u, 56983u), false, vec2<u32>(50731u, 21833u), vec4<f32>(1378f, -308f, 548f, 1431f)), Struct_1(vec3<u32>(31263u, 35564u, 4294967295u), true, vec2<u32>(14296u, 0u), vec4<f32>(-521f, -176f, -418f, 180f)), Struct_1(vec3<u32>(23326u, 1u, 4294967295u), true, vec2<u32>(1u, 312u), vec4<f32>(324f, -956f, -1017f, -944f)), Struct_1(vec3<u32>(32635u, 40513u, 94999u), false, vec2<u32>(0u, 9129u), vec4<f32>(-1000f, 1000f, 1000f, 1000f)), Struct_1(vec3<u32>(0u, 5772u, 2185u), false, vec2<u32>(42951u, 22571u), vec4<f32>(-432f, 509f, -1855f, -1000f)), Struct_1(vec3<u32>(64380u, 52190u, 17128u), true, vec2<u32>(1u, 34433u), vec4<f32>(1641f, 1297f, 2231f, 679f)), Struct_1(vec3<u32>(40376u, 4294967295u, 4294967295u), false, vec2<u32>(47656u, 4294967295u), vec4<f32>(1000f, 1000f, 1233f, -1764f)), Struct_1(vec3<u32>(0u, 6786u, 41930u), false, vec2<u32>(0u, 4248u), vec4<f32>(736f, 768f, -1453f, 126f)), Struct_1(vec3<u32>(0u, 0u, 54264u), false, vec2<u32>(29993u, 7284u), vec4<f32>(-1000f, -1985f, -1119f, 1000f)), Struct_1(vec3<u32>(0u, 4294967295u, 21483u), false, vec2<u32>(10403u, 0u), vec4<f32>(-522f, 1724f, -239f, 2280f)), Struct_1(vec3<u32>(0u, 1u, 1691u), false, vec2<u32>(0u, 82918u), vec4<f32>(-1000f, -801f, 780f, -424f)), Struct_1(vec3<u32>(27625u, 18043u, 39241u), false, vec2<u32>(45735u, 12441u), vec4<f32>(-305f, 952f, 1814f, -1743f)), Struct_1(vec3<u32>(46962u, 11319u, 1u), true, vec2<u32>(0u, 32047u), vec4<f32>(-900f, -1116f, 312f, 1549f)), Struct_1(vec3<u32>(22970u, 1u, 0u), true, vec2<u32>(4294967295u, 1u), vec4<f32>(1021f, 402f, -2089f, 2691f)), Struct_1(vec3<u32>(0u, 0u, 0u), true, vec2<u32>(4294967295u, 7121u), vec4<f32>(1224f, -2304f, 103f, -472f)), Struct_1(vec3<u32>(65348u, 24679u, 4294967295u), false, vec2<u32>(4294967295u, 0u), vec4<f32>(1737f, 2136f, -939f, -1046f)), Struct_1(vec3<u32>(1u, 26803u, 4294967295u), false, vec2<u32>(4294967295u, 21836u), vec4<f32>(1000f, 342f, 150f, 2344f)));

var<private> global2: Struct_4;

var<private> global3: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-388f, -868f, 515f), vec3<f32>(1894f, 481f, -200f), vec3<f32>(-1268f, 305f, 224f), vec3<f32>(330f, -1113f, -173f), vec3<f32>(-1000f, 848f, 1000f), vec3<f32>(1000f, 707f, 101f), vec3<f32>(-939f, 664f, -101f), vec3<f32>(-541f, 385f, 638f), vec3<f32>(-331f, -468f, 1550f), vec3<f32>(470f, 443f, -264f), vec3<f32>(858f, -357f, 2069f), vec3<f32>(-587f, 771f, -1827f), vec3<f32>(-1331f, -1593f, -264f), vec3<f32>(1562f, 831f, -1192f), vec3<f32>(498f, -1000f, -273f), vec3<f32>(-1229f, 1473f, 1686f), vec3<f32>(180f, -352f, 390f), vec3<f32>(-1000f, -1038f, -2257f), vec3<f32>(1195f, -112f, 761f), vec3<f32>(-512f, 1446f, -619f), vec3<f32>(124f, -1499f, -1734f), vec3<f32>(-342f, 1651f, -2121f), vec3<f32>(-1000f, -1224f, 794f), vec3<f32>(1541f, 938f, 627f), vec3<f32>(-529f, 896f, -383f), vec3<f32>(-382f, -158f, -965f), vec3<f32>(-947f, -1651f, -326f), vec3<f32>(2362f, 376f, -928f), vec3<f32>(997f, 1490f, -506f), vec3<f32>(-1984f, -984f, 1244f));

var<private> global4: array<f32, 13> = array<f32, 13>(-513f, -1102f, 803f, 1000f, -286f, -844f, 1379f, -325f, -1000f, -551f, -1145f, -1038f, -242f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = !vec4<bool>(true, global2.a.c.x, false, global2.c);
    let var_1 = Struct_2(Struct_1(abs(vec3<u32>(arg_0.x | arg_0.x, 42019u, _wgslsmith_mod_u32(0u, u_input.b))), true, arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.d.x, global4[_wgslsmith_index_u32(u_input.b, 13u)], global2.a.a.d.x, global2.a.a.d.x) + vec4<f32>(global4[_wgslsmith_index_u32(global2.a.a.a.x, 13u)], -1528f, global4[_wgslsmith_index_u32(4294967295u, 13u)], -673f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1528f, 855f, 182f, global2.a.a.d.x) - global2.a.a.d)) - vec4<f32>(-565f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0.x, 13u)] - -775f), _wgslsmith_f_op_f32(-global2.a.a.d.x), _wgslsmith_f_op_f32(select(global2.a.a.d.x, -1184f, var_0.x))))), global2.a.a.c.x, global2.b);
    var var_2 = global2.a.a.d.yx;
    let var_3 = Struct_1(var_1.a.a, var_0.x, ~vec2<u32>(min(_wgslsmith_add_u32(u_input.b, var_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.c.x, global2.a.b), var_1.a.c)), select(13831u, 1u, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.x) - _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(84902u, 13u)] + var_1.a.d.x)), 1070f, var_2.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global2.a.a.d, var_1.a.d)) - _wgslsmith_f_op_vec4_f32(-var_1.a.d))));
    let var_4 = global2.a.a;
    return var_0;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<bool>(any(select(!(!vec4<bool>(global2.b.x, false, false, global2.a.c.x)), select(vec4<bool>(true, global2.b.x, global2.c, false), !vec4<bool>(global2.b.x, true, global2.c, global2.b.x), global2.b.x), global2.c)), !(1u <= global2.a.b), any(!select(vec4<bool>(global2.b.x, true, true, global2.a.a.b), func_3(vec2<u32>(31531u, global2.a.a.c.x)), !vec4<bool>(false, global2.b.x, false, global2.b.x))));
    var var_1 = Struct_4(Struct_2(Struct_1(global2.a.a.a << (global2.a.a.a % vec3<u32>(32u)), 4294967295u < u_input.b, global2.a.a.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global4[_wgslsmith_index_u32(u_input.b, 13u)], global4[_wgslsmith_index_u32(23875u, 13u)], 395f))))), select(_wgslsmith_add_u32(global2.a.b, u_input.b), _wgslsmith_dot_vec2_u32(global2.a.a.c, abs(global2.a.a.c)), true), global2.a.c), vec3<bool>(var_0.x, false, !any(select(vec4<bool>(global2.c, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, true)))), false, vec3<i32>(global2.d.x, global2.d.x ^ 2147483647i, -2147483647i));
    let var_2 = Struct_3(var_1.a);
    var_1 = Struct_4(var_1.a, !(!(!select(vec3<bool>(var_0.x, false, var_1.c), vec3<bool>(true, var_0.x, false), global2.c))), !func_3(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.a.a.x, 1u), vec2<u32>(50418u, 31027u))).x, _wgslsmith_sub_vec3_i32(countOneBits(global2.d) & -u_input.a, vec3<i32>(-15054i, ~26937i, _wgslsmith_add_i32(1i, 1i))));
    var var_3 = Struct_2(Struct_1(firstTrailingBit(abs(_wgslsmith_sub_vec3_u32(global2.a.a.a, vec3<u32>(7295u, 90933u, 4294967295u)))), all(select(var_0.xy, var_0.xz, !var_2.a.c.x)), min(abs(vec2<u32>(u_input.b, global2.a.b) & vec2<u32>(77062u, var_2.a.a.c.x)), _wgslsmith_clamp_vec2_u32(var_1.a.a.c, _wgslsmith_mult_vec2_u32(var_2.a.a.c, global2.a.a.c), var_1.a.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.a.d + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1487f, global2.a.a.d.x, global4[_wgslsmith_index_u32(var_2.a.a.a.x, 13u)], 771f))))), firstTrailingBit(global2.a.a.c.x), !vec3<bool>(true, var_2.a.c.x, var_2.a.c.x));
    return Struct_2(Struct_1(countOneBits(vec3<u32>(21668u, 46532u, 3196u)) ^ abs(~var_2.a.a.a), var_3.c.x, vec2<u32>(~0u, ~41833u) >> (countOneBits(~vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(-548f, _wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_div_f32(464f, -930f), _wgslsmith_f_op_f32(-var_3.a.d.x)), var_2.a.a.d)), ~var_3.b, !vec3<bool>(_wgslsmith_f_op_f32(ceil(var_1.a.a.d.x)) < _wgslsmith_f_op_f32(f32(-1f) * -298f), true, !any(vec2<bool>(global2.c, true))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = (0i <= max(0i & u_input.a.x, u_input.a.x)) & any(arg_3.a.c);
    global4 = array<f32, 13>();
    global4 = array<f32, 13>();
    var var_1 = all(!global2.a.c.yz);
    let var_2 = func_2();
    return Struct_2(global1[_wgslsmith_index_u32(global2.a.b, 27u)], _wgslsmith_dot_vec3_u32(~max(vec3<u32>(4294967295u, var_2.b, 4294967295u), vec3<u32>(arg_3.a.b, var_2.b, var_2.a.a.x)), ~global2.a.a.a), func_2().c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec4<bool> {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(abs(1u) & (_wgslsmith_mod_u32(4294967295u, arg_1.a.a.x) | reverseBits(arg_1.b)), abs(func_1(select(true, false, arg_0.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-103f, -1438f) + global2.a.a.d.zz), global2.d.zz, Struct_3(Struct_2(Struct_1(vec3<u32>(arg_2, global2.a.b, u_input.b), true, vec2<u32>(42632u, arg_0.a.c.x), arg_1.a.d), arg_1.a.c.x, arg_1.c))).b), arg_0.b), u_input.b, ~31006u, ~arg_1.b);
    var var_1 = Struct_2(func_2().a, global2.a.b, vec3<bool>(all(arg_0.c), true, _wgslsmith_dot_vec3_i32(global2.d >> (vec3<u32>(8402u, arg_2, u_input.b) % vec3<u32>(32u)), u_input.a) == 0i));
    global4 = array<f32, 13>();
    let var_2 = arg_1.c.x;
    let var_3 = 12193u;
    return !vec4<bool>(all(select(var_1.c.xy, arg_0.c.yx, arg_1.a.b)), 382f <= _wgslsmith_f_op_f32(abs(arg_0.a.d.x)), any(!select(vec4<bool>(arg_1.c.x, arg_0.a.b, false, false), vec4<bool>(false, arg_1.a.b, false, global2.b.x), vec4<bool>(true, var_2, arg_0.a.b, global2.c))), func_3(var_0.xy).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!func_4(global2.a, func_1(global2.b.x, vec2<f32>(global4[_wgslsmith_index_u32(0u, 13u)], -1758f), vec2<i32>(u_input.c, -16981i), Struct_3(global2.a)), global2.a.a.a.x)), !func_4(func_1(global2.b.x, vec2<f32>(-1475f, global4[_wgslsmith_index_u32(u_input.b, 13u)]), u_input.a.yz, Struct_3(Struct_2(global1[_wgslsmith_index_u32(0u, 27u)], 1019u, global2.b))), global2.a, _wgslsmith_mod_u32(4294967295u & global2.a.a.c.x, firstLeadingBit(u_input.b))), vec4<bool>(false, all(vec3<bool>(all(global2.a.c.yx), !global2.b.x, true)), !(!global2.a.c.x), func_3(global2.a.a.a.yx).x));
    global1 = array<Struct_1, 27>();
    global2 = Struct_4(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~50356u, firstLeadingBit(0u)), 27u)], 1u, vec3<bool>(global2.a.a.b, true, global2.c)), global2.a.c, !(min(~22769i, -1i ^ u_input.a.x) == -38318i), ~vec3<i32>(-2147483647i, global2.d.x, 1i | u_input.c));
    var var_1 = Struct_3(func_1(var_0.x, vec2<f32>(global2.a.a.d.x, global2.a.a.d.x), max(vec2<i32>(6160i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -53738i), vec2<i32>(-1i, 6190i))), Struct_3(global2.a)));
    var var_2 = ~(~var_1.a.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.d.x, -582f, var_1.a.a.d.x)) - vec3<f32>(993f, 739f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 13u)]))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global2.a.a.d.yzy - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global4[_wgslsmith_index_u32(global2.a.a.a.x, 13u)], global2.a.a.d.x) * vec3<f32>(-1000f, 1039f, global2.a.a.d.x))), var_1.a.a.d.xxz))));
}

