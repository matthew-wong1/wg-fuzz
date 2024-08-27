struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = vec4<bool>(!(!select(any(vec2<bool>(false, false)), true, true)), any(vec2<bool>(true, true)), !(u_input.c > _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 9140i, -61662i), vec3<i32>(0i, -15611i, u_input.c)), -u_input.c)), true);
    let var_1 = Struct_4(firstLeadingBit(select(vec3<u32>(~1u, min(1u, 0u), ~0u), vec3<u32>(1u, 1u, _wgslsmith_clamp_u32(1u, 120477u, 0u)), true | (u_input.a.x < -23364i))), !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 462f, var_0.x))) - -393f)), var_0.xww);
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.x, _wgslsmith_dot_vec3_u32(var_1.a, var_1.a)), var_1.a), var_1.a.x << (min(~var_1.a.x, var_1.a.x) % 32u), countOneBits(min(abs(0u), 1u)), var_1.a.x);
    var var_3 = _wgslsmith_dot_vec4_i32(~(min(vec4<i32>(-27642i, -15053i, 2147483647i, -1i), vec4<i32>(6598i, -38913i, u_input.b, u_input.a.x)) << (vec4<u32>(50696u, 8535u, 0u, var_2.x) % vec4<u32>(32u))) ^ vec4<i32>(~select(-2147483647i, -24065i, var_0.x), firstLeadingBit(max(u_input.b, u_input.b)), 1i, ~u_input.a.x << (_wgslsmith_clamp_u32(var_2.x, 4294967295u, var_2.x) % 32u)), countOneBits(select(vec4<i32>(u_input.c, u_input.c, -19690i, -1i), vec4<i32>(-u_input.b, _wgslsmith_mult_i32(-8764i, u_input.c), u_input.c, _wgslsmith_sub_i32(u_input.b, -15189i)), select(vec4<bool>(true, true, true, true), var_0, !vec4<bool>(var_1.b, false, false, var_0.x)))));
    var_3 = 0i;
    return var_1.c;
}

