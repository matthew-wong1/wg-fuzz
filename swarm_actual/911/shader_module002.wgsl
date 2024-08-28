struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(true, false, Struct_1(4294967295u, 4294967295u, 16385i, true, vec4<f32>(-1000f, 1620f, 242f, -518f))), Struct_5(false, true, Struct_1(33465u, 689u, -19017i, true, vec4<f32>(-1240f, -1000f, -1733f, -1513f))), Struct_5(true, true, Struct_1(4294967295u, 1u, -7101i, true, vec4<f32>(-2421f, -828f, -1009f, 1000f))), Struct_5(true, true, Struct_1(32846u, 29988u, -13135i, true, vec4<f32>(-347f, 615f, 787f, 1313f))), Struct_5(false, false, Struct_1(13015u, 4294967295u, 1i, true, vec4<f32>(-123f, 161f, -649f, -216f))), Struct_5(true, true, Struct_1(1u, 4294967295u, -1i, true, vec4<f32>(829f, -1286f, 1493f, 126f))), Struct_5(true, true, Struct_1(4294967295u, 81118u, 5744i, false, vec4<f32>(-186f, -1158f, -1261f, 741f))), Struct_5(true, true, Struct_1(4294967295u, 1u, 1i, true, vec4<f32>(671f, -167f, 170f, 1000f))), Struct_5(true, true, Struct_1(0u, 74916u, 2147483647i, false, vec4<f32>(2467f, 1490f, -511f, -2192f))), Struct_5(false, false, Struct_1(39407u, 1u, 518i, false, vec4<f32>(-908f, -340f, -1272f, -909f))), Struct_5(false, true, Struct_1(4294967295u, 39028u, 1i, false, vec4<f32>(-313f, -284f, 790f, -1566f))), Struct_5(true, true, Struct_1(4294967295u, 69425u, 2147483647i, true, vec4<f32>(577f, -247f, 1293f, 828f))), Struct_5(false, true, Struct_1(1886u, 908u, 28549i, true, vec4<f32>(939f, -1463f, 977f, 193f))), Struct_5(true, false, Struct_1(17156u, 1u, -1i, false, vec4<f32>(355f, -1941f, -1043f, 259f))), Struct_5(true, true, Struct_1(27501u, 35307u, 2147483647i, false, vec4<f32>(-487f, 918f, 2102f, -479f))), Struct_5(false, false, Struct_1(1u, 22771u, 13736i, true, vec4<f32>(-1083f, -597f, -738f, -106f))), Struct_5(true, false, Struct_1(4294967295u, 33574u, 2054i, true, vec4<f32>(-642f, -456f, -532f, -1532f))), Struct_5(true, false, Struct_1(0u, 7956u, 2147483647i, true, vec4<f32>(-578f, -202f, 422f, 1269f))), Struct_5(true, true, Struct_1(87809u, 4294967295u, -1i, true, vec4<f32>(1558f, 527f, 2406f, 849f))), Struct_5(false, true, Struct_1(68131u, 4294967295u, -1i, true, vec4<f32>(688f, -737f, -1636f, 709f))), Struct_5(false, false, Struct_1(0u, 35555u, 2147483647i, false, vec4<f32>(-1000f, 497f, -917f, -818f))), Struct_5(true, true, Struct_1(8737u, 1u, -30990i, false, vec4<f32>(-285f, -216f, -1000f, 1203f))), Struct_5(true, false, Struct_1(67136u, 4294967295u, 2147483647i, false, vec4<f32>(-459f, -1310f, -522f, -740f))), Struct_5(true, false, Struct_1(18909u, 42703u, 14005i, false, vec4<f32>(-1966f, 1000f, 1665f, 243f))), Struct_5(false, true, Struct_1(5873u, 4294967295u, 17243i, false, vec4<f32>(2063f, -473f, -180f, -514f))), Struct_5(true, false, Struct_1(7069u, 4294967295u, 39858i, false, vec4<f32>(-1746f, 946f, -496f, 405f))));

var<private> global2: bool = true;

