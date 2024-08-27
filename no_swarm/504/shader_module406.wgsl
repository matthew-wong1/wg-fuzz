struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = -1000f;
    let var_1 = select(vec4<bool>(all(vec2<bool>(true, true)), true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), false), !vec4<bool>(true, u_input.c <= (i32(-1i) * -16902i), true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)))), select(vec4<bool>(false, true, false, any(vec3<bool>(false, false, false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, select(true, true, true), true), vec4<bool>(false, true, all(vec2<bool>(false, true)), true)));
    var var_2 = Struct_2(true, Struct_1(u_input.a, u_input.a.xw, 0i, reverseBits(-u_input.d), _wgslsmith_dot_vec4_u32(~(u_input.a | u_input.a), u_input.a)));
    var_2 = Struct_2(true, Struct_1(max(vec4<u32>(0u, _wgslsmith_add_u32(u_input.b.x, 22159u), max(4294967295u, var_2.b.a.x), max(var_2.b.e, 1u)), u_input.a), vec2<u32>(~_wgslsmith_add_u32(16225u, 0u), firstTrailingBit(select(var_2.b.b.x, u_input.b.x, false))), 0i, u_input.d, u_input.a.x));
    let var_3 = Struct_4(abs(~(~var_2.b.e)), var_2.b, Struct_3(Struct_1(~(vec4<u32>(4294967295u, var_2.b.a.x, 1u, var_2.b.e) | u_input.a), min(_wgslsmith_mod_vec2_u32(var_2.b.a.ww, vec2<u32>(14945u, 4294967295u)), u_input.b.yz), 59911i, select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b.d.x, var_2.b.c), var_2.b.d), var_2.b.d, any(var_1)), ~_wgslsmith_mult_u32(40895u, 42579u)), _wgslsmith_f_op_f32(abs(-947f)), all(var_1.zyz)));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_4(u_input.b.x >> (_wgslsmith_div_u32(4294967295u, 79889u) % 32u), arg_0, Struct_3(arg_0, -2120f, any(vec4<bool>(func_3(), all(vec2<bool>(false, true)), true, true))));
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(abs(_wgslsmith_add_i32(arg_1.x, var_0.c.a.c)), -25438i, -2147483647i, var_0.c.a.c), vec4<i32>(abs(-19228i), -12030i, max(arg_1.x, arg_1.x) >> (41983u % 32u), u_input.c) << (arg_0.a % vec4<u32>(32u)));
    var var_2 = -1660f;
    var_2 = _wgslsmith_f_op_f32(-var_0.c.b);
    var var_3 = min(select(vec2<u32>(~1u, max(139157u, arg_0.e)), ~firstLeadingBit(vec2<u32>(146695u, var_0.c.a.e)), true) | vec2<u32>(u_input.a.x << (0u % 32u), ~abs(u_input.b.x)), var_0.b.a.wx);
    return Struct_2(!(false && (~13149u < (var_0.c.a.b.x ^ u_input.b.x))), arg_0);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(~arg_1.b.a, _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a.x, 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yy, arg_1.b.a.xw), ~vec2<u32>(u_input.a.x, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.b.xy, arg_1.b.b))) ^ vec2<u32>(arg_1.b.a.x, arg_1.b.e), arg_0.x, -vec2<i32>(u_input.c, reverseBits(arg_0.x << (u_input.a.x % 32u))), ~(~(reverseBits(49806u) << (arg_1.b.b.x % 32u))));
    var var_1 = var_0.e;
    let var_2 = Struct_4(_wgslsmith_clamp_u32(1u, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(24564u, var_0.a.x), select(u_input.b.x, 71494u, arg_1.a))), ~_wgslsmith_add_u32(0u, 19292u)), var_0, Struct_3(Struct_1(abs(u_input.a), ~(~vec2<u32>(u_input.a.x, 92560u)), ~var_0.d.x, -vec2<i32>(-13222i, -2147483647i), _wgslsmith_mult_u32(var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(44716u, 21134u, arg_1.b.b.x), vec3<u32>(1u, arg_1.b.b.x, u_input.a.x)))), arg_2.x, arg_1.a));
    var var_3 = var_2;
    let var_4 = Struct_2(true, Struct_1(vec4<u32>(~abs(var_2.c.a.e), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.e, var_0.e, var_2.b.a.x), arg_1.b.a.zzz) ^ (1u >> (var_2.b.a.x % 32u)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.b.a.x), vec2<u32>(1u, 4294967295u)), 47024u, true), ~var_0.b.x), countOneBits(reverseBits(vec2<u32>(arg_1.b.b.x, 23871u))), u_input.c, _wgslsmith_add_vec2_i32(min(arg_1.b.d, ~u_input.d), var_2.c.a.d), 87321u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(817f, arg_2.x)) + 328f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3)) + -515f)));
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = vec2<f32>(arg_1, 1000f);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4((vec4<i32>(0i, -6492i, u_input.c, -31681i) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u) % vec4<u32>(32u))) >> (min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 1u), u_input.a) % vec4<u32>(32u)), func_2(Struct_1(vec4<u32>(arg_0, u_input.a.x, 0u, 40501u), vec2<u32>(4294967295u, arg_0), -1146i, vec2<i32>(-2147483647i, u_input.c), u_input.a.x), -vec4<i32>(u_input.d.x, u_input.c, -4328i, -1i)), vec3<f32>(1328f, _wgslsmith_f_op_f32(max(327f, -685f)), 725f), _wgslsmith_f_op_f32(sign(-328f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-447f - -1000f), true)))), var_0.x);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x);
    var var_2 = ~u_input.d >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -352f));
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b.x, u_input.b.x, ~(_wgslsmith_mod_u32(u_input.b.x ^ u_input.a.x, ~u_input.b.x) | (0u ^ u_input.b.x)));
    var_0 = u_input.b;
    let var_1 = u_input.a.x == _wgslsmith_div_u32(~countOneBits(var_0.x) | _wgslsmith_add_u32(1u, ~var_0.x), var_0.x);
    let var_2 = Struct_3(Struct_1(countOneBits(u_input.a), ~vec2<u32>(func_1(68577u, -134f), ~3886u), -(i32(-1i) * -1i), u_input.d, _wgslsmith_mult_u32(abs(~u_input.a.x), var_0.x)), 522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1051f, 1684f, false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1508f) * _wgslsmith_f_op_f32(func_4(vec4<i32>(-2147483647i, 18122i, 1i, u_input.c), Struct_2(false, Struct_1(vec4<u32>(u_input.a.x, 3218u, u_input.b.x, 0u), vec2<u32>(u_input.b.x, 23374u), u_input.c, u_input.d, 4294967295u)), vec3<f32>(1247f, 384f, -307f), -448f)))) == _wgslsmith_f_op_f32(1000f - 615f));
    let var_3 = ~vec3<i32>(func_2(Struct_1(u_input.a, vec2<u32>(u_input.a.x, var_0.x), ~u_input.d.x, -vec2<i32>(var_2.a.d.x, u_input.c), firstTrailingBit(4294967295u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -16631i, -22217i, 8707i), vec4<i32>(var_2.a.d.x, var_2.a.c, -93i, -45728i)) & -vec4<i32>(1i, 0i, var_2.a.c, u_input.d.x)).b.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, -25722i, 0i), vec3<i32>(-3270i, 42584i, var_2.a.c) << (vec3<u32>(4294967295u, var_0.x, var_0.x) % vec3<u32>(32u))), ~(~vec3<i32>(u_input.d.x, 38337i, var_2.a.d.x))), _wgslsmith_div_i32(var_2.a.c, func_2(var_2.a, -vec4<i32>(var_2.a.c, -3193i, -62892i, var_2.a.c)).b.d.x));
    var_0 = firstLeadingBit(countOneBits(select(_wgslsmith_mult_vec3_u32(~u_input.b, min(vec3<u32>(var_0.x, var_0.x, 1453u), var_2.a.a.yxx)), ~func_2(Struct_1(var_2.a.a, var_2.a.b, var_2.a.d.x, vec2<i32>(u_input.d.x, 2147483647i), 70361u), vec4<i32>(var_3.x, 0i, u_input.c, u_input.d.x)).b.a.wzz, !(!var_1))));
    var_0 = max(vec3<u32>(63723u, 0u, _wgslsmith_add_u32(~var_0.x, 4294967295u)), ~_wgslsmith_div_vec3_u32(~var_2.a.a.ywy, abs(var_2.a.a.wyx))) << (vec3<u32>(1u, u_input.a.x, _wgslsmith_mult_u32(firstLeadingBit(var_2.a.b.x) >> (reverseBits(4294967295u) % 32u), var_0.x)) % vec3<u32>(32u));
    var var_4 = i32(-1i) * -var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d ^ u_input.d, var_3, abs(vec4<i32>(17296i, -2147483647i, u_input.d.x, select(~2147483647i, func_2(var_2.a, vec4<i32>(var_3.x, 15276i, 2147483647i, var_3.x)).b.c, func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))))), var_2.b);
}