fn func_4(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = Struct_5(select(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 5428u, 13825u), vec3<u32>(3167u, 29115u, 7844u))), vec3<u32>(_wgslsmith_mod_u32(1u, ~55171u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 44607u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 38308u))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 0u)))), select(false, !any(vec3<bool>(true, false, true)), true)), firstTrailingBit(min(min(_wgslsmith_clamp_u32(52445u, 61788u, 3043u), ~34409u), abs(~1u))), Struct_1(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -49275i, u_input.a.x, u_input.c), vec4<i32>(-25279i, u_input.a.x, u_input.c, 0i)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, false, false)), all(vec2<bool>(false, false)))), arg_0, (all(vec2<bool>(true, true)) | true) | true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-133f, arg_0.x) * arg_0)))), !(firstLeadingBit(~0i) <= -u_input.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 272f, -629f, -151f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-424f, 355f, var_0.c.c.x, arg_0.x) + vec4<f32>(1000f, var_0.c.e.x, 180f, 1174f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 363f, 742f, var_0.c.c.x) + vec4<f32>(1501f, var_0.c.c.x, -312f, -367f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(660f, arg_0.x, var_0.c.e.x, arg_0.x))))))));
    let var_2 = Struct_3(Struct_2(Struct_1(select(var_0.c.a, ~var_0.c.a, !vec4<bool>(true, true, var_0.c.b.x, false)), var_0.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xx * vec2<f32>(-2182f, 1000f))), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.e.x, var_0.c.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), all(vec3<bool>(false, false, false))))), var_0.c, max(u_input.c, u_input.c), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 0i, var_0.c.a.x, 3458i), _wgslsmith_clamp_vec4_i32(var_0.c.a, var_0.c.a, vec4<i32>(u_input.b, var_0.c.a.x, u_input.b, 23521i))), select(vec3<bool>(true, var_0.d, true), select(var_0.c.b, vec3<bool>(var_0.d, var_0.c.b.x, var_0.c.d), var_0.d), vec3<bool>(var_0.d, var_0.c.d, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-645f, 1839f)), var_0.d != true, var_1.yx)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, arg_0.x))), arg_0.x) - var_1.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-423f + _wgslsmith_f_op_f32(1108f + var_0.c.e.x)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))), Struct_2(var_0.c, var_0.c, -max(_wgslsmith_sub_i32(-1i, 7607i), u_input.a.x), Struct_1(max(abs(var_0.c.a), -var_0.c.a), vec3<bool>(var_0.d & true, any(vec2<bool>(var_0.c.b.x, false)), true), var_0.c.e, var_0.d, arg_0)), _wgslsmith_div_i32((u_input.a.x & ~var_0.c.a.x) & ~2147483647i, 17326i));
    let var_3 = abs(~48678i);
    let var_4 = -1234f;
    return ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(abs(var_0.a.x), var_0.b, ~var_0.b, 4294967295u << (var_0.a.x % 32u)), ~vec4<u32>(4294967295u, var_0.b, var_0.b, 1u)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.x, 1u, 4294967295u, 23034u), abs(vec4<u32>(arg_2.a.x, arg_2.a.x, 0u, arg_2.a.x))), ~(~vec4<u32>(arg_2.a.x, arg_2.a.x, 28652u, 4781u))), ~(~vec4<u32>(arg_2.a.x, 4294967295u, 77304u, arg_2.a.x)));
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.c.x, _wgslsmith_f_op_f32(-554f - -1314f))) > _wgslsmith_f_op_f32(-971f * _wgslsmith_f_op_f32(-139f * arg_3.a.d.e.x))) && (true | any(vec4<bool>(true, arg_2.d.x || false, 51124u >= var_0.x, arg_2.b)));
    let var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(arg_3.b, arg_0.a.c.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(161f + 740f)))), _wgslsmith_f_op_f32(f32(-1f) * -406f)));
    var var_3 = reverseBits(vec3<i32>(_wgslsmith_add_i32(1i, arg_1), 2147483647i, ~0i) | _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(arg_3.a.c, arg_1, arg_3.d.b.a.x)), vec3<i32>(_wgslsmith_sub_i32(-15545i, -6467i), ~arg_1, -u_input.b)));
    var_3 = _wgslsmith_add_vec3_i32(arg_0.a.a.zwx, -arg_0.a.a.wxx);
    return arg_3.d.a.a.zzz;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = vec3<u32>(4294967295u << (~_wgslsmith_clamp_u32(abs(arg_0.a.x), firstLeadingBit(4294967295u), 17443u) % 32u), ~arg_0.a.x, _wgslsmith_add_u32(11402u, _wgslsmith_mod_u32(~arg_0.a.x, reverseBits(~arg_0.a.x))));
    var var_1 = arg_1.b.x;
    let var_2 = abs(-_wgslsmith_add_i32(41324i, _wgslsmith_dot_vec3_i32(vec3<i32>(23305i, 1i, -57713i), func_2(Struct_2(Struct_1(vec4<i32>(u_input.b, arg_1.a.x, -3496i, u_input.a.x), vec3<bool>(arg_0.b, arg_1.d, false), vec2<f32>(1167f, arg_0.c), false, arg_1.e), arg_1, -2147483647i, arg_1), u_input.b, arg_0, Struct_3(Struct_2(arg_1, arg_1, u_input.b, arg_1), arg_1.e.x, vec4<f32>(arg_0.c, 334f, -150f, arg_0.c), Struct_2(arg_1, Struct_1(arg_1.a, vec3<bool>(false, false, arg_1.b.x), vec2<f32>(903f, arg_0.c), arg_0.d.x, vec2<f32>(-1366f, 456f)), u_input.a.x, Struct_1(vec4<i32>(u_input.a.x, u_input.c, -41610i, -2147483647i), vec3<bool>(arg_1.b.x, arg_1.d, true), vec2<f32>(arg_1.c.x, arg_0.c), true, vec2<f32>(arg_1.c.x, arg_0.c))), -1i)))));
    var var_3 = 0i;
    return ~vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(arg_0.a.zz, var_0.xz | arg_0.a.yz) >> (22670u % 32u), var_0.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_5) -> vec3<bool> {
    let var_0 = arg_1.c.a.zx;
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.a.x, _wgslsmith_clamp_i32(11279i, _wgslsmith_clamp_i32(arg_1.c.a.x, 10847i, 52820i), 33623i), ~_wgslsmith_add_i32(15997i, u_input.c), 11082i), arg_1.c.a), arg_1.c.a, vec4<i32>(-(~(-63362i)), -29008i, var_0.x, _wgslsmith_div_i32(var_0.x, ~_wgslsmith_mult_i32(57748i, 1i))));
    var var_2 = u_input.a;
    var var_3 = Struct_4(_wgslsmith_mod_vec3_u32(~arg_0.xwy, ~(~arg_0.yzx) | (firstLeadingBit(arg_1.a) & ~arg_0.zyw)), ((3337u > arg_0.x) & !all(vec4<bool>(arg_1.c.b.x, arg_1.d, false, arg_1.c.d))) || all(select(select(vec4<bool>(arg_1.c.d, arg_1.d, arg_1.c.b.x, true), vec4<bool>(arg_1.c.d, arg_1.d, arg_1.d, arg_1.d), vec4<bool>(arg_1.c.d, false, true, false)), select(vec4<bool>(true, true, true, arg_1.d), vec4<bool>(false, true, arg_1.c.d, arg_1.c.d), true), any(vec3<bool>(false, arg_1.c.b.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-671f, _wgslsmith_f_op_f32(-arg_1.c.e.x))), arg_1.c.b);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1140f, var_3.c, arg_1.d)))));
    return vec3<bool>(true, true, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = Struct_4(~abs(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 5634u, var_0), vec3<u32>(3619u, var_0, var_0))), false, _wgslsmith_f_op_f32(1f + -402f), func_5(~vec4<u32>(min(47320u, var_0), ~2080u, ~4294967295u, 0u), Struct_5(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, 25446u), vec3<u32>(var_0, var_0, var_0)), func_1(Struct_4(vec3<u32>(var_0, var_0, 1u), true, -222f, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(11438i, u_input.b, u_input.c, u_input.c), vec3<bool>(false, false, true), vec2<f32>(1390f, 693f), true, vec2<f32>(-841f, 180f)))), func_4(vec2<f32>(-768f, 661f)).x, Struct_1(vec4<i32>(u_input.b, u_input.c, 0i, u_input.b) | vec4<i32>(u_input.b, -9633i, u_input.c, -1i), vec3<bool>(false, true, true), vec2<f32>(-1254f, 129f), true, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2337f, -370f)))), all(vec4<bool>(true, true, true, true)))));
    var var_2 = Struct_1(vec4<i32>(u_input.a.x, min(u_input.a.x, ~u_input.c) ^ ~(-28473i), u_input.b, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.c), vec3<i32>(u_input.c, -2147483647i, -20733i))) | u_input.c), select(var_1.d, !select(vec3<bool>(true, var_1.b, true), select(var_1.d, vec3<bool>(false, true, var_1.b), var_1.d.x), var_1.b), var_1.d), vec2<f32>(var_1.c, _wgslsmith_f_op_f32(sign(var_1.c))), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.c + 843f), _wgslsmith_div_f32(-256f, var_1.c))) * vec2<f32>(580f, -732f)));
    let var_3 = Struct_3(Struct_2(Struct_1(var_2.a, select(!var_2.b, vec3<bool>(var_1.d.x, false, false), true), _wgslsmith_f_op_vec2_f32(round(var_2.c)), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c, var_2.e.x))) * _wgslsmith_f_op_vec2_f32(sign(var_2.c)))), Struct_1(abs(var_2.a), vec3<bool>(var_1.d.x, func_5(vec4<u32>(var_1.a.x, var_0, var_0, 4123u), Struct_5(var_1.a, var_0, Struct_1(var_2.a, vec3<bool>(var_1.d.x, var_2.b.x, true), vec2<f32>(var_2.c.x, var_2.c.x), false, var_2.e), false)).x, var_1.d.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1151f), _wgslsmith_f_op_f32(f32(-1f) * -1184f)), var_1.d.x, _wgslsmith_f_op_vec2_f32(exp2(var_2.e))), 44710i, Struct_1(var_2.a, vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(536f + var_1.c), _wgslsmith_f_op_f32(var_2.e.x + -808f)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c + vec2<f32>(-871f, var_1.c))))), var_1.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, var_2.e.x, 1271f, var_2.c.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1287f, -1097f, -2121f, var_1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2493f, 1139f, 945f, 125f)))))))), Struct_2(Struct_1(var_2.a, func_5(reverseBits(vec4<u32>(var_0, var_1.a.x, var_1.a.x, var_1.a.x)), Struct_5(var_1.a, 41495u, Struct_1(vec4<i32>(-11288i, u_input.c, u_input.b, -36243i), vec3<bool>(true, var_2.b.x, true), vec2<f32>(var_2.e.x, var_1.c), var_2.b.x, vec2<f32>(var_2.e.x, -422f)), true)), var_2.c, var_1.b & false, var_2.c), Struct_1(reverseBits(var_2.a & var_2.a), !vec3<bool>(var_2.b.x, var_1.d.x, var_2.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.e.x, 1232f))) * _wgslsmith_f_op_vec2_f32(ceil(var_2.c))), all(vec4<bool>(var_1.b, var_1.d.x, var_1.b, true)), var_2.e), -16647i, Struct_1(vec4<i32>(u_input.b & -1i, reverseBits(0i), -u_input.a.x, ~(-2147483647i)), vec3<bool>(any(var_1.d), false, 1u != var_0), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, -199f) - var_2.c))), true, vec2<f32>(_wgslsmith_f_op_f32(var_2.e.x + var_1.c), _wgslsmith_f_op_f32(floor(var_1.c))))), var_2.a.x);
    var var_4 = var_2.a.x;
    var_2 = Struct_1(var_2.a, select(!select(vec3<bool>(true, var_3.d.d.d, var_3.d.d.b.x), vec3<bool>(var_3.a.d.b.x, false, var_2.d), var_1.d), !vec3<bool>(true, var_2.b.x, var_2.e.x > -1370f), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1848f, -2543f)), var_3.d.d.c.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -631f) - vec2<f32>(1418f, var_1.c)))), var_2.b.x == !var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.a.b.c, _wgslsmith_f_op_vec2_f32(var_2.c * var_2.e)))));
    let var_5 = var_3.d.a.a.wyz;
    var var_6 = Struct_3(var_3.a, -2720f, var_3.c, Struct_2(var_3.d.b, var_3.a.d, var_3.a.d.a.x, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, var_3.d.c, 0i, var_2.a.x), -vec4<i32>(-10515i, 0i, -8392i, 29845i), var_3.d.b.a), select(var_3.a.b.b, vec3<bool>(var_3.a.d.d, var_1.d.x, var_2.d), var_2.b), _wgslsmith_f_op_vec2_f32(round(var_3.a.a.e)), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(106f, var_2.c.x), var_3.d.a.c, select(true, var_1.d.x, var_3.a.a.d))))), min(0i, countOneBits(var_5.x)));
    var_6 = Struct_3(var_6.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_6.a.b.c.x + -1335f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.a.d.e.x))), var_6.c.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3.c, var_3.c, vec4<bool>(var_1.b, var_1.b, var_6.d.d.b.x, var_6.a.d.b.x))))), vec4<f32>(-1078f, _wgslsmith_f_op_f32(-628f + var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) + _wgslsmith_f_op_f32(f32(-1f) * -455f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_6.d.b.c.x))))), false)), var_3.a, var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -229f))), var_6.c.x, _wgslsmith_add_vec2_i32(min(vec2<i32>(32493i >> (var_1.a.x % 32u), var_3.e), firstTrailingBit(countOneBits(var_2.a.yy))), vec2<i32>(firstLeadingBit(2147483647i), countOneBits(var_5.x)) << (vec2<u32>(var_1.a.x, 52434u) % vec2<u32>(32u))), vec4<i32>(_wgslsmith_add_i32((0i ^ var_3.d.b.a.x) << (~1u % 32u), -19551i), -(-var_3.e ^ abs(var_2.a.x)), -max(var_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 39219i, 11086i, var_3.e), var_3.a.b.a)), -15128i));
}