var<private> global3: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(false, true, Struct_1(4294967295u, 65368u, i32(-2147483648), false, vec4<f32>(-1712f, -1446f, 1000f, -2164f))), Struct_5(true, false, Struct_1(70622u, 38445u, -7009i, true, vec4<f32>(-192f, -398f, -1699f, -316f))), Struct_5(true, true, Struct_1(732u, 46255u, 18263i, false, vec4<f32>(-780f, 311f, 1000f, 398f))), Struct_5(false, true, Struct_1(4294967295u, 0u, 27734i, false, vec4<f32>(527f, 251f, 426f, 521f))), Struct_5(true, true, Struct_1(4294967295u, 1u, -1i, false, vec4<f32>(187f, -205f, -603f, -247f))), Struct_5(true, false, Struct_1(1u, 105779u, i32(-2147483648), true, vec4<f32>(1682f, -1395f, 1025f, -295f))), Struct_5(true, false, Struct_1(73489u, 12437u, 2147483647i, false, vec4<f32>(-545f, 572f, 312f, 128f))), Struct_5(false, true, Struct_1(42326u, 30628u, -1i, true, vec4<f32>(2520f, 755f, 659f, -515f))), Struct_5(true, false, Struct_1(50136u, 15695u, 1i, false, vec4<f32>(-162f, 144f, 1776f, -288f))), Struct_5(true, false, Struct_1(4294967295u, 4294967295u, -74035i, true, vec4<f32>(-317f, 546f, -2735f, -2136f))), Struct_5(true, true, Struct_1(0u, 4294967295u, 2147483647i, true, vec4<f32>(-1286f, -672f, 872f, -186f))), Struct_5(true, false, Struct_1(1u, 2536u, 2147483647i, false, vec4<f32>(627f, -647f, 1701f, 824f))), Struct_5(false, true, Struct_1(1u, 19694u, 10788i, true, vec4<f32>(-1221f, 1546f, 126f, 140f))), Struct_5(true, true, Struct_1(1u, 22871u, -1i, true, vec4<f32>(-273f, 1000f, -2008f, -583f))), Struct_5(true, false, Struct_1(35857u, 13620u, -3679i, true, vec4<f32>(-110f, 380f, -966f, -254f))), Struct_5(false, false, Struct_1(17416u, 29453u, -1i, true, vec4<f32>(1000f, 1465f, 1386f, 363f))), Struct_5(true, true, Struct_1(12780u, 1u, -1i, true, vec4<f32>(-100f, 1425f, -1422f, -1063f))), Struct_5(true, true, Struct_1(1u, 0u, 0i, false, vec4<f32>(-143f, -1000f, -818f, 1000f))), Struct_5(true, false, Struct_1(4294967295u, 4294967295u, -28094i, false, vec4<f32>(908f, -594f, -217f, 1000f))), Struct_5(false, true, Struct_1(1u, 65306u, -1i, false, vec4<f32>(-1000f, 1000f, -662f, 265f))), Struct_5(false, true, Struct_1(802u, 67614u, -5865i, false, vec4<f32>(-279f, 274f, 2761f, -308f))), Struct_5(false, true, Struct_1(1u, 18306u, 4450i, false, vec4<f32>(-1343f, 1177f, 968f, -1000f))), Struct_5(false, true, Struct_1(0u, 1u, 0i, true, vec4<f32>(1206f, -782f, -1649f, -131f))), Struct_5(false, true, Struct_1(35040u, 4294967295u, -4338i, true, vec4<f32>(211f, 183f, -2153f, 690f))));

