struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_1,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - 668f), -679f))), arg_0.a, _wgslsmith_f_op_f32(-1506f * _wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(539f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, -1698f) * -1514f) + -1253f), reverseBits(vec4<i32>(u_input.c, -u_input.c, u_input.c, firstTrailingBit(-u_input.c))), ~abs(u_input.c), -35210i << (u_input.a.x % 32u));
    let var_2 = Struct_3(abs(var_1.b), arg_0.a, 1u, ~vec2<u32>(_wgslsmith_sub_u32(1u | u_input.b.x, u_input.a.x), u_input.a.x ^ ~u_input.a.x), true);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(420f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 439f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(950f - arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1486f))))), _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)), _wgslsmith_div_f32(-526f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1128f)), _wgslsmith_f_op_f32(trunc(arg_0.a)))), _wgslsmith_div_f32(-1070f, _wgslsmith_f_op_f32(round(2192f))));
    return -9378i;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_3);
    let var_1 = vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(204f, -627f)))), _wgslsmith_f_op_f32(-arg_1));
    let var_2 = ~arg_2.x;
    var var_3 = false;
    return ~countOneBits(4294967295u);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = func_4(~_wgslsmith_add_vec3_u32(arg_1.zxz, ~u_input.b.yzw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-301f - _wgslsmith_div_f32(589f, arg_2.x))) - arg_2.x), select(vec2<i32>(func_3(arg_0) | 1i, -7267i), _wgslsmith_clamp_vec2_i32(~max(vec2<i32>(-2147483647i, -1364i), vec2<i32>(u_input.c, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-35164i, 1i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 4385i), firstLeadingBit(vec2<i32>(-2147483647i, u_input.c)))), false), Struct_1(true, vec4<i32>(_wgslsmith_mod_i32(-48111i, -u_input.c), -u_input.c ^ u_input.c, -1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c)), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c), false))), -2147483647i, _wgslsmith_add_i32(0i | u_input.c, countOneBits(9450i)) << (arg_1.x % 32u)));
    var_0 = _wgslsmith_dot_vec3_u32(~select(reverseBits(arg_1.zxw), _wgslsmith_clamp_vec3_u32(~arg_1.wxw, arg_1.zzw, u_input.b.wzz), vec3<bool>(-2158f > arg_0.a, true, true)), vec3<u32>(arg_1.x, ~11406u, 32896u));
    return 951f;
}

fn func_1(arg_0: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1496f, -1000f) + -1733f)), reverseBits(countOneBits(min(u_input.a, u_input.b))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-809f, -127f) * vec2<f32>(600f, -269f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1361f, 1521f)))))))) - 1f);
    let var_1 = true;
    let var_2 = 0u <= _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(~6905u), (u_input.a.x & u_input.b.x) >> (1u % 32u)), _wgslsmith_div_u32(reverseBits(1u), max(30091u, u_input.a.x)) ^ ~u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(ceil(648f));
    var var_4 = Struct_4(var_0);
    return ~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.c, u_input.c, -2147483647i, arg_0)) & (max(vec4<i32>(arg_0, 1i, arg_0, 9658i), vec4<i32>(arg_0, arg_0, arg_0, 12701i)) >> (~u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 1i, 8897i, 6457i) << (u_input.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_0, -46449i, 15533i), vec4<i32>(18623i, arg_0, 50980i, u_input.c), vec4<i32>(-1i, -2147483647i, -1i, u_input.c)), ~vec4<i32>(-13126i, -2860i, u_input.c, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(select(u_input.c >> (u_input.b.x % 32u), u_input.c, any(vec3<bool>(true, false, true))), u_input.c, _wgslsmith_mod_i32(0i, -u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(-12929i), ~u_input.c, 0i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) << (u_input.a.wwx % vec3<u32>(32u)), ~vec3<i32>(u_input.c, 46873i, -35931i)), 0i, abs(select(u_input.c, u_input.c, false)))));
    var var_1 = 2147483647i;
    var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.c, -var_0.x, var_0.x & var_0.x, firstLeadingBit(u_input.c)), func_1(1i)) | vec4<i32>(reverseBits(-var_0.x), _wgslsmith_add_i32(max(var_0.x, var_0.x), i32(-1i) * -5211i), var_0.x & ~var_0.x, ~(~u_input.c)), ~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(587i, 0i), -u_input.c), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -31231i, 24189i, -1i), vec4<i32>(var_0.x, 24916i, -2147483647i, var_0.x)), abs(vec4<i32>(u_input.c, -35220i, 9502i, -5716i))), var_0.x, _wgslsmith_dot_vec2_i32(var_0.xy, -vec2<i32>(var_0.x, -8520i))));
    var var_2 = Struct_5(Struct_3(select(-(~vec4<i32>(var_0.x, 0i, 43764i, u_input.c)), -(vec4<i32>(2147483647i, u_input.c, -16299i, -1i) >> (u_input.b % vec4<u32>(32u))), u_input.a.x == ~23326u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1937f))), u_input.b.x, u_input.a.wz, !(_wgslsmith_f_op_f32(trunc(164f)) > _wgslsmith_f_op_f32(sign(-479f)))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(-184f), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(1094u, 1u, 1u, 47842u)), _wgslsmith_div_vec2_f32(vec2<f32>(-408f, 670f), vec2<f32>(-358f, -766f)))) - -1009f)), Struct_1(false, ~vec4<i32>(abs(-3984i), ~var_0.x, -10868i, i32(-1i) * -30814i), u_input.c, u_input.c), _wgslsmith_f_op_f32(-920f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1053f)))), Struct_4(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1298f))));
    var var_3 = var_2.a;
    var var_4 = u_input.b.wyx;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d, -firstLeadingBit(-2147483647i) | -(~u_input.c), vec3<i32>(var_0.x << (_wgslsmith_sub_u32(var_4.x, _wgslsmith_mult_u32(var_4.x, var_4.x)) % 32u), firstLeadingBit(func_3(Struct_4(var_3.b))), -var_2.a.a.x), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.d.x, 4294967295u, u_input.b.x, var_4.x), vec4<u32>(var_2.a.c, var_2.a.d.x, 23076u, var_4.x), u_input.a), vec4<u32>(var_2.a.d.x, var_4.x, 1u, var_3.d.x)), _wgslsmith_add_vec4_u32(vec4<u32>(27211u, var_2.a.d.x, var_2.a.d.x, 1u), ~u_input.a)), 1u, var_2.a.d.x, _wgslsmith_sub_u32(countOneBits(84588u), u_input.a.x)));
}

