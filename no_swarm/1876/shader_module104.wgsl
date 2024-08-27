struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    let var_0 = arg_1.a;
    let var_1 = vec3<u32>(countOneBits(14662u | firstLeadingBit(u_input.b)), _wgslsmith_mult_u32(1u, 4294967295u), ~0u);
    var var_2 = arg_0.a.zx;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_2.x * arg_0.a.x), arg_0.a.x);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.a.zz));
    return _wgslsmith_f_op_f32(floor(var_2.x));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_3(select(firstLeadingBit(vec3<u32>(1u, 4566u, 1u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_1.a.x, 80577u), vec3<u32>(13854u, 0u, arg_1.a.x)), arg_1.a, select(!vec3<bool>(arg_1.b.c, false, arg_1.b.c), select(arg_1.b.b, vec3<bool>(arg_1.b.c, false, arg_1.b.c), arg_1.b.b), arg_1.b.b)) | arg_1.a, arg_1.b, -u_input.a, u_input.a.x);
    let var_1 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(reverseBits(0u) >> (~arg_1.a.x % 32u), ~0u ^ var_0.a.x), ~(42393u >> (arg_1.a.x % 32u)), arg_1.a.x << (u_input.b % 32u)), var_0.b, arg_1.c, arg_1.c.x);
    var var_2 = -21614i;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(426f + arg_0.a.x))))), var_0.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a.x)))));
    var_0 = var_1;
    return ~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~u_input.c.yyw, vec3<i32>(-48331i, var_1.c.x, var_1.d)), (var_1.d ^ arg_1.c.x) | 1i));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_add_i32(u_input.c.x >> ((_wgslsmith_mult_u32(u_input.b, u_input.b) | abs(1u)) % 32u), (27558i ^ arg_0.x) | _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(-74205i, 1i), 0i), -1i));
    var var_1 = 1i;
    let var_2 = ~vec3<u32>(select(abs(u_input.b), _wgslsmith_sub_u32(25526u, 9341u), select(false, arg_1, arg_1)), _wgslsmith_add_u32(5032u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 98274u)), firstLeadingBit(u_input.b)) | ~vec3<u32>(u_input.b, 8204u, 0u);
    var_1 = func_3(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(abs(arg_2))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, -772f))))), Struct_3(~abs(vec3<u32>(29004u, u_input.b, u_input.b)) >> (var_2 % vec3<u32>(32u)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, -367f, -830f)), vec3<f32>(628f, arg_2, 762f)), vec3<bool>(true, true, false), true), firstTrailingBit(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-1i, -1i, 37985i, -1i)) ^ ~u_input.a), abs(~arg_0.x)));
    var var_3 = vec3<u32>(73534u, 1u, 3490u);
    return _wgslsmith_f_op_f32(-arg_2) == arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, 1418f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1241f, 1297f), vec2<f32>(-842f, -532f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1391f, -350f)))))), vec2<bool>(select(true, true, -11668i < u_input.c.x), func_2(vec2<i32>(25200i, 27282i), select(false, false, true), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(-1885f, -1000f, -2488f), vec3<bool>(false, true, false), true), Struct_3(vec3<u32>(u_input.b, u_input.b, 10336u), Struct_1(vec3<f32>(1089f, -537f, 1097f), vec3<bool>(false, false, true), true), u_input.a, -27728i), u_input.b, u_input.c.yx)))))));
    let var_1 = var_0.a;
    let var_2 = select(any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)), !(-(u_input.a.x ^ u_input.c.x) <= (u_input.c.x << (u_input.b % 32u))));
    var var_3 = var_1;
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1825f, _wgslsmith_f_op_f32(var_1.x + -116f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_1.x) + -948f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - var_0.a.x))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), -2484f));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(260f, 475f, 289f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_3.x) - vec3<f32>(var_1.x, 261f, 1893f))))), select(!select(vec3<bool>(var_2, var_2, true), vec3<bool>(true, var_2, true), vec3<bool>(var_2, var_2, true)), !select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_2, var_2)), select(true, any(vec2<bool>(false, true)), var_2)), !var_2), u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-385f, var_3.x)), _wgslsmith_f_op_f32(var_3.x * -578f), var_1.x, _wgslsmith_f_op_f32(673f + 1244f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -1000f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<f32>(1000f, var_1.x, var_1.x, var_1.x)))))), var_2, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -1394f, var_0.a.x), vec3<f32>(428f, var_0.a.x, var_1.x), vec3<bool>(var_2, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1144f, var_1.x))))), select(select(!vec3<bool>(var_2, false, false), vec3<bool>(true, var_2, var_2), select(vec3<bool>(true, var_2, var_2), vec3<bool>(true, var_2, false), vec3<bool>(var_2, var_2, var_2))), !vec3<bool>(var_2, var_2, var_2), !select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, true, var_2), var_2)), true));
    var var_5 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, ~4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.b)), ~firstLeadingBit(vec3<u32>(u_input.b, 45906u, u_input.b))), firstTrailingBit(~(~vec3<u32>(u_input.b, 1u, u_input.b)))), ~select(vec3<u32>(max(u_input.b, u_input.b), _wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(6292u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b))), countOneBits(~vec3<u32>(4294967295u, 0u, 4294967295u)), min(var_4.b.x, -2147483647i) < u_input.a.x), vec3<u32>(0u, u_input.b, 4294967295u));
    var var_6 = min(~var_5.x, ~(~_wgslsmith_mod_u32(u_input.b, u_input.b)));
    var var_7 = ~vec2<u32>(~23395u, ~var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(-378f, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1000f - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), var_0.a.x, _wgslsmith_f_op_f32(step(791f, -784f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-136f, -1000f, 481f, 1092f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.c - var_4.c) - var_4.c))) * vec4<f32>(var_0.a.x, -758f, var_3.x, var_3.x)));
}

