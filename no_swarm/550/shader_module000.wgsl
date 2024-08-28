struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(1u, 48244u, 692f), Struct_3(15811u, 1u, -809f), Struct_3(0u, 0u, -673f), Struct_3(30958u, 0u, -1467f), Struct_3(4294967295u, 635u, -301f), Struct_3(44158u, 1u, -602f), Struct_3(0u, 72805u, 1995f), Struct_3(0u, 4294967295u, 281f), Struct_3(15342u, 128670u, -1115f), Struct_3(1u, 41267u, 292f), Struct_3(4294967295u, 10098u, 1038f), Struct_3(10333u, 0u, 501f), Struct_3(86339u, 7788u, -1025f), Struct_3(27795u, 1u, 894f), Struct_3(43500u, 10622u, 792f), Struct_3(1u, 49033u, -1023f), Struct_3(17634u, 44921u, -984f), Struct_3(36875u, 1u, 138f), Struct_3(4294967295u, 1u, 320f), Struct_3(16310u, 115696u, -1183f), Struct_3(0u, 1u, 667f), Struct_3(37628u, 4294967295u, 918f), Struct_3(27673u, 37953u, -1436f));

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(1u, 4294967295u, 79556u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 1u, 1u));

var<private> global2: array<u32, 32>;

var<private> global3: array<i32, 6> = array<i32, 6>(-145i, -1i, 1i, 2147483647i, -1i, 66151i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~8804u, 23u)];
    global3 = array<i32, 6>();
    let var_1 = Struct_1(~abs(_wgslsmith_mod_vec3_i32(u_input.c, max(u_input.d.ywx, vec3<i32>(-2147483647i, 1i, 2147483647i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1298f, var_0.c, _wgslsmith_f_op_f32(var_0.c - var_0.c), -1184f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(698f, 1187f, 996f, -690f) * vec4<f32>(var_0.c, var_0.c, var_0.c, -763f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1478f, -2122f, 109f, -1109f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -134f, -1691f, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, -366f))))), _wgslsmith_f_op_f32(abs(var_0.c)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)] << (7589u % 32u), 32u)]);
    global1 = array<vec3<u32>, 4>();
    var var_2 = ~select(global2[_wgslsmith_index_u32(max(var_0.b, max(_wgslsmith_add_u32(1182u, u_input.a), _wgslsmith_div_u32(26310u, 4294967295u))), 32u)], ~12266u, true);
    return vec3<i32>(arg_0.x, var_1.a.x, arg_0.x | countOneBits(-arg_0.x));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = all(vec4<bool>(false, !(u_input.a != u_input.a) && false, !(!(3291f > arg_0.c)), true));
    var var_1 = vec2<i32>(~(-1i), _wgslsmith_dot_vec3_i32(func_3(vec2<i32>(-21347i, global3[_wgslsmith_index_u32(~111281u, 6u)])), ~(-u_input.d.wxw & vec3<i32>(0i, 2147483647i, arg_3))));
    let var_2 = Struct_1(~vec3<i32>(441i, 2147483647i ^ reverseBits(var_1.x), u_input.d.x), _wgslsmith_f_op_vec4_f32(arg_2 + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-491f, arg_0.c, 589f, arg_1), vec4<f32>(658f, -108f, arg_0.c, arg_2.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -870f), 1u);
    var_1 = var_2.a.xy;
    let var_3 = Struct_3(~max(_wgslsmith_div_u32(abs(6078u), arg_0.a), global2[_wgslsmith_index_u32(~u_input.b << (~u_input.b % 32u), 32u)]), ~(global2[_wgslsmith_index_u32(~33336u, 32u)] << (~(~1u) % 32u)), -603f);
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(abs(u_input.b & u_input.a), 32u)], 65757u, select(23576u, ~arg_2.d, true), max(4294967295u, 1u >> (0u % 32u))), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8100u, 32u)], 32u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 32u)] >> (arg_2.d % 32u), 32u)], ~arg_0.b.d), select(firstLeadingBit(vec4<u32>(u_input.b, 45021u, 27897u, arg_0.a.d)), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(82057u, 32u)], 33713u, arg_0.a.d, arg_2.d), vec4<u32>(57546u, 25012u, 8984u, 90503u)), vec4<bool>(true, true, true, true)))) ^ (abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, arg_2.d, 2112u, 4294967295u), vec4<u32>(16919u, u_input.b, global2[_wgslsmith_index_u32(12239u, 32u)], arg_2.d))) ^ vec4<u32>(~arg_0.b.d, ~32978u | _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(arg_0.a.d, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), arg_2.d, abs(global2[_wgslsmith_index_u32(arg_2.d, 32u)] ^ 29103u)));
    let var_2 = u_input.b;
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(countOneBits(~arg_2.d), 1u), 23u)];
    let var_4 = global1[_wgslsmith_index_u32(0u, 4u)];
    return func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, countOneBits(arg_0.a.d)), 23u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1412f, 1f))))), _wgslsmith_f_op_vec4_f32(ceil(arg_2.b)), i32(-1i) * -2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = select(u_input.d | ((~u_input.d >> (~arg_3 % vec4<u32>(32u))) | -(~u_input.d)), select(min(~vec4<i32>(0i, -1i, -57262i, global3[_wgslsmith_index_u32(4294967295u, 6u)]) | vec4<i32>(arg_0.b.a.x, -16139i, arg_0.a.a.x, -1i), u_input.d), (~u_input.d & _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(-2147483647i, arg_0.a.a.x, u_input.d.x, u_input.d.x))) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 73677i, global3[_wgslsmith_index_u32(34931u, 6u)], u_input.c.x), u_input.d), !(!(!vec4<bool>(arg_1, arg_1, false, arg_1)))), select(!(!(!vec4<bool>(false, false, arg_1, false))), vec4<bool>(true, arg_1 || true, select(arg_1, !arg_1, true), true), true));
    global3 = array<i32, 6>();
    let var_1 = func_1(arg_2, var_0.yy, arg_2.a);
    var var_2 = arg_2.b.d;
    var var_3 = arg_0.b;
    return vec4<u32>(23142u, 4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(29109u >> (arg_0.b.d % 32u), 4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(~75282u, ~u_input.a), firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_3, arg_3)))), 32u)], 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(abs(~abs(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 32u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 32u)], 1u))), firstTrailingBit(func_4(Struct_2(Struct_1(u_input.c, vec4<f32>(1012f, 771f, -289f, -1146f), 2163f, 0u), func_1(Struct_2(Struct_1(vec3<i32>(0i, -1i, global3[_wgslsmith_index_u32(8393u, 6u)]), vec4<f32>(-469f, 977f, 106f, -953f), 287f, 1u), Struct_1(u_input.c, vec4<f32>(1944f, 244f, 330f, 1847f), 523f, 0u)), u_input.c.zz, Struct_1(vec3<i32>(2147483647i, -1i, global3[_wgslsmith_index_u32(60397u, 6u)]), vec4<f32>(-1517f, -102f, 676f, 118f), 528f, u_input.a))), true, Struct_2(func_1(Struct_2(Struct_1(u_input.c, vec4<f32>(-392f, -348f, 101f, -745f), 617f, 1u), Struct_1(u_input.d.xzx, vec4<f32>(-382f, -3141f, -2054f, -388f), -1000f, 1u)), u_input.d.ww, Struct_1(vec3<i32>(u_input.c.x, -27321i, u_input.c.x), vec4<f32>(-1741f, 1144f, 1870f, 137f), 440f, u_input.b)), func_1(Struct_2(Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 39710i, -65285i), vec4<f32>(860f, 1592f, -1097f, 626f), 1262f, u_input.b), Struct_1(u_input.c, vec4<f32>(1000f, 200f, -266f, 2189f), 170f, u_input.a)), u_input.c.xz, Struct_1(vec3<i32>(u_input.c.x, 38419i, u_input.c.x), vec4<f32>(-1496f, 525f, 742f, 1370f), -1325f, 35297u))), countOneBits(~vec4<u32>(4294967295u, 13975u, 0u, 0u)))), func_4(Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1477f, 751f, 304f, -1000f), vec4<f32>(-765f, 771f, -258f, -2972f))), 633f, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 35914u, global2[_wgslsmith_index_u32(u_input.b, 32u)]), global1[_wgslsmith_index_u32(1u, 4u)])), func_2(Struct_3(global2[_wgslsmith_index_u32(1u, 32u)], 0u, 1000f), 534f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(740f, -2059f, 1657f, -1219f))), -1i)), true, Struct_2(func_2(Struct_3(54028u, 6226u, 1214f), _wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-612f, 2240f, -659f, 948f), vec4<f32>(1000f, 447f, -1316f, 1359f))), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(116598u, 6u)], 1i)), Struct_1(u_input.d.zwx << (vec3<u32>(u_input.b, 4084u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, 686f, -456f, 1011f)), _wgslsmith_f_op_f32(f32(-1f) * -1030f), ~u_input.a)), vec4<u32>(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 32u)], 32u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], 1u, 60414u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 4u)]), ~_wgslsmith_mod_u32(1u, 67246u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, global2[_wgslsmith_index_u32(75057u, 32u)]), 32u)], 1u), 32u)], 32u)])));
    global3 = array<i32, 6>();
    var var_1 = Struct_1(u_input.d.xxz, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(528f, 416f, -411f, 908f), vec4<f32>(270f, -170f, -1177f, -757f)))))))), -1816f, _wgslsmith_add_u32(1624u, var_0.x) >> (~68533u % 32u));
    global3 = array<i32, 6>();
    var var_2 = Struct_2(func_1(Struct_2(func_2(global0[_wgslsmith_index_u32(46452u, 23u)], _wgslsmith_f_op_f32(sign(var_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 1019f, var_1.b.x, -2216f) * vec4<f32>(var_1.c, var_1.b.x, -1000f, 1026f)), 0i), func_1(Struct_2(Struct_1(u_input.c, vec4<f32>(var_1.c, var_1.b.x, var_1.c, var_1.b.x), -1102f, 4294967295u), Struct_1(var_1.a, var_1.b, -857f, var_0.x)), u_input.d.wy, Struct_1(u_input.d.www, var_1.b, var_1.b.x, var_0.x))), vec2<i32>(-1i, _wgslsmith_mod_i32(-26307i, _wgslsmith_sub_i32(-41954i, global3[_wgslsmith_index_u32(20504u, 6u)]))), func_2(global0[_wgslsmith_index_u32(var_0.x, 23u)], var_1.c, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -515f, var_1.b.x, var_1.b.x), vec4<f32>(1059f, var_1.c, var_1.c, var_1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(417f, -1348f, var_1.c, -842f) * vec4<f32>(var_1.b.x, -1330f, -784f, 346f))), u_input.c.x >> (1u % 32u))), Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, -712f, var_1.b.x, _wgslsmith_f_op_f32(-1739f + -1665f)))), _wgslsmith_f_op_f32(round(-1061f)), ~_wgslsmith_dot_vec4_u32(var_0, ~var_0)));
    var var_3 = _wgslsmith_mult_i32(~u_input.d.x, global3[_wgslsmith_index_u32(u_input.a, 6u)]);
    global0 = array<Struct_3, 23>();
    let var_4 = _wgslsmith_sub_i32(var_1.a.x, countOneBits(func_3(var_1.a.zx).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.x, ~_wgslsmith_clamp_i32(-var_1.a.x, global3[_wgslsmith_index_u32(45523u, 6u)], -var_2.a.a.x) ^ ~0i, vec3<f32>(var_2.b.c, _wgslsmith_f_op_f32(select(var_2.a.c, var_1.b.x, all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)))), _wgslsmith_f_op_f32(-var_1.c)));
}

