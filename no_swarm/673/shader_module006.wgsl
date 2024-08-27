struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 973u;

var<private> global1: Struct_3 = Struct_3(false);

var<private> global2: array<i32, 13>;

var<private> global3: Struct_1 = Struct_1(true, 364f);

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(false, 1401f), 1i, 12208u, Struct_1(true, 2693f), vec4<f32>(-281f, -453f, -360f, 1084f)), Struct_2(Struct_1(true, -1000f), -2495i, 59243u, Struct_1(false, -1490f), vec4<f32>(1321f, -1094f, 888f, -619f)), Struct_2(Struct_1(true, 1371f), 8392i, 0u, Struct_1(true, 2373f), vec4<f32>(-1337f, 519f, -298f, 239f)), Struct_2(Struct_1(true, -2022f), 0i, 55432u, Struct_1(true, 194f), vec4<f32>(1405f, -474f, 715f, -938f)), Struct_2(Struct_1(false, 105f), 2147483647i, 1u, Struct_1(false, 952f), vec4<f32>(549f, 1058f, 1000f, 240f)), Struct_2(Struct_1(false, 972f), 22345i, 55245u, Struct_1(false, -1000f), vec4<f32>(-1638f, -128f, 1682f, 304f)), Struct_2(Struct_1(false, 2496f), 11725i, 1u, Struct_1(true, -1000f), vec4<f32>(-1000f, -800f, -312f, 1000f)), Struct_2(Struct_1(false, 1145f), -50137i, 0u, Struct_1(false, 172f), vec4<f32>(-1000f, 1336f, -994f, -841f)), Struct_2(Struct_1(false, 1566f), 24664i, 38435u, Struct_1(true, 681f), vec4<f32>(-248f, 883f, -1168f, 1924f)), Struct_2(Struct_1(false, -696f), -1i, 1u, Struct_1(false, 1719f), vec4<f32>(-159f, -2140f, 254f, -1000f)), Struct_2(Struct_1(true, 1000f), 15138i, 1u, Struct_1(false, -168f), vec4<f32>(-612f, -981f, -396f, 940f)), Struct_2(Struct_1(false, 614f), 1i, 58675u, Struct_1(false, 791f), vec4<f32>(1669f, 1556f, -736f, -1000f)), Struct_2(Struct_1(true, 1180f), 1i, 0u, Struct_1(true, 354f), vec4<f32>(-412f, 1000f, 1000f, -1038f)), Struct_2(Struct_1(false, 1182f), -35892i, 0u, Struct_1(true, -1238f), vec4<f32>(599f, 1540f, 945f, -662f)), Struct_2(Struct_1(false, 860f), 0i, 40860u, Struct_1(false, 595f), vec4<f32>(-1971f, -139f, -1000f, 1000f)), Struct_2(Struct_1(false, 380f), 42257i, 4294967295u, Struct_1(true, 1000f), vec4<f32>(1000f, 1000f, -1000f, -711f)), Struct_2(Struct_1(true, -556f), -1i, 2121u, Struct_1(true, -1715f), vec4<f32>(202f, -123f, 363f, 1000f)), Struct_2(Struct_1(true, 1288f), 0i, 13392u, Struct_1(true, -1143f), vec4<f32>(1483f, 183f, 1085f, -112f)), Struct_2(Struct_1(false, -922f), 13674i, 4136u, Struct_1(true, 938f), vec4<f32>(-1397f, -1423f, -394f, -1563f)), Struct_2(Struct_1(true, 807f), 2147483647i, 55807u, Struct_1(true, 1242f), vec4<f32>(-1211f, 888f, 3022f, -573f)), Struct_2(Struct_1(true, -963f), 9201i, 0u, Struct_1(true, 1131f), vec4<f32>(1891f, 288f, 1165f, 1018f)), Struct_2(Struct_1(false, -1402f), -1i, 90667u, Struct_1(false, 1896f), vec4<f32>(-348f, 1548f, 540f, -930f)), Struct_2(Struct_1(true, -261f), 1i, 37063u, Struct_1(false, -1336f), vec4<f32>(204f, -1220f, 587f, 481f)), Struct_2(Struct_1(false, -670f), -1i, 4294967295u, Struct_1(false, 495f), vec4<f32>(1748f, -1508f, 615f, -807f)), Struct_2(Struct_1(true, -1011f), 1i, 5098u, Struct_1(false, 750f), vec4<f32>(-1404f, 439f, -684f, 1414f)), Struct_2(Struct_1(false, -1014f), 2147483647i, 47413u, Struct_1(true, 200f), vec4<f32>(-1328f, 252f, 1404f, -1212f)), Struct_2(Struct_1(true, -1147f), -17956i, 55799u, Struct_1(false, -1000f), vec4<f32>(-1157f, -2159f, 1921f, 1405f)), Struct_2(Struct_1(true, -1514f), 1i, 20461u, Struct_1(true, -1788f), vec4<f32>(793f, -1000f, -2408f, 410f)), Struct_2(Struct_1(true, 1677f), 0i, 14526u, Struct_1(true, 391f), vec4<f32>(153f, -1000f, 528f, -957f)), Struct_2(Struct_1(false, 1000f), i32(-2147483648), 14685u, Struct_1(false, 1000f), vec4<f32>(235f, 1188f, -486f, -407f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = -264f;
    global4 = array<Struct_2, 30>();
    global1 = Struct_3(true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(trunc(-580f)), 1f) - vec3<f32>(_wgslsmith_f_op_f32(-142f + arg_0.b), arg_0.b, arg_0.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-886f, 1140f), _wgslsmith_f_op_f32(-735f * global3.b), global3.b), vec3<f32>(416f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(trunc(381f))), vec3<bool>(select(true, true, false), true & arg_0.a, !arg_0.a)))));
    var var_2 = u_input.b.yz;
    return 1u;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_3(any(vec4<bool>(true, (global3.b != 1086f) && global3.a, !global1.a, arg_2.a)));
    global4 = array<Struct_2, 30>();
    let var_1 = vec4<f32>(-333f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -709f) - _wgslsmith_f_op_f32(575f + global3.b)), _wgslsmith_f_op_f32(-global3.b), -484f);
    let var_2 = vec3<bool>(true, 465f == var_1.x, all(select(select(vec3<bool>(global1.a, global3.a, global3.a), select(vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(true, false, true), global3.a), !var_0.a), vec3<bool>(true, true, all(vec2<bool>(var_0.a, true))), all(!vec4<bool>(true, arg_2.a, true, false)))));
    var var_3 = _wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.b, countOneBits(~u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, ~arg_0, _wgslsmith_mod_u32(74817u, u_input.b.x)), u_input.b), abs(u_input.b)));
    return arg_1.x;
}

