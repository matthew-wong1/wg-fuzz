struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = arg_1.b >> (~(u_input.a.x | firstTrailingBit(arg_0.c.d)) % 32u);
    var var_1 = Struct_3(arg_1.d, ~_wgslsmith_sub_u32(u_input.a.x, 0u), Struct_1(true, (_wgslsmith_sub_i32(arg_0.d.x, 38846i) | _wgslsmith_mult_i32(-20053i, -8935i)) << (_wgslsmith_div_u32(arg_0.b << (arg_0.b % 32u), ~u_input.c.x) % 32u), arg_1.c.c, ~56164u, _wgslsmith_f_op_f32(f32(-1f) * -1443f)), any(!(!vec3<bool>(arg_0.a, arg_0.c.a, true))), _wgslsmith_f_op_f32(trunc(arg_0.c.e)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(863f - _wgslsmith_f_op_f32(arg_1.c.c - 483f)))));
    var var_2 = Struct_3(vec4<i32>(select(arg_0.e, i32(-1i) * -arg_1.c.b, !(!var_1.d)), abs(~min(var_1.a.x, var_1.c.b)), arg_0.d.x, -2147483647i), ~0u, Struct_1(var_1.c.a, max(-1242i, 39417i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.e)) + arg_1.c.e)), _wgslsmith_sub_u32(~u_input.b.x, 71116u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.e)))), select(!all(vec3<bool>(false, arg_0.a, false)), any(vec3<bool>(any(vec3<bool>(var_1.e, false, arg_0.c.a)), any(vec4<bool>(true, false, var_1.d, arg_0.a)), var_1.d)), var_1.d), ~(-13161i) > ~min(_wgslsmith_dot_vec2_i32(arg_0.d.wx, vec2<i32>(arg_1.c.b, -2147483647i)), -var_1.c.b));
    let var_3 = reverseBits(max(vec3<u32>(arg_1.c.d, select(var_2.c.d, var_2.b, arg_0.c.a), _wgslsmith_mod_u32(1u, var_2.b)), firstTrailingBit(vec3<u32>(u_input.d, 0u, 4294967295u)))) >> (u_input.c % vec3<u32>(32u));
    var_1 = Struct_3(vec4<i32>(-10392i, arg_1.d.x, -37153i, -(86058i << (var_3.x % 32u))), 64661u, Struct_1(-6410i != (i32(-1i) * -arg_0.e), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-527f)), 1271f, arg_1.a)) - -2177f), _wgslsmith_sub_u32(18991u, var_1.b) | max(~1u, 40236u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1123f))))), arg_1.c.a, min(select(4294967295u, arg_0.b, arg_1.a), 5577u) == select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 287u, var_1.c.d, 53293u), vec4<u32>(0u, 47470u, 110365u, var_1.b)), ~(arg_1.c.d & var_2.c.d), true));
    return arg_1.c.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    let var_0 = Struct_2(all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, u_input.c.x >= u_input.b.x, u_input.b.x == 68172u), !func_3(Struct_2(true, 53022u, Struct_1(true, -2147483647i, -1000f, u_input.c.x, 534f), vec4<i32>(2147483647i, 20516i, 1i, 1i), 40082i), Struct_2(false, u_input.b.x, Struct_1(false, 2147483647i, 677f, u_input.a.x, arg_0.x), vec4<i32>(-30596i, -40526i, 1i, -2147483647i), -3090i)))), u_input.c.x, Struct_1(true, _wgslsmith_sub_i32(31825i, ~1i), 1000f, 4294967295u, arg_1), min(vec4<i32>(75522i, -firstLeadingBit(0i), abs(2147483647i), -1i), select(~vec4<i32>(1i, 38461i, 0i, 18022i), vec4<i32>(1i, 39421i, 1i, 17322i), vec4<bool>(true, true, true, true)) << (vec4<u32>(9209u, ~4294967295u, u_input.d << (59684u % 32u), u_input.a.x) % vec4<u32>(32u))), 1i);
    let var_1 = 206f;
    var var_2 = Struct_1(!select(any(select(vec3<bool>(var_0.c.a, true, var_0.a), vec3<bool>(false, var_0.c.a, false), var_0.c.a)), false, !(var_0.c.a || true)), 1i, _wgslsmith_f_op_f32(-var_0.c.e), min(var_0.c.d, var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1777f - _wgslsmith_f_op_f32(ceil(377f))))) * 810f));
    var var_3 = Struct_4(vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(22788u, 57612u, var_0.b, u_input.c.x)), (vec4<u32>(20003u, u_input.a.x, 87377u, 4294967295u) << (vec4<u32>(var_0.c.d, 42977u, 0u, var_2.d) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 86743u, var_2.d, 115499u), vec4<u32>(u_input.a.x, 103753u, var_0.b, var_0.c.d))), firstLeadingBit(_wgslsmith_add_u32(u_input.d | var_0.c.d, _wgslsmith_mod_u32(var_0.b, var_2.d))), var_2.d, 1u), -max(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-34576i, var_0.e), var_0.d.yx), var_2.b), var_0.c.b));
    var var_4 = arg_0.xx;
    return _wgslsmith_f_op_f32(var_0.c.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-374f, arg_1)), var_2.e))))));
}

