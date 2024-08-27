struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 29>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<i32>) -> vec2<u32> {
    return ~u_input.b.zx;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1267f + _wgslsmith_f_op_f32(round(arg_1.a))));
    let var_1 = Struct_3(Struct_1(93205u, _wgslsmith_sub_i32(~0i, -3753i)), _wgslsmith_div_u32(1u, u_input.a), Struct_1(_wgslsmith_mod_u32(u_input.a << (_wgslsmith_add_u32(27161u, 2177u) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 86940u, arg_0, 34296u), firstLeadingBit(u_input.d))), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, arg_3, -21524i, u_input.c.x), vec4<i32>(22304i, -53673i, arg_3, 13147i)) & -u_input.c.x)));
    let var_2 = vec4<u32>(~_wgslsmith_div_u32(arg_0, select(firstTrailingBit(91367u), 4294967295u, arg_2)), ~var_1.a.a ^ 450u, var_1.c.a, arg_0);
    var var_3 = ~reverseBits(_wgslsmith_add_vec4_u32(var_2, var_2));
    var_3 = ~countOneBits((~u_input.d >> ((var_2 ^ u_input.d) % vec4<u32>(32u))) | ~firstTrailingBit(vec4<u32>(var_2.x, var_2.x, u_input.b.x, var_3.x)));
    return _wgslsmith_f_op_f32(trunc(global0.b.a));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(979f)), arg_3.x), global0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_1), vec2<f32>(-373f, arg_3.x))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(func_3(4294967295u, global0.b, false, -46259i)))))) * global0.a);
    global0 = global1[_wgslsmith_index_u32(arg_0.x & ~(~(~arg_2.x) << (0u % 32u)), 29u)];
    global1 = array<Struct_4, 29>();
    let var_1 = Struct_2(global0.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1291f), _wgslsmith_f_op_f32(trunc(global0.b.a)), -1366f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(142f, var_1.a, arg_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(arg_3)), arg_3)))) + arg_3);
    return -vec2<i32>(22534i, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d.x;
    global1 = array<Struct_4, 29>();
    var var_1 = vec4<i32>(~u_input.c.x, select(u_input.c.x, 15931i, !(abs(u_input.c.x) >= _wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), u_input.c.x, _wgslsmith_dot_vec2_i32(~(u_input.c.yy | -u_input.c.zx), func_2(abs(u_input.b.xw), 1000f, _wgslsmith_div_vec2_u32(func_1(-1i, Struct_2(global0.b.a), true, u_input.c.xz), select(u_input.d.xx, u_input.d.wx, vec2<bool>(false, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, -394f, -1343f)), _wgslsmith_div_vec3_f32(vec3<f32>(514f, -1000f, 1074f), vec3<f32>(443f, 754f, global0.a.x))))));
    global1 = array<Struct_4, 29>();
    var var_2 = -vec2<i32>(u_input.c.x, ~_wgslsmith_div_i32(var_1.x, 74275i) ^ -(~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(~(-21043i), 24351i) | vec2<i32>(_wgslsmith_mult_i32(-10465i, var_1.x), min(-4409i, 1i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(max(var_1.yx, u_input.c.zy), min(u_input.c.yx, var_1.xz)), ~(vec2<i32>(var_2.x, var_1.x) << (u_input.b.wx % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, 45799i), u_input.c.xz, var_1.xw)))), vec3<u32>(~_wgslsmith_mod_u32(var_0, 1u) << (_wgslsmith_clamp_u32(firstLeadingBit(u_input.d.x), 4294967295u, 4294967295u) % 32u), ~_wgslsmith_mult_u32(abs(0u), u_input.b.x), _wgslsmith_add_u32(var_0, _wgslsmith_clamp_u32(var_0, 5429u, 38568u) >> (abs(39938u) % 32u))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(-2147483647i, -27113i), u_input.c.x, _wgslsmith_sub_i32(func_2(u_input.d.wz, -846f, vec2<u32>(u_input.b.x, 42337u), vec3<f32>(global0.b.a, -116f, global0.b.a)).x, -8762i)), var_1.x), var_1.x);
}

