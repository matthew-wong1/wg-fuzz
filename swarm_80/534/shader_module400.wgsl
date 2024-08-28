struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = Struct_3(true, vec4<u32>(u_input.d.x, 0u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.b.x, arg_3.b.x, arg_0), vec3<u32>(u_input.b, arg_2, 10060u)), 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1626f, 1936f, arg_3.c.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1678f, -670f, arg_1.d))))) - _wgslsmith_f_op_vec3_f32(exp2(arg_3.d.b))), arg_3.d, !arg_1.b.b.yzw);
    let var_1 = Struct_3(true, vec4<u32>(~4294967295u ^ arg_3.b.x, 4294967295u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, arg_3.b.x, u_input.b), 1u), 1u) & ~select(arg_3.b, select(var_0.b, vec4<u32>(var_0.b.x, arg_0, arg_2, u_input.d.x), vec4<bool>(var_0.a, true, arg_1.b.b.x, var_0.a)), !arg_1.b.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - arg_3.c.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-arg_1.d)) * vec3<f32>(-261f, _wgslsmith_f_op_f32(step(624f, 708f)), arg_3.d.b.x))), Struct_1(!vec3<bool>(arg_1.a != arg_1.e, all(arg_3.d.a.xz), arg_1.b.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, -607f, var_0.c.x))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.b.wxy, var_0.b.zzy), ~arg_3.b.x) >= (~u_input.c.x ^ _wgslsmith_sub_u32(1u, 1u))), !vec3<bool>(!any(vec3<bool>(var_0.d.c, arg_1.b.b.x, false)), true, all(select(arg_1.b.b, vec4<bool>(true, var_0.a, true, true), arg_3.e.x))));
    var var_2 = Struct_1(arg_1.b.b.wxy, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.b.x, var_1.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -544f) - _wgslsmith_f_op_f32(step(-1639f, var_0.d.b.x)))), arg_3.c), arg_3.e.x);
    var var_3 = var_1.b.zz;
    let var_4 = 1u;
    return _wgslsmith_clamp_vec4_u32(max(vec4<u32>(58304u, arg_2, 53729u, var_3.x) << (arg_3.b % vec4<u32>(32u)), vec4<u32>(11432u, 0u, var_0.b.x, 4294967295u)), ~var_1.b, (var_1.b & ~vec4<u32>(1u, 0u, arg_3.b.x, 4294967295u)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_3.x, 4294967295u), var_1.b), vec4<u32>(u_input.b, 12880u, arg_3.b.x, 0u)) % vec4<u32>(32u))) | ~(~_wgslsmith_sub_vec4_u32(select(arg_3.b, arg_3.b, arg_1.b.b), var_1.b));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = 4294967295u;
    let var_1 = Struct_3(!(!((arg_2.b.x || false) || arg_2.b.x)), ~(~func_3(~1u, Struct_4(u_input.a.x, arg_2, u_input.a.yzz, arg_2.a.x, 83206i), ~u_input.d.x, Struct_3(arg_2.b.x, vec4<u32>(0u, 0u, 9877u, 0u), vec3<f32>(556f, arg_2.a.x, arg_2.a.x), Struct_1(arg_2.b.wxx, vec3<f32>(1040f, 934f, arg_2.a.x), false), vec3<bool>(true, arg_2.b.x, false)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.a.x))), 410f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1735f, -241f), 928f))))), Struct_1(!select(select(arg_2.b.zyy, arg_2.b.wwy, vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x)), vec3<bool>(true, arg_2.b.x, arg_2.b.x), !arg_2.b.yyy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1987f, -165f, -1006f), vec3<f32>(545f, -1798f, arg_2.a.x))) + vec3<f32>(-434f, arg_2.a.x, _wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x))), !any(arg_2.b)), !select(arg_2.b.yyx, vec3<bool>(arg_2.b.x, arg_2.b.x, true), select(true, false, true) || false));
    let var_2 = _wgslsmith_div_vec3_u32(u_input.d.yxx, _wgslsmith_clamp_vec3_u32(func_3(reverseBits(24091u), Struct_4(u_input.a.x, Struct_2(vec2<f32>(arg_2.a.x, var_1.c.x), vec4<bool>(false, false, true, false)), vec3<i32>(3485i, arg_1, -16413i), arg_2.a.x, u_input.a.x), u_input.c.x, var_1).zwz, ~vec3<u32>(arg_0, 12460u, arg_0), vec3<u32>(0u, 14424u, var_1.b.x))) >> (abs(var_1.b.xyy & _wgslsmith_clamp_vec3_u32(~u_input.d.zwx, firstLeadingBit(u_input.d.zzy), ~vec3<u32>(var_1.b.x, arg_0, 79966u))) % vec3<u32>(32u));
    var_0 = var_1.b.x;
    let var_3 = vec4<f32>(-473f, _wgslsmith_f_op_f32(f32(-1f) * -579f), -1580f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(-arg_2.a.x)))));
    return _wgslsmith_mult_vec4_i32(select(vec4<i32>(49976i, -u_input.a.x, 1i, 4494i), firstTrailingBit(u_input.a), arg_2.b.x), vec4<i32>(1i, -36469i, -_wgslsmith_div_i32(arg_1, arg_1), ~arg_1) ^ abs(vec4<i32>(u_input.a.x & arg_1, u_input.a.x, -40218i, 1i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = ~(-min(func_2(~49530u, -9111i, Struct_2(arg_1.a, arg_0.b)), select(abs(u_input.a), -vec4<i32>(-1i, 10595i, 0i, 1i), arg_1.b)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-552f, -514f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(905f * -1061f), -2626f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -282f, -1845f) * vec3<f32>(-1174f, -1654f, 155f)))));
    var var_2 = -1042f;
    let var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a.x))), arg_1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-601f, arg_0.a.x, arg_1.a.x), vec3<f32>(603f, arg_1.a.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 783f, 1000f) * vec3<f32>(475f, 887f, arg_0.a.x)))))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(-u_input.a.x >> (_wgslsmith_div_u32(func_1(Struct_2(vec2<f32>(245f, 399f), vec4<bool>(true, true, false, false)), Struct_2(vec2<f32>(-351f, 1155f), vec4<bool>(true, false, true, false))), 38779u) % 32u)), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1024f, 1428f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-722f, -998f), vec2<f32>(853f, -1573f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-660f, -542f))), vec2<f32>(-1000f, -384f))))), vec4<bool>(select(true, true, false) | false, true, 87222u > u_input.d.x, true)), select(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-13766i, u_input.a.x, u_input.a.x), u_input.a.yww), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x) & vec3<i32>(25560i, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec3_i32(u_input.a.zyx, min(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.a.x, -67885i, -59291i))), true) | vec3<i32>(u_input.a.x, abs(-9596i), u_input.a.x), -683f, u_input.a.x);
    var var_1 = Struct_1(select(!var_0.b.b.zxy, !var_0.b.b.zxw, select(!vec3<bool>(true, false, var_0.b.b.x), var_0.b.b.yyy, !var_0.b.b.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(select(-1023f, var_0.d, var_0.b.b.x))) - _wgslsmith_div_f32(184f, 1249f)), -2508f, _wgslsmith_f_op_f32(-var_0.b.a.x)), var_0.b.b.x == (any(vec2<bool>(false, false)) && var_0.b.b.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(var_0.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(798f, var_1.b.x), vec2<f32>(-2228f, var_0.b.a.x))))), var_0.b.b);
    var_1 = Struct_1(!select(select(var_0.b.b.wyy, vec3<bool>(var_0.b.b.x, var_2.b.x, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, !var_1.a.x), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_2.a.x, var_0.d), vec3<f32>(var_1.b.x, var_1.b.x, 734f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.x, -600f, var_2.a.x))) * _wgslsmith_f_op_vec3_f32(abs(var_1.b))))), all(vec2<bool>(select(!var_1.c, all(var_0.b.b), var_2.a.x >= -856f), !var_1.c)));
    var_1 = Struct_1(!vec3<bool>(any(vec4<bool>(var_0.b.b.x, true, var_2.b.x, var_2.b.x)), var_2.b.x, true), _wgslsmith_f_op_vec3_f32(var_1.b + var_1.b), all(vec2<bool>(1f <= var_0.b.a.x, (var_1.a.x & false) || true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, u_input.d.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -379f), -100f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1195f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1140f, var_0.d, false)), var_2.a.x)))), ~u_input.c.x);
}

