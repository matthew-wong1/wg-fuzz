struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 606f;

var<private> global1: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_2.wxw;
    let var_1 = Struct_1(vec3<bool>(any(vec4<bool>(true, true, all(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, false)))), all(vec2<bool>(true, true)), false), _wgslsmith_add_vec3_u32(~((vec3<u32>(51796u, u_input.b, u_input.b) ^ vec3<u32>(37686u, u_input.b, u_input.b)) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(u_input.b, 52433u, 0u)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(18929u, 1u), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(28504u, 9159u))), ~(~68898u), max(u_input.b, 0u) ^ firstTrailingBit(u_input.b))), ~(abs(vec3<u32>(u_input.b, 0u, 4294967295u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 39062u, 0u), vec3<u32>(u_input.b, u_input.b, 4294967295u))) ^ ~(~(~vec3<u32>(31229u, u_input.b, u_input.b))));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1161f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1))))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -442f)), !(u_input.a != _wgslsmith_add_i32(28855i, ~(-5424i)))));
    global0 = var_0.x;
    global0 = _wgslsmith_f_op_f32(abs(arg_1));
    return 8559u;
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(vec3<bool>(arg_1, arg_1, all(vec4<bool>(arg_1, select(true, true, true), arg_1, any(vec2<bool>(false, false))))), vec3<u32>(1u, select(u_input.b, ~u_input.b, false) << (4294967295u % 32u), func_3(firstTrailingBit(12658i), arg_0, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1756f, arg_0, 125f, 634f) + vec4<f32>(arg_0, 743f, -204f, 1000f)))))), vec3<u32>(~(~4969u), u_input.b, ~_wgslsmith_div_u32(~u_input.b, firstLeadingBit(3215u))));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1429f + arg_0), _wgslsmith_f_op_f32(1173f + -923f), -752f)) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -589f), 1435f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(ceil(arg_0)))), arg_0) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(741f, 1993f, 805f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1093f, 483f, arg_0) - vec3<f32>(arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -943f)))));
    let var_3 = var_0.a.xz;
    return 40281u;
}

fn func_1() -> u32 {
    return abs(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), any(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = select(vec4<i32>(u_input.c, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-arg_0.zx, arg_0.yy), _wgslsmith_mult_i32(_wgslsmith_div_i32(-10618i, -1i), u_input.c)), arg_0.x, u_input.a), abs(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.a, arg_0.x, arg_0.x) >> (vec4<u32>(arg_2.c.x, 79194u, 1u, arg_2.c.x) % vec4<u32>(32u)), vec4<i32>(60351i, 2147483647i, u_input.a, u_input.a)))), !any(vec3<bool>(arg_2.a.x, arg_2.a.x, false)) && false);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -636f)))))), _wgslsmith_div_f32(-187f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-995f, -648f)) * _wgslsmith_f_op_f32(select(445f, 828f, arg_2.a.x))), -507f))), false == !arg_2.a.x));
    var var_2 = arg_2;
    var_1 = -936f;
    return ~var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, select(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 20032u), vec2<u32>(u_input.b, 1u))), u_input.b, true)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 108653u, 0u, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(16001u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 15664u, 4294967295u), vec4<u32>(44887u, 4294967295u, 82884u, u_input.b))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 60081u)), 169u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(30085u, 71215u, 0u), vec3<u32>(u_input.b, 4294967295u, 0u)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-368f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1304f - _wgslsmith_f_op_f32(f32(-1f) * -1558f))))) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -586f)));
    var var_1 = Struct_1(vec3<bool>(true, true, false), func_4(vec3<i32>(~firstLeadingBit(6116i), u_input.a, -_wgslsmith_div_i32(25105i, u_input.c)), func_1(), Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), ~vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(40591u, 24386u, 1u)), vec3<u32>(u_input.b, 4294967295u, 68720u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), ~44726u), countOneBits(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 1u), vec2<bool>(false, false))), firstTrailingBit(~vec2<u32>(43795u, 457u)))), abs(_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(80763u, 70617u, 0u)), max(reverseBits(vec3<u32>(99254u, u_input.b, 91067u)), ~vec3<u32>(u_input.b, u_input.b, 0u)))));
    global1 = _wgslsmith_f_op_f32(exp2(1f));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1740f + -1737f), -146f)) + _wgslsmith_f_op_f32(step(-318f, _wgslsmith_f_op_f32(max(1856f, 1637f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(855f, 1000f) * -1605f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-364f, _wgslsmith_f_op_f32(sign(890f)))))), 1150i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(170f, 1015f, false)))))));
}