var<private> global4: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(i32(-2147483648), vec3<bool>(true, false, false)), Struct_3(2147483647i, vec3<bool>(false, false, false)), Struct_3(2147483647i, vec3<bool>(true, false, false)), Struct_3(0i, vec3<bool>(false, true, true)), Struct_3(-1i, vec3<bool>(true, false, true)), Struct_3(82i, vec3<bool>(false, true, false)), Struct_3(27732i, vec3<bool>(true, false, true)), Struct_3(44560i, vec3<bool>(true, false, false)), Struct_3(8086i, vec3<bool>(false, true, false)), Struct_3(2147483647i, vec3<bool>(true, true, true)), Struct_3(0i, vec3<bool>(false, false, false)), Struct_3(i32(-2147483648), vec3<bool>(true, false, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5) -> i32 {
    global2 = !arg_0.a;
    var var_0 = arg_1;
    var var_1 = Struct_5(true, var_0.b, var_0.c);
    var var_2 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(68177i, ~2147483647i << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.b, arg_1.c.b), vec2<u32>(43508u, 1u)) % 32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, max(-54741i, arg_1.c.c)), _wgslsmith_clamp_vec2_i32(abs(u_input.a.wz), abs(u_input.b.yw), _wgslsmith_div_vec2_i32(u_input.b.yw, u_input.a.zx)))));
    let var_3 = Struct_4(Struct_1(~(~29533u), 4294967295u, arg_1.c.c, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_1.b, var_1.a))), _wgslsmith_f_op_vec4_f32(-arg_0.c.e)));
    return 0i;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.c.e.x - _wgslsmith_f_op_f32(-arg_2.c.e.x))));
    global0 = Struct_5(false, true, global0.c);
    global3 = array<Struct_5, 24>();
    var var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, arg_2.c.a, 1u) << (reverseBits(vec3<u32>(arg_2.c.a, 1u, u_input.c)) % vec3<u32>(32u))), abs(vec3<u32>(4294967295u, 54714u, select(4294967295u, arg_2.c.a, false)))), 12u)];
    var var_2 = -2147483647i;
    return 0i;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec2<u32> {
    global4 = array<Struct_3, 12>();
    global0 = Struct_5(true, !(!all(!vec3<bool>(global0.b, arg_2.x, arg_2.x))), global0.c);
    let var_0 = Struct_2(global0.c.e.x, vec4<i32>(func_3(-2183f, _wgslsmith_add_i32(func_2(Struct_5(arg_2.x, true, global0.c), Struct_5(true, false, Struct_1(u_input.c, 22435u, 43856i, true, vec4<f32>(349f, global0.c.e.x, -649f, -289f)))), _wgslsmith_add_i32(41251i, -2147483647i)), global1[_wgslsmith_index_u32(arg_0, 26u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-284f, -783f, arg_2.x))))), 10349i, ~31201i, ~(~u_input.a.x)), arg_2);
    let var_1 = Struct_4(Struct_1(firstTrailingBit(1u), countOneBits(select(arg_0, ~34753u, all(arg_2.yzx))), var_0.b.x, global0.b, global0.c.e));
    let var_2 = ~abs(select(~vec2<u32>(37112u, var_1.a.b), ~vec2<u32>(u_input.c, 1u) | (vec2<u32>(37004u, var_1.a.b) | vec2<u32>(0u, global0.c.b)), global0.a && var_0.c.x));
    return abs(vec2<u32>(42339u, _wgslsmith_clamp_u32(max(u_input.c ^ 16962u, var_1.a.a ^ u_input.c), abs(_wgslsmith_sub_u32(arg_0, 1245u)), ~countOneBits(u_input.c))));
}

fn func_4(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = abs(-vec2<i32>(firstTrailingBit(u_input.e) ^ 1i, -select(u_input.b.x, global0.c.c, true)));
    global4 = array<Struct_3, 12>();
    global2 = global0.b;
    global0 = global3[_wgslsmith_index_u32(1u, 24u)];
    var var_1 = _wgslsmith_mod_vec4_i32(u_input.a, -(~(-u_input.b | (u_input.b << (vec4<u32>(0u, u_input.c, 1u, 67435u) % vec4<u32>(32u))))));
    return Struct_4(Struct_1(46283u, 4294967295u | min(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.b, 0u, 52728u), vec3<u32>(u_input.c, global0.c.a, global0.c.a))), 10558i, all(!vec4<bool>(global0.a, false, false, false)), vec4<f32>(1101f, global0.c.e.x, 1243f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.c.e.x * global0.c.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.c.e.yz), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(491f)) - _wgslsmith_f_op_f32(max(-177f, global0.c.e.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.e.x), _wgslsmith_div_f32(1424f, global0.c.e.x)))), _wgslsmith_f_op_vec2_f32(min(global0.c.e.wy, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c.e.x, -762f), global0.c.e.wx)))), global0.b)), !(!(!select(vec2<bool>(false, global0.a), vec2<bool>(false, false), true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(var_0));
    let var_2 = func_4(~vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.c, 0u), _wgslsmith_sub_u32(19987u, u_input.c)) | func_1(1u, global0.c.e.wyz, vec4<bool>(-651f == global0.c.e.x, !global0.c.d, 1094f == var_1.x, true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.e.x) - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(sign(-186f))));
    var var_4 = global0.c.c;
    var var_5 = var_2.a.a;
    var var_6 = func_4(vec2<u32>(~global0.c.b, _wgslsmith_dot_vec3_u32((vec3<u32>(50266u, global0.c.a, global0.c.b) | vec3<u32>(u_input.c, var_2.a.a, 1u)) ^ firstTrailingBit(vec3<u32>(43590u, global0.c.a, var_2.a.b)), reverseBits(select(vec3<u32>(global0.c.b, var_2.a.a, u_input.c), vec3<u32>(1u, 0u, global0.c.a), global0.a))))).a;
    let var_7 = abs(var_2.a.a);
    var_5 = min(var_2.a.a, var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(75592u, u_input.a.xz, ~(-21816i), reverseBits(min(u_input.a, vec4<i32>(61129i, 2147483647i, -3319i, var_6.c)) << (~(~vec4<u32>(55667u, global0.c.b, 1u, global0.c.a)) % vec4<u32>(32u))), ~u_input.b.ww);
}

