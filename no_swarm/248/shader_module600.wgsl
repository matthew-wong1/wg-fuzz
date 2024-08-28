struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<f32>(-920f, 564f), Struct_1(i32(-2147483648), vec3<bool>(false, false, true), vec3<f32>(1606f, 821f, 1000f)), 73693u, 0i), Struct_2(vec2<f32>(-542f, -299f), Struct_1(1i, vec3<bool>(false, true, true), vec3<f32>(835f, -171f, 254f)), 0u, 1i), Struct_2(vec2<f32>(1000f, 1000f), Struct_1(-2827i, vec3<bool>(false, false, true), vec3<f32>(686f, 183f, -357f)), 7212u, -1i), Struct_2(vec2<f32>(106f, -1179f), Struct_1(2147483647i, vec3<bool>(false, true, false), vec3<f32>(1642f, 1000f, -171f)), 28888u, 24809i), Struct_2(vec2<f32>(-252f, 300f), Struct_1(-11985i, vec3<bool>(true, false, false), vec3<f32>(711f, -804f, 194f)), 15788u, 0i), Struct_2(vec2<f32>(-158f, 1040f), Struct_1(-14349i, vec3<bool>(true, false, false), vec3<f32>(-2846f, 1000f, 1000f)), 22442u, -21618i), Struct_2(vec2<f32>(1337f, 882f), Struct_1(18602i, vec3<bool>(true, false, false), vec3<f32>(1076f, -1595f, -2185f)), 4294967295u, -7863i), Struct_2(vec2<f32>(-271f, -105f), Struct_1(0i, vec3<bool>(false, false, true), vec3<f32>(560f, 1657f, 376f)), 48108u, -1i), Struct_2(vec2<f32>(2734f, 348f), Struct_1(-17795i, vec3<bool>(false, false, false), vec3<f32>(195f, -1773f, -897f)), 30934u, 22573i), Struct_2(vec2<f32>(-1219f, -112f), Struct_1(0i, vec3<bool>(true, false, false), vec3<f32>(1439f, 179f, -398f)), 40168u, -1i), Struct_2(vec2<f32>(-2719f, 307f), Struct_1(17377i, vec3<bool>(true, false, true), vec3<f32>(-1360f, 1000f, -461f)), 7780u, 34566i), Struct_2(vec2<f32>(226f, -967f), Struct_1(1i, vec3<bool>(false, true, false), vec3<f32>(509f, 120f, -1401f)), 1u, 38926i), Struct_2(vec2<f32>(1000f, -792f), Struct_1(0i, vec3<bool>(true, false, false), vec3<f32>(-2471f, 1708f, -1315f)), 1038u, -23048i), Struct_2(vec2<f32>(-1120f, 964f), Struct_1(1i, vec3<bool>(false, false, false), vec3<f32>(-1834f, 767f, 214f)), 80466u, -33789i), Struct_2(vec2<f32>(-714f, 491f), Struct_1(-7692i, vec3<bool>(true, false, true), vec3<f32>(-1751f, -383f, -358f)), 47520u, -1305i), Struct_2(vec2<f32>(259f, 149f), Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec3<f32>(-692f, 690f, -370f)), 0u, i32(-2147483648)));

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<f32>(-1024f, 1485f), Struct_1(33702i, vec3<bool>(false, false, false), vec3<f32>(1470f, -1000f, 1987f)), 38226u, -27301i), Struct_2(vec2<f32>(-1801f, 2004f), Struct_1(-1i, vec3<bool>(false, true, true), vec3<f32>(435f, -393f, -1000f)), 0u, -21109i), Struct_2(vec2<f32>(902f, -1682f), Struct_1(2147483647i, vec3<bool>(false, false, true), vec3<f32>(124f, -134f, -165f)), 1u, 42964i), Struct_2(vec2<f32>(-1000f, 1092f), Struct_1(2147483647i, vec3<bool>(false, true, true), vec3<f32>(726f, 633f, 519f)), 1u, 1i), Struct_2(vec2<f32>(-1000f, 1620f), Struct_1(2147483647i, vec3<bool>(false, false, false), vec3<f32>(467f, -779f, -2020f)), 1u, 2147483647i), Struct_2(vec2<f32>(-2226f, 895f), Struct_1(65131i, vec3<bool>(true, true, true), vec3<f32>(-1949f, -1010f, 944f)), 72550u, -21105i), Struct_2(vec2<f32>(-442f, 1365f), Struct_1(2147483647i, vec3<bool>(false, true, true), vec3<f32>(353f, -834f, 1340f)), 4294967295u, -1i), Struct_2(vec2<f32>(451f, 887f), Struct_1(-35801i, vec3<bool>(false, false, false), vec3<f32>(-357f, -853f, 295f)), 0u, 19611i), Struct_2(vec2<f32>(-1525f, -2069f), Struct_1(-1458i, vec3<bool>(false, true, false), vec3<f32>(-615f, 239f, -1222f)), 0u, 33036i), Struct_2(vec2<f32>(789f, 382f), Struct_1(1i, vec3<bool>(true, true, true), vec3<f32>(-864f, 871f, -300f)), 34745u, -31455i));

