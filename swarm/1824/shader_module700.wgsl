struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1090f, -1000f, 138f), vec3<f32>(-1101f, -1149f, 1157f), vec3<f32>(-686f, -2606f, -1097f), vec3<f32>(-1000f, 852f, -1000f), vec3<f32>(1000f, 1413f, 154f), vec3<f32>(-2105f, -1279f, -1057f), vec3<f32>(532f, -242f, -1132f), vec3<f32>(-281f, 1788f, -207f), vec3<f32>(-919f, -111f, -1944f), vec3<f32>(-1547f, 301f, 664f), vec3<f32>(-177f, -883f, -2038f), vec3<f32>(506f, -1975f, 1000f), vec3<f32>(221f, 1144f, 444f), vec3<f32>(712f, 117f, 387f), vec3<f32>(-491f, -1037f, 1745f), vec3<f32>(-1000f, 1317f, -1322f), vec3<f32>(-125f, -1021f, -387f), vec3<f32>(818f, -1765f, -883f), vec3<f32>(1188f, -112f, -929f), vec3<f32>(-256f, 742f, -395f), vec3<f32>(1000f, 1291f, -1084f), vec3<f32>(500f, 286f, -598f), vec3<f32>(-608f, 828f, -1172f), vec3<f32>(-627f, -1402f, -1632f), vec3<f32>(-671f, 745f, 1360f), vec3<f32>(-582f, 1000f, 1187f), vec3<f32>(-1592f, -262f, 1033f), vec3<f32>(-1133f, 778f, 469f));

var<private> global1: array<f32, 29> = array<f32, 29>(196f, 245f, 795f, -1000f, 329f, 1055f, -1528f, 340f, -187f, 1003f, 1000f, -1198f, -917f, 822f, -1000f, -670f, -1032f, -600f, -265f, 428f, -311f, 307f, 1514f, -2476f, -977f, 1446f, -341f, -129f, -118f);

var<private> global2: array<Struct_2, 11>;

var<private> global3: Struct_4;

var<private> global4: u32 = 12782u;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool, arg_3: Struct_5) -> i32 {
    var var_0 = Struct_5(countOneBits(~_wgslsmith_mult_i32(-1i, -1i)), vec2<u32>(arg_3.b.x, ~reverseBits(~0u)), arg_3.c);
    global3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(149f)) * _wgslsmith_f_op_f32(f32(-1f) * -292f)) + 183f)), 1194f);
    let var_1 = vec4<f32>(343f, _wgslsmith_f_op_f32(-1300f * 123f), arg_3.c, arg_3.c);
    let var_2 = vec2<u32>(~4294967295u, ~u_input.a.x | arg_3.b.x);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 29u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1386f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1362f)) * _wgslsmith_f_op_f32(f32(-1f) * -123f)))));
    return reverseBits(u_input.b.x) | 2147483647i;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> vec4<i32> {
    global3 = Struct_4(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(sign(375f)))), -220f);
    var var_0 = Struct_5(~_wgslsmith_dot_vec3_i32(u_input.b, firstTrailingBit(vec3<i32>(-7923i, u_input.d, -20539i))) & _wgslsmith_sub_i32(-1i, firstLeadingBit(-27411i)), vec2<u32>(_wgslsmith_clamp_u32(arg_1, arg_1, 4294967295u << (_wgslsmith_sub_u32(arg_2.x, 4294967295u) % 32u)), _wgslsmith_mult_u32(arg_1, 4294967295u)), global3.b);
    var var_1 = ~arg_2.yzz;
    let var_2 = 38141u;
    var var_3 = -335f;
    return select(_wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(7803i, arg_0, var_0.a, -7796i), vec4<i32>(2147483647i, -2147483647i, 12828i, 26325i)), ~vec4<i32>(0i, arg_0, u_input.b.x, var_0.a) & vec4<i32>(1i, 38471i, var_0.a, -1i)), vec4<i32>(arg_0, func_3(Struct_1(var_2, 65420u, vec3<bool>(true, true, false)), Struct_5(2147483647i, vec2<u32>(arg_1, var_2), var_0.c), any(vec2<bool>(false, false)), Struct_5(u_input.d, arg_2.xw, 1013f)), ~0i, var_0.a), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))) & reverseBits(vec4<i32>(~(-u_input.b.x), -arg_0, -2147483647i, reverseBits(-19308i)));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = vec2<i32>(-1i, abs(_wgslsmith_add_i32(u_input.d | 1i, min(0i, 553i))) >> (30216u % 32u));
    global2 = array<Struct_2, 11>();
    global1 = array<f32, 29>();
    var var_1 = arg_0.b.x;
    let var_2 = any(!arg_1.zz);
    return arg_1;
}

