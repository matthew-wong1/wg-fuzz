struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> vec2<i32> {
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    return -firstLeadingBit(vec2<i32>(1i, arg_1) & abs(vec2<i32>(-1i, 2147483647i)));
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = true;
    let var_1 = Struct_2((vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.d, 53741i, arg_0.a), vec3<i32>(arg_0.a, -19112i, arg_0.a))) ^ ~((vec3<i32>(arg_0.d, -1i, 0i) ^ vec3<i32>(-2147483647i, arg_0.a, arg_0.a)) >> (vec3<u32>(u_input.a, u_input.c.x, u_input.a) % vec3<u32>(32u))), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_0.d), vec2<i32>(27844i, 18467i)), -vec2<i32>(2147483647i, -24941i)), vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, 12533i), vec2<i32>(arg_0.d, arg_0.d))))), (_wgslsmith_clamp_u32(1u | u_input.c.x, u_input.b.x, abs(14617u)) << (0u % 32u)) >> (~max(0u, ~u_input.c.x) % 32u), u_input.b.zyy, ~u_input.c.x);
    var var_2 = var_1.b;
    global0 = array<vec2<bool>, 11>();
    var_2 = Struct_1(vec2<i32>(var_1.b.a.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.a.x, var_1.b.a.x), -1887i) ^ _wgslsmith_add_i32(var_1.b.a.x | arg_0.d, 1i)));
    return ~abs(-(func_3(681f, -15068i, arg_0, arg_0.a) ^ vec2<i32>(var_1.b.a.x, 0i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global0 = array<vec2<bool>, 11>();
    var var_0 = 1u;
    global0 = array<vec2<bool>, 11>();
    let var_1 = u_input.a;
    global0 = array<vec2<bool>, 11>();
    return Struct_1(~((vec2<i32>(arg_2.d, arg_2.d) ^ vec2<i32>(arg_2.a, arg_2.d)) ^ func_2(Struct_3(arg_2.a, arg_2.b, arg_2.c, 2147483647i))) ^ _wgslsmith_add_vec2_i32(func_2(arg_2), (vec2<i32>(arg_2.a, arg_2.a) >> (u_input.b.wz % vec2<u32>(32u))) ^ func_2(Struct_3(-5416i, vec3<f32>(1226f, arg_3, arg_2.b.x), false, -2937i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    var var_0 = arg_1.b.x;
    let var_1 = !(!vec4<bool>(!(u_input.b.x >= u_input.c.x), arg_1.c, arg_1.c, firstLeadingBit(arg_1.d) > 2147483647i));
    var_0 = arg_1.b.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 11>();
    let var_0 = vec2<bool>(func_4(func_1(u_input.b, -1306f, Struct_3(max(0i, -19653i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-615f, -2072f, -1220f))), true, -1i), _wgslsmith_f_op_f32(f32(-1f) * -209f)), Struct_3(_wgslsmith_mult_i32(firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-42104i, -2147483647i, -18490i), vec3<i32>(-1930i, -16642i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1259f, 1928f, -1709f), vec3<f32>(-2404f, 326f, 448f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-929f, -921f, 1392f)))), true, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, 1i)))), 240f <= _wgslsmith_f_op_f32(-449f + _wgslsmith_f_op_f32(ceil(-1000f))));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(1i, -50030i), -68363i, -24778i, abs((2147483647i >> (~u_input.a % 32u)) << (countOneBits(u_input.b.x) % 32u)));
    global0 = array<vec2<bool>, 11>();
    var var_2 = vec3<bool>(any(select(vec3<bool>(8572u >= u_input.c.x, true, false), vec3<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), false, !var_0.x), !select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true)))), false, var_0.x);
    let var_3 = Struct_2(var_1.xwx, Struct_1(vec2<i32>(var_1.x & abs(var_1.x), -var_1.x)), firstLeadingBit(1u), ~countOneBits(~u_input.b.zzy), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 65534u, reverseBits(21300u)), ~min(u_input.b.wxy, vec3<u32>(4294967295u, 19971u, u_input.b.x))));
    var var_4 = Struct_3(_wgslsmith_sub_i32(var_3.b.a.x, ~2147483647i), vec3<f32>(_wgslsmith_f_op_f32(702f - _wgslsmith_f_op_f32(f32(-1f) * -492f)), -573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(1000f * -1236f)))), true, _wgslsmith_sub_i32(var_1.x, -abs(_wgslsmith_mod_i32(-2147483647i, var_3.b.a.x))));
    let var_5 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1057f, var_4.b.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)) * var_4.b.x)), _wgslsmith_sub_i32(var_4.a, _wgslsmith_mod_i32(-2147483647i, 664i)), Struct_3(~func_2(Struct_3(var_1.x, var_4.b, var_0.x, var_3.a.x)).x, vec3<f32>(_wgslsmith_f_op_f32(var_4.b.x + var_4.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.b.x)) - -1069f), _wgslsmith_f_op_f32(-439f * var_4.b.x)), select(true, var_4.c, false), min(_wgslsmith_sub_i32(var_3.b.a.x, 50463i), ~countOneBits(20702i))), var_1.x).x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, -var_4.d, var_4.b, reverseBits(abs(var_3.a)), ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c, u_input.a), u_input.b.wy))));
}

