struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<f32>(-600f, -1030f), 0u), Struct_2(vec2<f32>(-620f, 529f), 0u), Struct_2(vec2<f32>(-2450f, -517f), 29944u), Struct_2(vec2<f32>(384f, -285f), 34997u), Struct_2(vec2<f32>(-167f, 437f), 77600u), Struct_2(vec2<f32>(311f, 1000f), 18194u), Struct_2(vec2<f32>(-1038f, 265f), 15339u), Struct_2(vec2<f32>(-877f, 944f), 4294967295u), Struct_2(vec2<f32>(783f, -503f), 0u), Struct_2(vec2<f32>(359f, 167f), 4294967295u), Struct_2(vec2<f32>(-1172f, 577f), 0u), Struct_2(vec2<f32>(1876f, 1063f), 31378u), Struct_2(vec2<f32>(2323f, 120f), 9801u), Struct_2(vec2<f32>(1519f, -484f), 57062u), Struct_2(vec2<f32>(1548f, -1127f), 15752u), Struct_2(vec2<f32>(143f, -299f), 4294967295u), Struct_2(vec2<f32>(512f, 976f), 25335u), Struct_2(vec2<f32>(-875f, 1306f), 63857u), Struct_2(vec2<f32>(-986f, -337f), 0u), Struct_2(vec2<f32>(-2354f, -562f), 48525u), Struct_2(vec2<f32>(838f, 826f), 4294967295u), Struct_2(vec2<f32>(-314f, 276f), 1u), Struct_2(vec2<f32>(-511f, 429f), 0u), Struct_2(vec2<f32>(-105f, 922f), 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = false;
    let var_1 = arg_2;
    var_0 = all(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(~u_input.a < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), 1i < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, -3745i, u_input.a, u_input.a))), vec2<bool>(true, !(0i != u_input.a))));
    global0 = ~u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-arg_2.a.x);
    return firstTrailingBit(_wgslsmith_div_i32(-1i, -(~u_input.a) & (0i | u_input.a)));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, -func_3(vec4<u32>(1u, 0u, 4294967295u, 1u), 0u, Struct_2(vec2<f32>(-1000f, 1808f), 1u))), vec2<i32>(u_input.a, u_input.a));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -930f) != _wgslsmith_f_op_f32(ceil(-348f)), true), any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), true))));
    global0 = -select(_wgslsmith_sub_i32(17051i, 0i), (i32(-1i) * -u_input.a) >> (~abs(83582u) % 32u), !all(vec3<bool>(true, var_1.x, var_1.x)));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2055f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-663f - -378f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))))));
    var_1 = vec2<bool>(_wgslsmith_f_op_f32(floor(-664f)) > -613f, any(select(vec4<bool>(true, !var_1.x, any(vec3<bool>(var_1.x, var_1.x, false)), var_1.x && true), vec4<bool>(false, true, any(vec2<bool>(true, false)), var_1.x && false), select(select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1.x), !vec4<bool>(false, var_1.x, var_1.x, false), all(vec4<bool>(false, var_1.x, false, var_1.x))))));
    return !(!select(select(vec4<bool>(var_1.x, true, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), true), !select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, true, true, true)), var_1.x));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_2, 24>();
    global1 = array<Struct_2, 24>();
    let var_0 = vec4<bool>(true, all(vec3<bool>(-u_input.a < 51167i, true, _wgslsmith_mult_i32(24998i, u_input.a) >= (i32(-1i) * -14085i))), ((u_input.a << (_wgslsmith_div_u32(29239u, 1u) % 32u)) & (u_input.a & u_input.a)) < u_input.a, any(vec3<bool>(u_input.a <= u_input.a, !select(false, false, false), all(func_2()))));
    var var_1 = 0i;
    global1 = array<Struct_2, 24>();
    return Struct_1(vec4<i32>(u_input.a, 29256i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -36748i, 0i), vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(0i, 42092i, -34922i))), 3920i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, max(~u_input.a, -16332i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1384f, 1393f))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_2, 24>();
    let var_0 = arg_0;
    global1 = array<Struct_2, 24>();
    let var_1 = 42612u;
    global1 = array<Struct_2, 24>();
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = Struct_1(~min(-arg_2.a, vec4<i32>(1i, ~(-2147483647i), select(u_input.a, 371i, false), -32584i)), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(~arg_0.a, arg_2.b), ~max(29825i, 1i), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-147f, -731f, arg_2.b.x), vec3<f32>(-867f, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_0.b.x, 130f) * vec3<f32>(764f, 631f, -1319f)))).b - vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(ceil(445f)))));
    let var_1 = ~(~(~_wgslsmith_mult_u32(~67447u, _wgslsmith_dot_vec3_u32(arg_1.zwz, vec3<u32>(4294967295u, arg_3.b, arg_3.b)))));
    var_0 = arg_2;
    let var_2 = arg_0.b.x;
    let var_3 = 71088u;
    return StorageBuffer(~reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_3.b, 4294967295u, var_1, var_3)), arg_1.x)), vec2<u32>(~(~28470u), 256u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(~firstLeadingBit(arg_1.zy), arg_1.wx, select(vec2<u32>(var_3, arg_3.b), arg_1.zz, true))), vec4<i32>(_wgslsmith_sub_i32(~arg_0.a.x, max(arg_2.a.x >> (0u % 32u), -21447i)), _wgslsmith_mod_i32(func_4(arg_2, 1i, vec4<bool>(true, false, true, false), vec3<f32>(var_0.b.x, 2047f, var_0.b.x)).a.x, arg_2.a.x) | ~var_0.a.x, 0i, ~(-1i)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(func_1(), u_input.a, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-837f, _wgslsmith_f_op_f32(-172f + 497f), _wgslsmith_f_op_f32(floor(-342f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1188f, -1493f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(426f, 589f, 1679f) * vec3<f32>(-1151f, -1091f, -1000f))), vec3<bool>(true, true, true)))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))), func_1(), Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(234f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1699f, 1015f) - vec2<f32>(1044f, 1423f)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(52847u, 0u, 1u, 75554u))), 1u)));
}

