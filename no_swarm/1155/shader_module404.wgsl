struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> vec3<f32> {
    let var_0 = vec2<u32>(57329u, 0u);
    var var_1 = !all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.x, arg_0.x, -470f, 320f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1.e, arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, arg_0.x, arg_0.x, arg_1.e))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1608f, -836f, arg_0.x, arg_1.a.x)))), vec4<f32>(-681f, 1000f, _wgslsmith_f_op_f32(round(arg_1.a.x)), _wgslsmith_f_op_f32(274f + arg_1.a.x))), true)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.e, arg_1.e, -525f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 684f, -1732f, 1000f) + vec4<f32>(-256f, -775f, arg_0.x, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(398f, 685f, -227f, arg_1.e) - vec4<f32>(arg_0.x, arg_1.a.x, -254f, -1446f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1013f, arg_0.x, 455f, 1000f))))), all(vec2<bool>(true, true)))));
    let var_3 = var_2.zw;
    var var_4 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    return var_2.xxz;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = vec3<f32>(arg_0, -420f, _wgslsmith_f_op_f32(select(-1103f, _wgslsmith_f_op_f32(-arg_0), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), false)))));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 151f, var_0.x) + vec3<f32>(arg_0, -1281f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -435f, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, 197f)))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-661f, _wgslsmith_f_op_f32(ceil(-182f)), _wgslsmith_f_op_f32(step(arg_0, -1182f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -405f, var_0.x)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(2749f, arg_0, 2089f)), _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(872f, -1000f, -308f), Struct_2(var_0.yy, 54004u, 0i, u_input.c, var_0.x), 29885u)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, arg_0, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(max(-687f, 1323f)), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(2572f, arg_0)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(414f + -1617f), 510f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-891f, var_0.x, true)) + _wgslsmith_f_op_f32(max(-574f, arg_0))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1012f, arg_0, arg_0) + vec3<f32>(165f, arg_0, 968f)), Struct_2(vec2<f32>(-1111f, 735f), 0u, 2147483647i, u_input.c, -181f), 0u)).x)));
    let var_1 = max(firstTrailingBit(~countOneBits(u_input.b.yy)) | -u_input.b.zx, vec2<i32>(u_input.a, firstLeadingBit(~(~(-1i)))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1396f), -577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-154f)) - 1885f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(790f, 146f, arg_0), vec3<f32>(354f, var_0.x, var_0.x)))))) - vec3<f32>(733f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-962f, 813f)) + _wgslsmith_f_op_f32(ceil(arg_0))), 1f)), false));
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.yy))), ~abs(vec2<u32>(~u_input.c, ~4294967295u)), u_input.b.zyy, abs(_wgslsmith_mult_u32(4294967295u, ~(u_input.c >> (u_input.c % 32u)))));
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = (true & any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))) || true;
    let var_1 = _wgslsmith_f_op_f32(-299f - _wgslsmith_f_op_f32(-arg_0.a.x));
    var_0 = true;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1026f, var_1), _wgslsmith_f_op_vec2_f32(-arg_0.a))), _wgslsmith_f_op_vec2_f32(-arg_0.a))), 4294967295u, arg_0.c.x << (1u % 32u), countOneBits(~u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
    let var_3 = 33295u;
    return vec3<u32>(u_input.c, ~u_input.c, _wgslsmith_mult_u32(arg_0.b.x, u_input.c));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    var var_1 = ~((func_4(func_2(arg_1.x)) << (vec3<u32>(20268u, _wgslsmith_div_u32(24323u, 5816u), arg_2.x) % vec3<u32>(32u))) >> (~(~vec3<u32>(arg_3.d, var_0.b.x, var_0.b.x)) % vec3<u32>(32u)));
    var_0 = func_2(arg_1.x);
    var_1 = vec3<u32>(4294967295u, _wgslsmith_add_u32(arg_3.d | 4294967295u, arg_2.x), min(u_input.c, ~(arg_3.b.x << (~76890u % 32u))));
    let var_2 = _wgslsmith_sub_vec3_i32(u_input.b.xxy, vec3<i32>(var_0.c.x, firstTrailingBit(-_wgslsmith_div_i32(13398i, 3560i)), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-47183i, -1i), max(4040i, 0i)), -select(u_input.a, arg_3.c.x, false))));
    return ~_wgslsmith_mod_u32((max(var_1.x, arg_3.d) & 0u) << (~3535u % 32u), _wgslsmith_mult_u32(abs(57741u), ~u_input.c));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(-1304f);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -626f);
    var var_2 = arg_0;
    var var_3 = (max(_wgslsmith_mult_vec3_u32(max(vec3<u32>(4294967295u, 2426u, u_input.c), vec3<u32>(var_2.b, arg_1.b.x, 1u)), vec3<u32>(108u, 8143u, var_0.b.x) & vec3<u32>(1u, var_2.b, var_0.b.x)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.c, 4294967295u), arg_1.b.x, func_1(vec2<bool>(true, true), var_0.a, vec2<u32>(1u, arg_1.d), arg_1))) | _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(42054u, var_2.d, u_input.c), vec3<u32>(0u, 53589u, u_input.c)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(10457u, u_input.c, 57859u), vec3<u32>(var_2.b, 4294967295u, 1u)))) >> (~vec3<u32>(var_0.b.x, abs(min(4294967295u, var_2.d)), func_4(arg_1).x) % vec3<u32>(32u));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_0.a, var_2.a)), _wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(var_2.a.x, var_0.a.x)), arg_0.b < 40204u)) * _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1552f, arg_1.a.x), arg_1.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)) * vec2<f32>(arg_1.a.x, 1851f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e, -1369f) * _wgslsmith_f_op_vec2_f32(-arg_1.a))))), var_0.b, -_wgslsmith_clamp_vec3_i32(var_0.c, -vec3<i32>(arg_0.c, var_2.c, arg_1.c.x) ^ countOneBits(vec3<i32>(var_2.c, 0i, var_2.c)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c.x, arg_0.c, arg_1.c.x) & u_input.b.xyw, var_0.c)), var_3.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1409f, 148f), vec2<f32>(-851f, 1060f)) - vec2<f32>(-469f, 1951f)), vec2<f32>(-131f, -1490f))), countOneBits(~func_1(vec2<bool>(false, true), vec2<f32>(-125f, 104f), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(530f, -1216f), vec2<u32>(1u, u_input.c), u_input.b.wwx, u_input.c))), -_wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.b.wz), firstTrailingBit(abs(20250u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1448f * -111f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(213f + 308f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-960f, 459f))), ~func_4(func_2(772f)).zz, firstTrailingBit(vec3<i32>(u_input.a, u_input.d, 2147483647i)) >> (~(~vec3<u32>(u_input.c, 54198u, 78394u)) % vec3<u32>(32u)), abs(u_input.c)));
    var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -275f)));
    var var_1 = 1i;
    let var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -960f)))), 1815f));
    let var_3 = vec2<u32>(func_4(var_2).x, var_0.d);
    var_1 = -(~1i);
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -724f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -738f)), var_0.a))), var_0.b >> (_wgslsmith_sub_vec2_u32(vec2<u32>(35685u, ~19659u), vec2<u32>(_wgslsmith_add_u32(var_3.x, var_2.b.x), u_input.c)) % vec2<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(17530i | u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(14993i, 2147483647i, var_2.c.x), ~vec3<i32>(50416i, var_2.c.x, -24597i)), _wgslsmith_mod_i32(0i, abs(1i))), func_2(var_2.a.x).c), var_3.x);
    var var_4 = _wgslsmith_sub_i32(var_0.c.x, -(9524i & abs(var_2.c.x & var_2.c.x)));
    let var_5 = 4294967295u == ~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 26182u, 91779u), vec3<u32>(var_2.b.x, 1u, 19444u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, 0u, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d, 44160u, var_0.b.x), vec3<u32>(var_0.b.x, 0u, 4355u), vec3<u32>(var_0.d, 4294967295u, var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

