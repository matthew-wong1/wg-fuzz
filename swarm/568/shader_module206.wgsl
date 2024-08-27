struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1234f), _wgslsmith_f_op_f32(f32(-1f) * -933f)));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(701f * -1000f), _wgslsmith_f_op_f32(step(-2225f, -1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) - _wgslsmith_f_op_f32(f32(-1f) * -1410f)), _wgslsmith_f_op_f32(step(358f, _wgslsmith_f_op_f32(step(-1362f, -265f)))), arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2911f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-745f - 124f) + _wgslsmith_f_op_f32(1818f * -514f)), _wgslsmith_f_op_f32(floor(-362f)))), true));
    var var_1 = _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(~_wgslsmith_clamp_i32(u_input.b, arg_1.b, -15425i), arg_1.a.x, abs(min(-1876i, 2147483647i)), max(_wgslsmith_sub_i32(1i, arg_1.a.x), 0i)) ^ _wgslsmith_sub_vec4_i32(-max(u_input.c, u_input.c), reverseBits(select(u_input.c, vec4<i32>(-2147483647i, u_input.c.x, u_input.b, 0i), arg_0.x))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -859f);
    let var_3 = vec3<bool>(true, any(select(vec3<bool>(arg_0.x, !arg_0.x, true & arg_0.x), !select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, true)), false)), any(!select(vec4<bool>(true, arg_0.x, false, arg_0.x), select(vec4<bool>(true, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, false)), false)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(550f, -1243f, false))))), 678f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2361f * _wgslsmith_f_op_f32(select(435f, 1000f, arg_0.x)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(597f * 502f))))))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), Struct_1(u_input.c.wxz, u_input.b, 0u))), _wgslsmith_f_op_f32(-409f + 246f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2155f, -1333f))) - _wgslsmith_div_vec2_f32(vec2<f32>(2124f, -1669f), vec2<f32>(1144f, 1743f))))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - 465f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))));
    var var_2 = vec2<u32>(~u_input.e.x, ~firstLeadingBit(~u_input.e.x) & _wgslsmith_clamp_u32(min(1159u, 64030u), ~u_input.e.x, ~(~u_input.e.x)));
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(u_input.a, 15647u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(u_input.e), _wgslsmith_div_vec3_u32(vec3<u32>(45180u, 0u, var_2.x), vec3<u32>(0u, 4294967295u, 4294967295u))), _wgslsmith_mod_u32(~1u, u_input.d), 15130u), max(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(53658u, 0u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u))), vec3<u32>(_wgslsmith_clamp_u32(var_2.x, var_2.x, u_input.e.x), _wgslsmith_sub_u32(var_2.x, 20061u), 0u))), _wgslsmith_mult_u32(u_input.d, min(_wgslsmith_clamp_u32(45702u << (u_input.d % 32u), 4294967295u, u_input.d), ~var_2.x)), max(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(30096u, 0u, u_input.a), vec3<u32>(u_input.a, 0u, var_2.x), vec3<u32>(4294967295u, 49872u, u_input.a))), u_input.e), u_input.e.x << (49110u % 32u)));
    var var_4 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.x) & vec2<u32>(13097u, var_3.x), ~u_input.e.zy), ~var_2.x ^ var_3.x), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.x, var_2.x, var_3.x, 0u), ~vec4<u32>(var_3.x, var_2.x, 4294967295u, 50603u)), 35051u), ~_wgslsmith_div_vec2_u32(~vec2<u32>(var_2.x, 39661u), var_3.yx));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, 638f, var_0.x, var_0.x)))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 32665i, u_input.b, u_input.c.x)), -54142i, u_input.b | u_input.b)), (u_input.c.yxw << (~vec3<u32>(var_4.x, 0u, var_4.x) % vec3<u32>(32u))) ^ -abs(u_input.c.wzw)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec3<i32> {
    let var_0 = ~_wgslsmith_add_vec2_u32(u_input.e.zx, ~vec2<u32>(abs(u_input.a), u_input.e.x));
    var var_1 = arg_3;
    var var_2 = ~arg_3;
    var_1 = ~u_input.c;
    var var_3 = !any(vec2<bool>(all(vec4<bool>(true, true, true, true)), false));
    return vec3<i32>(-23809i, abs(firstTrailingBit(7377i)), var_1.x) >> (select(~vec3<u32>(24421u, ~1u, u_input.e.x), firstLeadingBit(u_input.e), !(~var_0.x <= _wgslsmith_dot_vec2_u32(arg_2.zz, var_0))) % vec3<u32>(32u));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(u_input.c.yxx, -max(u_input.c.x, 2147483647i), ~u_input.a);
    var_0 = Struct_1(~(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(200f, -598f, 885f), vec3<f32>(355f, 855f, -1508f)), func_2(), vec4<u32>(45493u, 4294967295u, 11867u, u_input.e.x) | vec4<u32>(52150u, u_input.d, 1u, 1u), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, u_input.b), u_input.c)) >> (select(_wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(var_0.c, 4294967295u, 1u), vec3<u32>(u_input.e.x, u_input.e.x, var_0.c)), u_input.e, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)) % vec3<u32>(32u))), ~10079i, ~_wgslsmith_mult_u32(24014u, ~(~u_input.a)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2750f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -416f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(478f, _wgslsmith_div_f32(964f, -2223f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), Struct_1(var_0.a, var_0.b, 82173u))))))), _wgslsmith_f_op_f32(f32(-1f) * -315f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1789f, 2644f, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, 904f, -1000f)), true)))))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-reverseBits(var_0.a), select(func_4(var_1, Struct_2(vec4<f32>(var_1.x, var_1.x, 794f, -267f), vec3<i32>(58827i, var_0.b, var_0.b)), vec4<u32>(42771u, u_input.a, var_0.c, 0u), vec4<i32>(u_input.c.x, var_0.a.x, u_input.b, -30957i)), u_input.c.xxy, false)), var_0.a));
    var_0 = Struct_1(func_2().b, -2147483647i, var_0.c);
    return ~(~max(countOneBits(_wgslsmith_add_u32(45911u, u_input.a)), 70597u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~u_input.d), u_input.e.x, 18673u, u_input.d) & ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, u_input.d, 17064u, u_input.a), vec4<u32>(5508u, u_input.e.x, u_input.d, u_input.a) << (vec4<u32>(u_input.d, u_input.d, 75640u, u_input.a) % vec4<u32>(32u))), vec4<u32>(2266u, 0u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.e.x, u_input.e.x), ~u_input.a), 1u) ^ vec4<u32>(_wgslsmith_mod_u32(57347u, 4294967295u) >> (countOneBits(44489u) % 32u), func_1(), 8247u >> (u_input.d % 32u), 55482u));
    var var_1 = Struct_3(Struct_1(vec3<i32>(404i << (~u_input.a % 32u), u_input.c.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.b), vec3<i32>(-19477i, 0i, 13091i))), _wgslsmith_sub_vec2_i32(reverseBits(u_input.c.ww), countOneBits(u_input.c.wx))), ~4294967295u), vec2<u32>(~(~(~u_input.d)), 137u), ~(var_0.x ^ 42659u), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)))));
    let var_2 = vec4<f32>(func_2().a.x, 682f, 558f, _wgslsmith_f_op_f32(-1576f + _wgslsmith_f_op_f32(ceil(1f))));
    var_0 = ~(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, 90899u, 58455u, u_input.a), vec4<u32>(61284u, var_0.x, var_0.x, 1u))));
    var_1 = Struct_3(var_1.a, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, var_0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_0.x), ~vec2<u32>(0u, 19018u))), 11509u, select(vec4<bool>(true, var_1.a.a.x == var_1.a.b, select(4294967295u, u_input.a, true) > _wgslsmith_sub_u32(4294967295u, u_input.e.x), false), var_1.d, var_1.d.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)), func_2().a.x)), var_2.x, _wgslsmith_f_op_f32(abs(var_2.x)), 1474f) - _wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(693f, var_2.x)) * -742f), var_2.x)));
    var_0 = vec4<u32>(~var_0.x, reverseBits(~u_input.a), u_input.d, u_input.d ^ _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.b.x, 528u, 31886u, 39345u)), abs(firstTrailingBit(vec4<u32>(var_1.a.c, 29600u, 1u, 33866u)))));
    var_0 = ~vec4<u32>(var_0.x, abs(20739u), 1u, u_input.d) << ((_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 55189u, u_input.d, 30566u) << (select(vec4<u32>(79072u, 4294967295u, 1u, 1205u), vec4<u32>(u_input.e.x, 0u, 4294967295u, var_1.c), true) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.a, 1u, 1u, var_0.x)) ^ ~vec4<u32>(0u, u_input.e.x, 0u, var_0.x)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, var_1.c, var_0.x, var_1.a.c), ~vec4<u32>(4294967295u, var_1.c, var_1.c, u_input.d)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, 4294967295u), vec4<u32>(u_input.a, 58703u, u_input.a, 43941u))), ~(~vec4<u32>(15069u, 66506u, var_0.x, var_1.c))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_2.x)), var_2.ww);
}