fn func_2() -> u32 {
    global4 = array<Struct_2, 30>();
    global1 = Struct_3(!any(select(!vec4<bool>(global1.a, global1.a, false, global3.a), select(vec4<bool>(false, global3.a, global3.a, true), vec4<bool>(true, false, false, false), vec4<bool>(true, global3.a, global3.a, global1.a)), vec4<bool>(global3.a, global3.a, global1.a, false))));
    let var_0 = vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], 1i, abs(func_4(func_3(Struct_1(global1.a, global3.b)) << (~u_input.b.x % 32u), ~(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]) & vec3<i32>(-4403i, global2[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.a)), Struct_3(true))));
    let var_1 = vec2<u32>(~u_input.b.x, abs(u_input.b.x));
    global2 = array<i32, 13>();
    return 0u;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    global3 = Struct_1(global3.a, 304f);
    var var_0 = _wgslsmith_add_u32(min(_wgslsmith_clamp_u32(4971u, u_input.b.x ^ u_input.b.x, _wgslsmith_div_u32(63227u, 23524u)), ~1u), func_2() & 0u) >> (~_wgslsmith_mult_u32(9759u, ~_wgslsmith_clamp_u32(arg_2.x, 4294967295u, 17467u)) % 32u);
    var var_1 = vec3<i32>(u_input.a, 17195i, ~(-14848i)) & max(vec3<i32>(-21750i, -1i, ~0i), max(_wgslsmith_add_vec3_i32(vec3<i32>(-21513i, u_input.a, -1i), vec3<i32>(u_input.c, u_input.a, global2[_wgslsmith_index_u32(1u, 13u)]) & vec3<i32>(u_input.c, 1i, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], 32027i, u_input.c) & vec3<i32>(1i, -2147483647i, global2[_wgslsmith_index_u32(44526u, 13u)]), max(vec3<i32>(-7881i, -2147483647i, 9726i), vec3<i32>(global2[_wgslsmith_index_u32(0u, 13u)], u_input.c, 8260i)))));
    global3 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b + global3.b))));
    return Struct_1(global1.a, 1195f);
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = vec4<f32>(371f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1349f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))))), 563f, arg_0.b);
    global2 = array<i32, 13>();
    let var_1 = Struct_3(!global3.a);
    let var_2 = 0u;
    var var_3 = vec4<bool>(!(!var_1.a && false), arg_0.a, false, true);
    return vec3<bool>(any(vec2<bool>(-656f >= var_0.x, global3.a)), !var_3.x, global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global3.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(730f, 884f, false))))))));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1479f))));
    var_0 = global3.b;
    let var_1 = vec4<bool>(global1.a, true || any(func_5(func_1(global3.b, -1710f, vec3<u32>(4294967295u, 0u, u_input.b.x)))), global1.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2019f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2026f - global3.b) * _wgslsmith_f_op_f32(360f * global3.b)), _wgslsmith_f_op_f32(833f - -1430f), 927f)), vec4<u32>(~select(min(u_input.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 22415u, u_input.b.x)), true), ~_wgslsmith_mult_u32(u_input.b.x, ~33612u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 24960u) & u_input.b, ~vec3<u32>(3586u, 4912u, u_input.b.x))), ~65590u));
}