fn func_4(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_4(max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 15433u), u_input.b.xz), ~abs(1u), 102986u, ~(~u_input.a.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, 21797u, u_input.c.x), vec4<u32>(u_input.d, u_input.b.x, u_input.d, 22802u)) | _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, u_input.d, u_input.b.x, 4294967295u)), ~vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d))), 0i);
    let var_1 = abs(firstLeadingBit(max(_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 9132u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.a.x, u_input.d), vec3<bool>(false, true, true)), ~vec3<u32>(0u, 0u, 95218u)), u_input.b)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -322f);
    var var_3 = 1i;
    var_3 = _wgslsmith_mod_i32(var_0.b ^ abs(_wgslsmith_div_i32(var_0.b, var_0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(var_0.b, var_0.b)), ~var_0.b | -8008i, min(1i, var_0.b | -2147483647i)), countOneBits(-(vec3<i32>(-1i, 10007i, 2147483647i) ^ vec3<i32>(var_0.b, var_0.b, 0i)))));
    return Struct_2(select(any(vec3<bool>(true, true, true)), all(vec4<bool>(all(vec3<bool>(true, false, true)), any(vec2<bool>(false, true)), 22227u >= var_1.x, true)), !select(func_3(Struct_2(false, var_1.x, Struct_1(true, -1i, arg_0, 32972u, 271f), vec4<i32>(-26977i, var_0.b, var_0.b, var_0.b), var_0.b), Struct_2(true, 64140u, Struct_1(false, var_0.b, arg_0, 35302u, 852f), vec4<i32>(-7199i, 1i, var_0.b, var_0.b), -1i)), true, true)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(var_0.a, var_0.a), min(vec4<u32>(_wgslsmith_mod_u32(0u, 61969u), abs(24184u), var_0.a.x, var_1.x & 33216u), ~firstLeadingBit(vec4<u32>(19012u, var_0.a.x, u_input.d, 21000u)))), Struct_1(select(true, !(var_0.b >= var_0.b), true), -(var_0.b | _wgslsmith_div_i32(-2147483647i, 549i)), 1000f, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(63885u, 13163u, 1u), 86116u << (u_input.d % 32u)), -977f), vec4<i32>(abs(max(_wgslsmith_mult_i32(var_0.b, var_0.b), var_0.b | 0i)), firstTrailingBit(4509i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-17684i, var_0.b, -2147483647i, 0i), vec4<i32>(0i, var_0.b, var_0.b, var_0.b)), vec4<i32>(var_0.b, -11940i, var_0.b, var_0.b)), max(vec4<i32>(1i, var_0.b, -2147483647i, 0i), -vec4<i32>(2147483647i, 2147483647i, -48665i, 14592i))), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b, 32444i, -12928i), vec3<i32>(var_0.b, var_0.b, var_0.b))), vec3<i32>(~var_0.b, ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, var_0.b), vec3<i32>(28124i, var_0.b, 12206i))))), var_0.b);
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(720f * -508f) * _wgslsmith_f_op_f32(trunc(472f))) - -793f) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1680f, -1073f, -2105f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-653f, 250f, 148f))), _wgslsmith_f_op_f32(f32(-1f) * -517f)))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.e);
    var var_3 = _wgslsmith_clamp_vec2_u32(abs(u_input.c.zx & ~u_input.a.xy), abs(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xy, u_input.b.zy) >> (u_input.b.zz % vec2<u32>(32u)), vec2<u32>(0u, u_input.a.x) ^ vec2<u32>(42152u, 31456u))), _wgslsmith_clamp_vec2_u32(countOneBits(abs(u_input.a.zz) | _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), u_input.b.xz)), vec2<u32>(0u, 0u ^ u_input.a.x), ~u_input.c.zz));
    var_3 = ~reverseBits(reverseBits(_wgslsmith_mod_vec2_u32(~u_input.c.yx, reverseBits(vec2<u32>(4294967295u, 25375u)))));
    return var_1.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.e)), arg_1.e)));
    let var_1 = Struct_3(select(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-58957i, -86819i, arg_1.b, arg_0.b), vec4<i32>(-1895i, arg_0.b, -2147483647i, 0i)), ~(-37128i << (arg_1.d % 32u)), arg_0.b, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-55648i, -24869i, arg_1.b, arg_0.b), vec4<i32>(-20236i, 20057i, arg_0.b, 2577i)), vec4<i32>(arg_1.b, -2147483647i, arg_1.b, -10875i))), (max(vec4<i32>(10795i, arg_0.b, arg_0.b, 2913i), vec4<i32>(0i, arg_1.b, -27924i, 17697i)) | abs(vec4<i32>(-2147483647i, -5206i, 27661i, arg_1.b))) >> (~max(vec4<u32>(1u, 16678u, 1u, arg_1.d), vec4<u32>(1u, 4881u, 1u, u_input.a.x)) % vec4<u32>(32u)), func_3(Struct_2(true, 0u, arg_1, vec4<i32>(-2147483647i, arg_1.b, arg_0.b, 2147483647i), arg_0.b), func_4(1000f)) | !any(vec2<bool>(arg_1.a, arg_1.a))), _wgslsmith_mult_u32(arg_1.d, ~(~(~u_input.c.x))), func_1(), !any(vec2<bool>(arg_1.e >= arg_0.e, true)), arg_0.a);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(134f, _wgslsmith_f_op_f32(254f - func_4(var_1.c.c).c.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.c, 669f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-773f, -835f) * -1601f)), -383f, -1673f);
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    let var_4 = 2147483647i;
    return Struct_2(!(!arg_0.a), ~arg_0.d >> (func_1().d % 32u), func_4(_wgslsmith_f_op_f32(-var_2.x)).c, -select(vec4<i32>(min(var_4, 24853i), min(-36309i, -15050i), var_4 << (var_1.c.d % 32u), 43639i), vec4<i32>(reverseBits(arg_1.b), -arg_0.b, _wgslsmith_sub_i32(1i, -8820i), select(-41123i, var_4, false)), all(vec3<bool>(arg_0.a, arg_1.a, false))), _wgslsmith_dot_vec2_i32(max(abs(_wgslsmith_mod_vec2_i32(var_1.a.zy, vec2<i32>(0i, var_1.a.x))), -vec2<i32>(arg_1.b, var_1.a.x) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_4), var_1.a.zy)), vec2<i32>(arg_1.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 18786i), var_1.a.xyz), arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(abs(4294967295u), u_input.c.x, 1276u);
    let var_1 = func_5(func_1(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-439f * -208f))), 1i, _wgslsmith_f_op_f32(f32(-1f) * -2487f), _wgslsmith_add_u32(var_0.x, ~39002u) | ~25438u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-405f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(608f)) + 547f)))));
    var_0 = u_input.b;
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(21034i, _wgslsmith_add_i32(1i, var_1.c.b) | abs(i32(-1i) * -2147483647i)), var_1.d.wz);
    let var_3 = -2147483647i;
    var var_4 = var_1;
    var var_5 = var_4.c;
    let var_6 = vec3<bool>(var_1.c.a, ((var_4.b | (var_4.c.d & 1u)) == ~(~u_input.c.x)) & (true & func_5(func_1(), Struct_1(false, var_3, var_4.c.e, u_input.b.x, var_1.c.c)).c.a), func_5(Struct_1(false, ~select(var_3, -9199i, var_1.c.a), func_5(Struct_1(true, var_1.d.x, var_1.c.c, 28448u, -642f), func_4(204f).c).c.c, ~_wgslsmith_div_u32(30490u, var_1.b), func_1().c), var_1.c).c.a);
    var var_7 = var_1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