fn func_1() -> f32 {
    let var_0 = 58818i;
    var var_1 = u_input.b.xy;
    global1 = array<f32, 29>();
    var var_2 = Struct_2(Struct_1(0u, ~reverseBits(42217u | u_input.c), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), func_4(Struct_5(var_0, vec2<u32>(u_input.a.x, 1u), 1336f), vec3<bool>(true, true, true), func_2(var_1.x, u_input.a.x, vec4<u32>(u_input.c, 1u, 9852u, 93248u))), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~54529u, max(u_input.c, u_input.c)), u_input.a), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.e, u_input.c, 12177u)), select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.e, u_input.a.x), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), Struct_1(1u, reverseBits(firstTrailingBit(u_input.c)) ^ firstLeadingBit(u_input.a.x), !vec3<bool>(true, any(vec3<bool>(false, false, true)), true)), firstTrailingBit(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, -2147483647i, u_input.d, u_input.d), -vec4<i32>(32180i, var_0, 21885i, var_1.x), -vec4<i32>(-40516i, var_0, u_input.d, 1i))), u_input.e);
    global3 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, ~45578u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, 37938u, 4294967295u), vec4<u32>(37849u, u_input.c, u_input.e, var_2.c.b))), ~(~vec4<u32>(var_2.a.a, 1u, 35922u, 71340u))), select(~vec4<u32>(33374u, u_input.e, 47493u, u_input.a.x), select(~vec4<u32>(1u, 1u, var_2.b.b, 7528u), vec4<u32>(31505u, 4294967295u, 35678u, 75807u) ^ vec4<u32>(1u, var_2.e, 1u, u_input.c), !vec4<bool>(var_2.b.c.x, var_2.b.c.x, var_2.a.c.x, false)), true)), 29u)], _wgslsmith_f_op_f32(exp2(global3.a)));
    return _wgslsmith_div_f32(-426f, -454f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(62983u, 70510u), 29u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32((u_input.a.x << (4735u % 32u)) & _wgslsmith_div_u32(u_input.e, ~u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.c, 0u, _wgslsmith_sub_u32(91455u, 1u)), vec4<u32>(u_input.e, u_input.e, ~u_input.a.x, 6350u >> (u_input.c % 32u)))), 29u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, var_1.b) * vec2<f32>(-382f, _wgslsmith_f_op_f32(func_1())));
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.e), _wgslsmith_sub_u32(~reverseBits(u_input.c), 1u), select(~28345u, ~(~min(u_input.e, u_input.a.x)), false));
    var var_4 = abs(reverseBits(min(min(vec4<u32>(u_input.c, var_3.x, 4294967295u, 0u), vec4<u32>(u_input.a.x, 0u, 4294967295u, 25973u)), vec4<u32>(var_3.x, var_3.x, 67191u, 0u)) >> (vec4<u32>(var_3.x, ~var_3.x, min(16136u, u_input.c), 0u) % vec4<u32>(32u))));
    global0 = array<vec3<f32>, 28>();
    var_1 = Struct_4(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 18157u, 87525u)), var_4.zxz), 29u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), global3.a, ~(select(firstTrailingBit(vec4<u32>(4294967295u, 43911u, var_4.x, var_3.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x, var_3.x, 54427u, 101358u), vec4<u32>(u_input.a.x, 42796u, 15219u, 25869u)), true) >> (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, 61034u, 1u, 76630u)), vec4<u32>(var_3.x, var_3.x, 86194u, u_input.a.x)) % vec4<u32>(32u))));
}

