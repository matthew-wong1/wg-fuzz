struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(75038u, Struct_1(-1659f)), Struct_2(52543u, Struct_1(-845f)), Struct_2(4294967295u, Struct_1(-1041f)), Struct_2(4294967295u, Struct_1(-790f)), Struct_2(1u, Struct_1(-550f)), Struct_2(56421u, Struct_1(1000f)), Struct_2(0u, Struct_1(537f)), Struct_2(4294967295u, Struct_1(-882f)), Struct_2(517u, Struct_1(-165f)), Struct_2(50922u, Struct_1(677f)), Struct_2(4294967295u, Struct_1(-304f)), Struct_2(9150u, Struct_1(899f)), Struct_2(4294967295u, Struct_1(1187f)), Struct_2(82265u, Struct_1(-626f)), Struct_2(6170u, Struct_1(383f)), Struct_2(4294967295u, Struct_1(767f)), Struct_2(43889u, Struct_1(1000f)), Struct_2(5793u, Struct_1(511f)), Struct_2(1621u, Struct_1(546f)), Struct_2(0u, Struct_1(1555f)), Struct_2(29067u, Struct_1(-2141f)), Struct_2(26871u, Struct_1(-1078f)), Struct_2(4294967295u, Struct_1(202f)), Struct_2(13064u, Struct_1(-105f)), Struct_2(0u, Struct_1(-1348f)), Struct_2(0u, Struct_1(-1304f)), Struct_2(4294967295u, Struct_1(-747f)), Struct_2(10802u, Struct_1(693f)), Struct_2(4294967295u, Struct_1(-918f)), Struct_2(26497u, Struct_1(-720f)), Struct_2(0u, Struct_1(-1364f)), Struct_2(21421u, Struct_1(749f)));

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(4294967295u, Struct_1(-267f)), Struct_2(10317u, Struct_1(1000f)), Struct_2(84151u, Struct_1(-157f)), Struct_2(0u, Struct_1(-667f)), Struct_2(1u, Struct_1(-552f)), Struct_2(0u, Struct_1(-276f)), Struct_2(0u, Struct_1(249f)), Struct_2(0u, Struct_1(663f)), Struct_2(1u, Struct_1(-1697f)), Struct_2(0u, Struct_1(-762f)), Struct_2(54703u, Struct_1(411f)), Struct_2(4294967295u, Struct_1(836f)), Struct_2(4294967295u, Struct_1(1026f)), Struct_2(0u, Struct_1(1259f)), Struct_2(14789u, Struct_1(-1058f)), Struct_2(70423u, Struct_1(-1394f)), Struct_2(39136u, Struct_1(-553f)), Struct_2(24093u, Struct_1(184f)), Struct_2(687u, Struct_1(-307f)), Struct_2(12507u, Struct_1(-1432f)), Struct_2(1u, Struct_1(-1000f)), Struct_2(1u, Struct_1(-520f)), Struct_2(4294967295u, Struct_1(144f)), Struct_2(1u, Struct_1(-643f)), Struct_2(23679u, Struct_1(-1090f)), Struct_2(74786u, Struct_1(1059f)), Struct_2(4294967295u, Struct_1(1000f)), Struct_2(16781u, Struct_1(1000f)), Struct_2(41620u, Struct_1(-2102f)), Struct_2(20126u, Struct_1(113f)));

var<private> global2: array<Struct_2, 10>;

var<private> global3: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> f32 {
    global2 = array<Struct_2, 10>();
    global0 = array<Struct_2, 32>();
    global2 = array<Struct_2, 10>();
    global1 = array<Struct_2, 30>();
    var var_0 = max(vec2<i32>(_wgslsmith_dot_vec2_i32(~arg_1.wx << (vec2<u32>(0u, 30708u) % vec2<u32>(32u)), ~arg_1.xz), -25961i & firstLeadingBit(select(arg_1.x, 26132i, true))), vec2<i32>(u_input.e & _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.x, 1i, arg_1.x), vec4<i32>(u_input.e, -1i, arg_1.x, u_input.e)), u_input.e), max(arg_1.x, -17654i)));
    return -1263f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = ~u_input.c;
    var_0 = _wgslsmith_div_vec2_u32(u_input.c, _wgslsmith_add_vec2_u32(vec2<u32>((4294967295u & u_input.a) | ~var_0.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.b), 102012u, ~arg_0)), vec2<u32>(u_input.a, ~(~u_input.c.x))));
    var var_1 = Struct_2(0u, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), ~vec4<i32>(u_input.e, -17315i, -2147483647i, u_input.e)))))));
    global0 = array<Struct_2, 32>();
    global3 = -197f;
    return Struct_1(_wgslsmith_f_op_f32(-1204f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-102f)), _wgslsmith_f_op_f32(-var_1.b.a))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = -59378i;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(665f, arg_1.b.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.a + arg_1.b.a)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b.a, -1000f, arg_1.b.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a, arg_1.b.a, arg_1.b.a))))))));
    return -323f;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~reverseBits(vec2<u32>(u_input.d.x, 115306u)), Struct_2(countOneBits(u_input.c.x), func_2(1u)))) + -149f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f - -324f) + -953f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1095f))) + _wgslsmith_f_op_f32(-581f * _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) * _wgslsmith_f_op_f32(select(-969f, arg_0.x, true))))))));
    let var_1 = Struct_2(~u_input.c.x, func_2(_wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(u_input.a ^ 1u, 4294967295u << (u_input.b % 32u), 32969u))));
    global1 = array<Struct_2, 30>();
    var var_2 = u_input.a;
    let var_3 = !(~_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, u_input.e), reverseBits(19359i)) < -(-18638i & u_input.e));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(~abs(abs(var_1.a)), ~abs(~var_1.a)), abs(u_input.a | countOneBits(_wgslsmith_div_u32(2915u, u_input.d.x)))), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1252f, 2592f, 334f), vec3<f32>(1002f, 1173f, -433f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1413f, -1091f, 759f))))));
    global1 = array<Struct_2, 30>();
    let var_1 = _wgslsmith_sub_u32(1u, firstLeadingBit(u_input.a));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(1f * -494f)) - _wgslsmith_f_op_f32(-792f * _wgslsmith_f_op_f32(min(-815f, _wgslsmith_f_op_f32(max(var_0.b.a, -801f)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.a, var_0.b.a, 628f), vec3<f32>(631f, var_0.b.a, var_2.a)))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-934f, -1390f, var_0.b.a) * vec3<f32>(330f, -530f, var_0.b.a)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, -675f, var_2.a), vec3<f32>(-1010f, 996f, var_0.b.a)))))));
    global3 = _wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))));
    var_2 = func_1(var_3).b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~0u)), ~(~(~(~vec2<u32>(u_input.b, var_0.a)))), u_input.d);
}

