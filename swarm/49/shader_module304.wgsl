struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(0i, true, vec4<u32>(30847u, 1u, 1u, 0u), vec4<i32>(1i, 49713i, 7785i, 2147483647i), vec3<f32>(-575f, 1000f, -1437f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = 1i;
    let var_1 = arg_3;
    let var_2 = i32(-1i) * -10009i;
    let var_3 = !vec2<bool>(~(arg_2.c.x | 23304u) > (~arg_3.c.c.x << (4294967295u % 32u)), true);
    global0 = _wgslsmith_add_i32(arg_3.c.a ^ _wgslsmith_sub_i32(2147483647i, ~_wgslsmith_dot_vec2_i32(arg_2.d.yz, var_1.c.d.xw)), abs(~51008i));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1368f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.e.x, 1165f)), -419f) - arg_2.e.x))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = global1.e;
    global1 = arg_2;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(652f, -123f)), global1.e.x, arg_2);
    global0 = _wgslsmith_sub_i32(-(~(-66082i)) & _wgslsmith_div_i32(abs(arg_1.x << (u_input.b % 32u)), -1i), select(-56082i, _wgslsmith_mult_i32(countOneBits(arg_1.x), 1755i), false) >> (5745u % 32u));
    var var_2 = _wgslsmith_div_vec4_i32(var_1.c.d, vec4<i32>(-4507i, 0i, -1i, 7759i));
    return firstLeadingBit(10521i);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_1 {
    global0 = ~_wgslsmith_mod_i32(global1.a, -12337i << (((0u | arg_1) ^ ~u_input.b) % 32u));
    var var_0 = _wgslsmith_mult_u32(global1.c.x, 1u);
    var_0 = 4294967295u << (~reverseBits(_wgslsmith_mult_u32(u_input.b, ~global1.c.x)) % 32u);
    var var_1 = Struct_1(func_3(select(select(select(vec4<bool>(global1.b, arg_0, false, arg_0), vec4<bool>(false, true, false, false), global1.b), !vec4<bool>(false, true, arg_0, global1.b), true), vec4<bool>(false, 210f == global1.e.x, global1.b, false), all(select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(global1.b, arg_0, false), arg_0))), _wgslsmith_mod_vec3_i32(global1.d.xzx, max(global1.d.yxw, global1.d.zyy)), Struct_1(firstLeadingBit(-global1.d.x), true, global1.c, global1.d, vec3<f32>(-2884f, _wgslsmith_f_op_f32(func_2(Struct_1(13241i, false, u_input.c, vec4<i32>(23562i, -39529i, arg_3, arg_3), vec3<f32>(arg_2, -1036f, -1199f)), Struct_1(arg_3, true, u_input.a, vec4<i32>(-2147483647i, arg_3, global1.a, global1.a), global1.e), Struct_1(-7431i, false, global1.c, global1.d, global1.e), Struct_2(vec2<f32>(1000f, arg_2), global1.e.x, Struct_1(global1.d.x, arg_0, vec4<u32>(global1.c.x, global1.c.x, global1.c.x, u_input.d.x), global1.d, vec3<f32>(1000f, -502f, global1.e.x))))), _wgslsmith_f_op_f32(f32(-1f) * -229f)))), any(vec3<bool>(global1.b, false, true)), vec4<u32>(_wgslsmith_dot_vec3_u32(~(~global1.c.xxz), vec3<u32>(u_input.d.x, ~u_input.a.x, ~88711u)), _wgslsmith_sub_u32(select(select(62463u, global1.c.x, true), ~u_input.b, true), (arg_1 ^ u_input.a.x) << (reverseBits(global1.c.x) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1) >> (~vec2<u32>(arg_1, 33389u) % vec2<u32>(32u)), u_input.a.xy), (arg_1 & _wgslsmith_mod_u32(u_input.c.x, 4294967295u)) & 84731u), global1.d, _wgslsmith_f_op_vec3_f32(ceil(global1.e)));
    var var_2 = var_1.d.x;
    return Struct_1(abs(var_1.a), true, ~vec4<u32>(global1.c.x, ~_wgslsmith_mult_u32(global1.c.x, 4294967295u), firstLeadingBit(_wgslsmith_clamp_u32(32644u, arg_1, arg_1)), arg_1), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_add_i32(arg_3, var_1.a), global1.a, var_1.d.x, countOneBits(global1.a))), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(var_1.a, arg_3, 2147483647i, global1.a)), vec4<i32>(_wgslsmith_dot_vec2_i32(global1.d.yz, var_1.d.xy), -var_1.a, -12107i, countOneBits(-28216i)), global1.d)), vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(arg_3, arg_0, vec4<u32>(1u, global1.c.x, 1u, 17793u), vec4<i32>(arg_3, -1i, 47976i, 0i), var_1.e), Struct_1(43857i, arg_0, var_1.c, global1.d, vec3<f32>(1000f, arg_2, -127f)), Struct_1(global1.d.x, global1.b, vec4<u32>(arg_1, 38837u, global1.c.x, 0u), var_1.d, vec3<f32>(global1.e.x, var_1.e.x, 1346f)), Struct_2(vec2<f32>(var_1.e.x, 1794f), var_1.e.x, Struct_1(var_1.d.x, true, u_input.c, vec4<i32>(global1.d.x, -35103i, global1.d.x, -67685i), vec3<f32>(-1312f, -573f, 288f))))) * arg_2), _wgslsmith_f_op_f32(func_2(Struct_1(var_1.a, true, u_input.c, vec4<i32>(11833i, 1i, global1.a, 0i), var_1.e), Struct_1(-26635i, global1.b, vec4<u32>(4294967295u, u_input.a.x, 4500u, 0u), var_1.d, vec3<f32>(-1121f, 1263f, -1312f)), Struct_1(0i, false, vec4<u32>(0u, 10001u, 4294967295u, var_1.c.x), global1.d, vec3<f32>(198f, arg_2, global1.e.x)), Struct_2(vec2<f32>(1180f, -1000f), arg_2, Struct_1(-22206i, global1.b, u_input.a, var_1.d, global1.e)))), global1.b)), -891f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_3.e.xx, arg_1.e.yy)));
    global1 = func_1(arg_1.b | (global1.b | all(vec2<bool>(true, true))), ~0u, _wgslsmith_f_op_f32(-200f + 277f), ~(_wgslsmith_clamp_i32(~(-4800i), -2147483647i, global1.d.x) & _wgslsmith_dot_vec4_i32(firstTrailingBit(arg_1.d), ~arg_3.d)));
    global0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(func_1(arg_1.b, 3099u, func_1(arg_3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30954u, arg_1.c.x, global1.c.x), vec4<u32>(16546u, u_input.b, u_input.a.x, 11300u)), _wgslsmith_f_op_f32(trunc(arg_1.e.x)), ~7594i).e.x, arg_3.a).a, arg_1.d.x), ~(~(-global1.d.x)));
    var var_1 = 9535i;
    var var_2 = Struct_2(global1.e.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-974f)))) - -1000f), arg_3);
    return abs(~(~(~global1.c.x << ((1u & arg_2) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) - _wgslsmith_f_op_f32(global1.e.x + global1.e.x)), _wgslsmith_f_op_f32(min(819f, _wgslsmith_f_op_f32(global1.e.x - 150f))), 295f, _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, global1.e.x, global1.e.x, 261f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, 539f, 313f, 255f) + vec4<f32>(1037f, global1.e.x, -119f, global1.e.x))) - vec4<f32>(-390f, 1884f, _wgslsmith_f_op_f32(sign(global1.e.x)), _wgslsmith_f_op_f32(abs(310f))))), _wgslsmith_div_u32(_wgslsmith_mult_u32(func_4(_wgslsmith_f_op_f32(-global1.e.x), func_1(global1.b, 32952u, global1.e.x, global1.d.x), ~62431u, func_1(global1.b, 4318u, 595f, global1.d.x)), global1.c.x), func_4(_wgslsmith_f_op_f32(func_2(Struct_1(-12353i, true, u_input.c, global1.d, vec3<f32>(880f, global1.e.x, global1.e.x)), Struct_1(2147483647i, global1.b, u_input.a, vec4<i32>(-1i, global1.d.x, global1.d.x, 0i), vec3<f32>(222f, 474f, 1386f)), Struct_1(global1.a, global1.b, global1.c, global1.d, global1.e), Struct_2(vec2<f32>(-1316f, -407f), global1.e.x, Struct_1(2310i, true, vec4<u32>(27494u, 41608u, 1u, 1u), global1.d, vec3<f32>(251f, global1.e.x, global1.e.x))))), Struct_1(global1.a, false, vec4<u32>(21742u, 12955u, u_input.c.x, u_input.c.x), global1.d, global1.e), u_input.b, Struct_1(-2147483647i, global1.b, global1.c, vec4<i32>(32411i, -7919i, -23689i, 2147483647i), global1.e)) >> (~7975u % 32u)), _wgslsmith_sub_u32(1u, ~u_input.c.x), -(func_3(!vec4<bool>(global1.b, true, global1.b, false), vec3<i32>(-34094i, global1.a, global1.a) ^ vec3<i32>(global1.d.x, global1.a, 1058i), Struct_1(global1.a, global1.b, u_input.c, vec4<i32>(global1.a, 264i, global1.a, global1.d.x), global1.e)) >> (~u_input.a.x % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(666f * 2033f))), global1.e.x, global1.e.x)));
}