var<private> global4: array<bool, 9> = array<bool, 9>(false, true, false, true, true, true, true, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = 30752u;
    var_0 = 4294967295u;
    var var_1 = true;
    var_1 = true;
    let var_2 = Struct_1(18947i, vec3<bool>(true, false, any(vec3<bool>(arg_3.x, any(vec3<bool>(true, arg_3.x, true)), global4[_wgslsmith_index_u32(arg_2.a.x, 9u)]))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1126f), -324f, -1330f)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * _wgslsmith_f_op_f32(var_2.c.x * var_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_div_f32(var_2.c.x, var_2.c.x)), _wgslsmith_div_f32(588f, _wgslsmith_f_op_f32(round(var_2.c.x)))) + -976f));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_3(~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(11405u, arg_0.c)), ~vec2<u32>(0u, 37703u)), _wgslsmith_dot_vec2_u32(~u_input.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(4227u, arg_0.c), u_input.b, vec2<u32>(u_input.c.x, u_input.c.x)))));
    global3 = array<Struct_2, 10>();
    global3 = array<Struct_2, 10>();
    let var_1 = vec4<i32>(2147483647i, i32(-1i) * -(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -40353i), vec2<i32>(8526i, arg_0.d))), -(i32(-1i) * -34662i), 34956i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + -969f), 192f, _wgslsmith_f_op_f32(floor(-975f)))))));
    return -vec4<i32>(abs(-arg_2) >> (~0u % 32u), min(arg_2, abs(16176i)), -31962i ^ global2.x, ~global2.x);
}

