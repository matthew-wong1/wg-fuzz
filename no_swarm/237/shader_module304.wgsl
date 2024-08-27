struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35365u;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<bool>(true, false, false), vec3<f32>(-588f, -214f, -153f), -127f), Struct_2(vec3<bool>(false, true, true), vec3<f32>(1405f, 512f, -2813f), -3041f), Struct_2(vec3<bool>(true, false, true), vec3<f32>(-352f, 679f, -721f), -438f), Struct_2(vec3<bool>(false, true, true), vec3<f32>(1000f, -485f, -1288f), -256f), Struct_2(vec3<bool>(true, true, true), vec3<f32>(1234f, 259f, 1015f), 897f), Struct_2(vec3<bool>(true, true, false), vec3<f32>(1376f, 2385f, -1023f), -770f), Struct_2(vec3<bool>(true, true, false), vec3<f32>(1450f, -299f, 522f), 961f), Struct_2(vec3<bool>(false, true, true), vec3<f32>(1285f, -1107f, 134f), 476f), Struct_2(vec3<bool>(true, true, true), vec3<f32>(-215f, 720f, -1216f), 1341f), Struct_2(vec3<bool>(true, false, false), vec3<f32>(-1018f, 1223f, -1744f), 1255f), Struct_2(vec3<bool>(true, false, false), vec3<f32>(414f, 363f, -566f), -208f), Struct_2(vec3<bool>(true, true, true), vec3<f32>(-907f, -1000f, -213f), -162f), Struct_2(vec3<bool>(false, false, true), vec3<f32>(-773f, -1219f, -470f), 317f), Struct_2(vec3<bool>(false, false, true), vec3<f32>(-441f, 409f, 1067f), -982f), Struct_2(vec3<bool>(false, true, false), vec3<f32>(1685f, -558f, -1489f), 295f), Struct_2(vec3<bool>(true, true, true), vec3<f32>(462f, -1735f, -374f), -1000f));

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<bool>(true, true, true), vec3<f32>(754f, -239f, 1632f), -1352f), Struct_2(vec3<bool>(true, false, true), vec3<f32>(-919f, -279f, 518f), -1017f), Struct_2(vec3<bool>(false, false, true), vec3<f32>(-1871f, 833f, -1000f), -1638f), Struct_2(vec3<bool>(true, true, true), vec3<f32>(600f, -1469f, 1000f), 1591f), Struct_2(vec3<bool>(false, true, false), vec3<f32>(-422f, -1415f, -2635f), 117f), Struct_2(vec3<bool>(true, false, false), vec3<f32>(463f, -1589f, 1363f), 418f), Struct_2(vec3<bool>(false, true, false), vec3<f32>(-729f, 1257f, 1404f), -1117f), Struct_2(vec3<bool>(false, true, true), vec3<f32>(1427f, 876f, -236f), -455f), Struct_2(vec3<bool>(false, true, false), vec3<f32>(495f, -398f, -1445f), -389f), Struct_2(vec3<bool>(false, true, false), vec3<f32>(-1000f, 180f, -474f), 2759f), Struct_2(vec3<bool>(false, false, true), vec3<f32>(-754f, 914f, 261f), -163f), Struct_2(vec3<bool>(false, true, false), vec3<f32>(-1000f, 961f, 1006f), 1106f), Struct_2(vec3<bool>(true, true, true), vec3<f32>(250f, -1724f, 822f), -118f), Struct_2(vec3<bool>(false, false, true), vec3<f32>(1000f, 1000f, 1089f), -1554f), Struct_2(vec3<bool>(false, false, true), vec3<f32>(336f, 786f, -614f), -794f), Struct_2(vec3<bool>(false, false, false), vec3<f32>(-1549f, -1490f, -859f), -914f), Struct_2(vec3<bool>(true, true, false), vec3<f32>(1000f, 123f, -782f), -1861f), Struct_2(vec3<bool>(false, false, true), vec3<f32>(-1352f, 114f, 529f), 692f), Struct_2(vec3<bool>(true, false, false), vec3<f32>(1140f, -1384f, -848f), -750f), Struct_2(vec3<bool>(true, true, false), vec3<f32>(-1509f, -1917f, 1508f), 636f), Struct_2(vec3<bool>(true, false, true), vec3<f32>(-214f, -1689f, -1251f), -2134f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_div_i32(5907i, -52543i);
    var_0 = _wgslsmith_add_i32(-u_input.d.x, min(arg_0.a | -1i, _wgslsmith_mult_i32(-46401i, u_input.d.x)));
    let var_1 = !(!select(!vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, u_input.a.x > 4294967295u, any(vec2<bool>(global2.a.x, global1.x)), true), select(!vec4<bool>(true, false, global1.x, false), select(vec4<bool>(true, false, global2.a.x, false), vec4<bool>(global1.x, false, false, false), false), vec4<bool>(global2.a.x, true, false, global1.x))));
    let var_2 = ~vec3<u32>(~_wgslsmith_mult_u32(u_input.b, u_input.b) & 0u, 0u, ~u_input.a.x);
    var_0 = abs(u_input.d.x);
    return global2.b.x;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(select(global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global2.b)) * vec3<f32>(-947f, global2.c, -568f))), !global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(-1i)))));
    let var_1 = countOneBits(vec3<i32>((17352i >> (u_input.e.x % 32u)) & u_input.d.x, 33739i, (u_input.d.x ^ 12978i) >> (~0u % 32u))) ^ -vec3<i32>((i32(-1i) * -1i) ^ firstTrailingBit(u_input.d.x), ~(-21i), u_input.d.x);
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, global2.b.x), _wgslsmith_div_vec2_f32(global2.b.zx, vec2<f32>(global2.c, var_0.c))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_0.b.xz, global2.b.zz), vec2<f32>(-1317f, global2.c)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.b.x, var_0.b.x, global2.a.x)) - _wgslsmith_f_op_f32(-global2.c)), 1765f)), countOneBits(34808u), var_1);
    var var_3 = Struct_2(!vec3<bool>(!var_0.a.x, select(var_0.c >= var_0.c, all(vec4<bool>(false, true, global2.a.x, global1.x)), !global2.a.x), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_0.c, var_0.b.x) + _wgslsmith_f_op_vec3_f32(max(global2.b, vec3<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(-1184f - -646f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1103f - var_0.c))));
    var var_4 = !(!select(var_3.a, global2.a, select(!var_0.a, global2.a, false)));
    return -1i;
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_4(global2.b.zz, u_input.a.x, abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d.x, 22208i, -2147483647i), vec3<i32>(func_2(), u_input.d.x & u_input.d.x, u_input.d.x << (u_input.a.x % 32u)))));
    global3 = array<Struct_2, 16>();
    global3 = array<Struct_2, 16>();
    global4 = array<Struct_2, 21>();
    var var_1 = select(max(select(reverseBits(u_input.a), firstTrailingBit(u_input.a), select(all(vec2<bool>(false, global2.a.x)), global1.x, true)), ~vec3<u32>(4294967295u, _wgslsmith_add_u32(49176u, var_0.b), var_0.b)), _wgslsmith_sub_vec3_u32(~vec3<u32>(11095u, 0u, ~4294967295u), u_input.a), true);
    return vec2<bool>(true, !global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    var var_0 = func_1(u_input.e);
    let var_1 = _wgslsmith_f_op_f32(327f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(2147483647i)))), global2.b.x)));
    var var_2 = -vec3<i32>(0i, _wgslsmith_div_i32(~(-40662i), u_input.d.x), -u_input.d.x >> (u_input.c % 32u));
    global0 = 74575u;
    var_0 = vec2<bool>(all(global1.zy), var_0.x);
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global2.c, global2.b.x)))))), _wgslsmith_f_op_f32(trunc(var_1))), ~firstTrailingBit(u_input.e.x), vec3<i32>(-(abs(var_2.x) | -1i), var_2.x, _wgslsmith_clamp_i32(~(~2147483647i), u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 11442i, -1i), vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i)))));
    var var_4 = Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_3.a.x)), var_1, -352f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), 309f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_i32(i32(-1i) * -4085i, ~1i) >> (u_input.c % 32u)));
}

