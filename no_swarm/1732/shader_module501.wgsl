struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.b);
    global2 = u_input.c;
    let var_1 = arg_2.a;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) - -506f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2034f);
    return vec2<i32>(-36329i, firstTrailingBit(max(-56966i, countOneBits(1i))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-450f, 1538f, 922f))))))));
    global2 = -13223i;
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(select(global0.x, -9007i, true), 22314i << (1u % 32u)), vec2<i32>(1i, u_input.c));
    global2 = _wgslsmith_sub_i32(global0.x, _wgslsmith_mult_i32(u_input.c, _wgslsmith_clamp_i32(global0.x, -abs(global0.x), _wgslsmith_clamp_i32(-69884i, 2147483647i, u_input.c))));
    let var_1 = -(~_wgslsmith_add_vec2_i32(func_2(u_input.e, var_0.x, Struct_1(-119f, -1000f, vec3<u32>(u_input.b, 4294967295u, u_input.d), vec2<f32>(655f, var_0.x))) ^ ~vec2<i32>(2147483647i, -1736i), _wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(11381i, u_input.c)), vec2<i32>(u_input.c, global0.x) >> (vec2<u32>(u_input.b, 108893u) % vec2<u32>(32u)))));
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global0 = vec2<i32>(_wgslsmith_div_i32(-2147483647i, -49689i), global0.x);
    let var_0 = _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) - arg_1.a) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1116f, -124f)))) - _wgslsmith_f_op_f32(arg_0.d.x + -808f)));
    let var_1 = _wgslsmith_mod_vec3_u32(select(~arg_0.c, vec3<u32>(~u_input.d, _wgslsmith_dot_vec3_u32(~arg_0.c, arg_0.c), u_input.e), vec3<bool>(true, true, true)), vec3<u32>(arg_0.c.x << (abs(arg_0.c.x ^ arg_0.c.x) % 32u), abs(~6802u), _wgslsmith_add_u32(~arg_0.c.x, ~u_input.b)));
    var var_2 = 0i;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - var_0) + -2251f))) * arg_1.a)));
    return -26608i;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    var var_0 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(reverseBits(~vec4<u32>(4294967295u, u_input.d, u_input.d, 4294967295u))), vec4<u32>(_wgslsmith_div_u32(~u_input.b, ~9147u), 1u, countOneBits(u_input.e), abs(_wgslsmith_clamp_u32(1u, 0u, u_input.a))));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.b, 40640u)), var_0.x);
    let var_2 = vec2<i32>(u_input.c, ~(-func_2(1178u, _wgslsmith_f_op_f32(ceil(arg_3)), Struct_1(arg_2.x, arg_2.x, var_0.zyx, arg_2)).x));
    var var_3 = vec4<i32>(14794i, 0i, u_input.c, countOneBits(u_input.c));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -187f);
    return -1708f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(func_1(), !any(vec3<bool>(true, true, false)), true), u_input.a > ~(~1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(786f * -662f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(256f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(Struct_1(1000f, -1622f, vec3<u32>(u_input.d, 1u, 0u), vec2<f32>(-501f, -241f)), Struct_2(1307f), Struct_2(677f)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true), vec2<f32>(-221f, -975f), _wgslsmith_f_op_f32(trunc(981f))))))), ~vec3<u32>(~_wgslsmith_div_u32(4294967295u, u_input.b), ~u_input.b, 1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1753f + 1119f))), 1f));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(641f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-777f, var_1.a)), var_1.b, true))))));
    var var_3 = Struct_2(var_2.a);
    var_0 = true;
    var var_4 = _wgslsmith_add_u32(abs(u_input.b), 28232u);
    var var_5 = vec4<u32>(var_1.c.x, max(var_1.c.x, u_input.a) | _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, var_1.c.x), var_1.c.zx), firstLeadingBit(_wgslsmith_add_vec2_u32(var_1.c.xx, vec2<u32>(0u, var_1.c.x)))), ~(~_wgslsmith_sub_u32(max(var_1.c.x, 41447u), var_1.c.x)), ~var_1.c.x);
    var var_6 = !all(select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), true), false));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.e) << ((var_5.x & ~(~u_input.a)) % 32u), ~var_1.c.xx, firstLeadingBit(var_5.xz));
}

