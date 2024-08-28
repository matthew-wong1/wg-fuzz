struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -908f;

var<private> global1: Struct_1 = Struct_1(1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1201f, -899f))) - vec2<f32>(1000f, 323f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-944f, -1836f) + vec2<f32>(1142f, 542f)))), vec2<bool>(true, true))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1339f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1123f + 696f) + _wgslsmith_f_op_f32(605f - -497f)))));
    let var_1 = _wgslsmith_clamp_i32(~(-_wgslsmith_add_i32(-34555i, firstTrailingBit(u_input.b.x))), abs(u_input.b.x), -2147483647i);
    let var_2 = i32(-1i) * -var_1;
    var_0 = Struct_5(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-624f)))), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1740f, -2165f) + var_0.a.x), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-167f * var_0.c)))));
    var var_3 = Struct_1(4294967295u);
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(~0u, var_3.a ^ 4294967295u, var_3.a, 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, 1u, global1.a), vec3<u32>(global1.a, u_input.a, u_input.a)), ~63509u, ~20143u, u_input.a & 3023u)), ~(~max(vec4<u32>(var_3.a, u_input.a, 0u, 0u) << (vec4<u32>(1u, var_3.a, global1.a, global1.a) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, 7390u, global1.a))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_5 {
    let var_0 = Struct_2(Struct_1(func_3() >> (_wgslsmith_add_u32(44934u, 11659u) % 32u)));
    global1 = Struct_1(global1.a);
    let var_1 = abs(~vec2<u32>(abs(2624u), ~var_0.a.a) << (_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, global1.a)), abs(~vec2<u32>(global1.a, u_input.a))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_mod_vec2_u32(var_1, var_1);
    var var_3 = -664f;
    return Struct_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f + 195f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(749f + 682f), _wgslsmith_f_op_f32(f32(-1f) * -325f))) + 1297f)), arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - 938f))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: bool, arg_3: Struct_5) -> vec4<f32> {
    let var_0 = firstTrailingBit(-2147483647i);
    let var_1 = arg_3.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1787f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, 308f)), _wgslsmith_f_op_f32(-312f - 1075f)), arg_1.b))));
    let var_3 = -(~(-select(_wgslsmith_mod_vec3_i32(u_input.b.yyw, vec3<i32>(14187i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), !vec3<bool>(arg_0.b, false, arg_0.b))));
    var var_4 = func_2(!select(vec3<bool>(arg_0.b, arg_0.b, arg_2), !(!vec3<bool>(false, arg_0.b, arg_0.b)), !vec3<bool>(arg_0.b, false, arg_2)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(697f + 217f)))) - arg_1.b), var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1658f - 666f))), arg_3.a.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<bool>(true, any(vec3<bool>(false, true, true)), any(vec2<bool>(true, false)) || true)), Struct_4(vec2<u32>(32383u | arg_1.a.x, arg_2), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(865f, _wgslsmith_f_op_f32(160f + arg_1.b))))), true, Struct_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-2701f, -1141f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(533f, arg_1.b)))))), -3504i < _wgslsmith_dot_vec3_i32(~vec3<i32>(13380i, -9394i, u_input.b.x), max(vec3<i32>(486i, 24466i, u_input.b.x), vec3<i32>(5101i, u_input.b.x, u_input.b.x))), arg_1.b)));
    global1 = Struct_1(4294967295u);
    let var_1 = ~select(vec2<u32>(1444u, _wgslsmith_sub_u32(27911u, ~4294967295u)), vec2<u32>(28046u, global1.a), _wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<bool>(true, true, false)), Struct_4(arg_1.a, 586f), select(false, false, true), func_2(vec3<bool>(false, false, false)))).x >= -978f);
    let var_2 = func_2(vec3<bool>(!func_2(vec3<bool>(true, false, false)).b, !(min(-1i, -17879i) < _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), true));
    global1 = Struct_1(~abs(41455u));
    return ((firstTrailingBit(vec3<u32>(12297u, 33208u, arg_2) & vec3<u32>(arg_0.x, 4294967295u, var_1.x)) & vec3<u32>(~global1.a, u_input.a, global1.a)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, arg_2, 34481u), ~(vec3<u32>(1u, u_input.a, 1u) >> (vec3<u32>(13256u, var_1.x, arg_1.a.x) % vec3<u32>(32u))))) | max(vec3<u32>(~_wgslsmith_sub_u32(arg_1.a.x, var_1.x), ~(~u_input.a), arg_1.a.x), ~(~(vec3<u32>(u_input.a, 1u, 82286u) & vec3<u32>(70087u, arg_1.a.x, var_1.x))));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32) -> Struct_2 {
    return Struct_2(Struct_1(~(~(global1.a >> (39715u % 32u)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_i32(u_input.b.x, -34262i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    var var_2 = 256f;
    let var_3 = Struct_1(u_input.a);
    let var_4 = arg_0.a.x;
    return Struct_1(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-469f, -550f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(172f, -1993f))))), func_5(firstTrailingBit(func_1(vec2<u32>(965u, 4294967295u), Struct_4(vec2<u32>(91930u, global1.a), 142f), 17792u)), _wgslsmith_f_op_f32(step(1654f, 1000f))), reverseBits(~func_1(vec2<u32>(0u, 4294967295u), Struct_4(vec2<u32>(4294967295u, 83602u), -1289f), 4294967295u)), vec2<u32>(_wgslsmith_add_u32(~1061u, _wgslsmith_mult_u32(1u, u_input.a)), 4294967295u)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(453f + _wgslsmith_f_op_f32(sign(-290f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) * _wgslsmith_f_op_f32(floor(-947f)))), func_5(~vec3<u32>(global1.a, u_input.a, 25692u), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(-553f)))), vec3<u32>(7917u, _wgslsmith_mod_u32(global1.a, select(global1.a, global1.a, false)), ~_wgslsmith_add_u32(u_input.a, 1u)), select(vec2<u32>(u_input.a, 1u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(39590u, global1.a), vec2<u32>(global1.a, global1.a)), false)), -32348i, _wgslsmith_dot_vec4_i32(u_input.b << (~(~vec4<u32>(global1.a, 0u, u_input.a, global1.a)) % vec4<u32>(32u)), u_input.b));
    var_0 = Struct_1(var_0.a);
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(529f, -831f, -244f, -1075f), vec4<f32>(566f, 936f, -400f, -420f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-343f, -335f, -1000f, -1814f), vec4<f32>(-1870f, -463f, 1434f, 145f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1386f, 416f, -857f, 687f), vec4<f32>(-131f, -1150f, 944f, 3250f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-533f, 1705f, -239f, _wgslsmith_f_op_f32(step(1741f, -1374f))), vec4<f32>(807f, var_2.x, -332f, -829f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -182f, var_2.x), vec4<f32>(-190f, var_2.x, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(646f, 583f, 1010f, var_2.x) - vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1388f, _wgslsmith_f_op_f32(1000f + var_2.x), 699f, 125f)));
    var var_4 = 20502u;
    var var_5 = var_1;
    var var_6 = -2550i;
    var var_7 = Struct_4(vec2<u32>(_wgslsmith_div_u32(0u, ~var_0.a), var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a | ~var_7.a, u_input.b);
}