fn func_2(arg_0: Struct_5, arg_1: i32) -> vec4<f32> {
    global1 = array<Struct_2, 16>();
    var var_0 = min(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, -2147483647i), select(vec2<i32>(-2147483647i, -33157i) << (u_input.d.xx % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, global2.x), vec2<i32>(-31952i, -1455i)), !vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 9u)]))), vec2<i32>(min(1i, countOneBits(arg_0.a)), 0i));
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_3(13027i, 11936u, Struct_3(vec2<u32>(u_input.e, u_input.a)), vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.e, 9u)]))), Struct_1(0i, vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.e, 9u)], global4[_wgslsmith_index_u32(u_input.d.x, 9u)]), vec3<f32>(-1799f, 732f, -982f)), u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, global2.x), vec3<i32>(-492i, -1565i, -18669i))), _wgslsmith_f_op_f32(-1046f * _wgslsmith_f_op_f32(-1675f - -925f)), ~select(0i, var_0.x, global4[_wgslsmith_index_u32(u_input.a, 9u)]), Struct_1(reverseBits(arg_0.a), vec3<bool>(global4[_wgslsmith_index_u32(12383u, 9u)], false, global4[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-479f, 825f, 810f), vec3<f32>(-1501f, 349f, -563f))))), vec4<i32>(var_0.x, i32(-1i) * -arg_0.a, _wgslsmith_sub_i32(~var_0.x, arg_1), var_0.x), countOneBits(vec4<i32>(firstLeadingBit(arg_0.a), arg_0.a << (1u % 32u), countOneBits(global2.x), reverseBits(arg_0.a)))), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, arg_0.a, arg_1, -31494i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-63051i, 0i, arg_0.a, arg_1), vec4<i32>(arg_0.a, 2147483647i, arg_1, var_0.x), vec4<i32>(arg_1, var_0.x, global2.x, arg_1)), countOneBits(vec4<i32>(-28850i, arg_1, 0i, arg_0.a))));
    global0 = ~1u;
    let var_2 = global3[_wgslsmith_index_u32(abs(u_input.a), 10u)];
    return vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_2.b.c.x), 397f, _wgslsmith_f_op_f32(floor(1353f)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    global2 = -select(~func_4(global1[_wgslsmith_index_u32(u_input.a >> (1u % 32u), 16u)], arg_1.x, global2.x, Struct_1(-14542i, vec3<bool>(false, global4[_wgslsmith_index_u32(15746u, 9u)], global4[_wgslsmith_index_u32(22371u, 9u)]), arg_1.wxw)).wy, ~firstTrailingBit(vec2<i32>(1i, 1i)), false);
    global0 = 1u;
    let var_0 = vec4<i32>(-11973i, -2147483647i, 5647i, -global2.x);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstLeadingBit(~(~4294967295u)), u_input.e), u_input.a), 10u)];
    global2 = var_0.xw;
    return global1[_wgslsmith_index_u32(~(~4294967295u), 16u)];
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    global1 = array<Struct_2, 16>();
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, arg_2))))))))), _wgslsmith_f_op_vec4_f32(func_2(Struct_5(1i), _wgslsmith_mult_i32(arg_3.x, i32(-1i) * -2147483647i))), arg_2);
    let var_1 = ~(~(~65443u));
    let var_2 = vec4<bool>(all(vec4<bool>(false, true, !(arg_1.a || false), !(var_0.a.x > arg_2))), false, arg_1.a, true & var_0.b.b.x);
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.b.c.yy))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -746f), -293f)), -510f, -551f, _wgslsmith_f_op_f32(-1681f + var_0.b.c.x)), arg_2);
    return 457f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.e, u_input.b.x, u_input.a, u_input.e), u_input.d), u_input.d), u_input.d.x >> (u_input.b.x % 32u)), u_input.d.xxz, select(select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 9u)], global4[_wgslsmith_index_u32(u_input.a, 9u)], global4[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.c.x, 9u)]), false), select(vec3<bool>(true, true, true), select(vec3<bool>(global4[_wgslsmith_index_u32(48065u, 9u)], true, true), vec3<bool>(false, false, global4[_wgslsmith_index_u32(u_input.e, 9u)]), global4[_wgslsmith_index_u32(u_input.b.x, 9u)]), true), !select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.e, 9u)], global4[_wgslsmith_index_u32(15280u, 9u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 9u)], global4[_wgslsmith_index_u32(u_input.c.x, 9u)]), vec3<bool>(global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(u_input.b.x, 9u)], false)))) << (_wgslsmith_div_vec3_u32(min(~vec3<u32>(u_input.d.x, 0u, u_input.c.x), countOneBits(u_input.d.wxy)) ^ u_input.d.xyy, vec3<u32>(countOneBits(25615u & u_input.e), 48404u, 27446u)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_div_u32(1u, 28684u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) * _wgslsmith_f_op_f32(f32(-1f) * -577f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-566f * 469f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(408f)) * _wgslsmith_f_op_f32(250f * -262f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1666f - -784f))), 505f))), 410f);
    var var_3 = _wgslsmith_f_op_f32(round(-227f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -751f)));
    global1 = array<Struct_2, 16>();
    var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(vec2<u32>(var_0.x, 4294967295u)), Struct_4(global4[_wgslsmith_index_u32(u_input.e, 9u)], Struct_3(vec2<u32>(var_0.x, u_input.e))), var_2.x, reverseBits(vec4<i32>(-39564i, global2.x, global2.x, global2.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_3(vec2<u32>(u_input.d.x, u_input.b.x)), Struct_4(false, Struct_3(vec2<u32>(0u, 1u))), 541f, vec4<i32>(-1i, 17012i, 2147483647i, 1i))), _wgslsmith_f_op_f32(-var_2.x))))))));
    var var_4 = ~var_0 << (~u_input.d.wwy % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-692f - 1081f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -267f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -736f)))), var_2.x));
}

