struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = true;
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = vec4<u32>(4294967295u, countOneBits(abs(1u)), var_1.b.x & abs(_wgslsmith_div_u32(39176u, 15766u)), 1u) << (~firstLeadingBit(max(vec4<u32>(4294967295u, 7810u, var_1.b.x, 4294967295u), ~vec4<u32>(129634u, var_1.b.x, arg_1.b.x, 47207u))) % vec4<u32>(32u));
    var_1 = arg_1;
    return ~(-(~vec4<i32>(arg_2.a.x, arg_0.d.e.x, -1i, arg_3.x)) & -firstLeadingBit(-vec4<i32>(arg_0.a.x, -3627i, 2147483647i, arg_1.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_2(vec3<i32>(i32(-1i) * -1i, firstTrailingBit(~(-16739i)), -u_input.d.x), vec4<bool>(true, any(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), select(true, false, true), true)), false, _wgslsmith_mult_u32(u_input.e, u_input.a) >= _wgslsmith_add_u32(abs(1325u), abs(arg_1.x))), ~abs(1u), Struct_1(vec3<u32>(_wgslsmith_mod_u32(14885u, 4294967295u), 0u, _wgslsmith_sub_u32(1u, arg_1.x)) ^ arg_1, !all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), arg_1.x, firstLeadingBit(~abs(u_input.e)), vec2<i32>(1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 1i), vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), 1148i))), ~(~15880u));
    let var_1 = !(!vec3<bool>(var_0.d.b, var_0.b.x || false, true));
    var var_2 = !(!var_0.d.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-192f + _wgslsmith_f_op_f32(-328f - 1675f)), _wgslsmith_f_op_f32(abs(315f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1009f), vec2<f32>(1145f, 1381f), vec2<bool>(false, false))), vec2<f32>(636f, 207f), select(true, var_0.b.x, false)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(681f, -815f) + vec2<f32>(893f, -149f)))))))));
    var_2 = !((0u >= u_input.a) & var_0.b.x);
    return i32(-1i) * -1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = func_4(_wgslsmith_mult_vec4_i32(func_3(arg_3, Struct_3(~u_input.c, vec3<u32>(arg_3.e, 12558u, arg_3.d.d)), Struct_2(vec3<i32>(1i, -49188i, arg_1), !vec4<bool>(false, arg_3.d.b, true, true), u_input.e, arg_3.d, arg_3.c ^ arg_3.e), vec3<i32>(-798i, select(arg_0.x, 4144i, false), -30982i)), ~(-vec4<i32>(-27270i, arg_1, -9075i, 20926i)) ^ ~(-vec4<i32>(u_input.c, arg_1, arg_1, arg_3.d.e.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, firstTrailingBit(0u), arg_3.c), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_3.e, 1u), 1u << (arg_3.d.c % 32u), 4294967295u), vec3<u32>(arg_3.d.a.x, arg_3.d.c, 0u) >> ((arg_3.d.a ^ arg_3.d.a) % vec3<u32>(32u))), vec3<u32>(arg_3.d.d, ~0u, ~u_input.a)));
    var var_1 = Struct_4(Struct_3(_wgslsmith_mult_i32(~(~2147483647i), arg_3.d.e.x), arg_3.d.a), ~_wgslsmith_dot_vec2_u32(~arg_3.d.a.xy, ~_wgslsmith_mod_vec2_u32(arg_3.d.a.xx, arg_3.d.a.zy)), arg_3.b.x, countOneBits(~countOneBits(min(vec3<u32>(u_input.a, arg_3.d.c, 0u), vec3<u32>(1u, u_input.a, 1u)))), vec2<u32>(0u, u_input.e));
    var_1 = Struct_4(var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(60241u, ~arg_3.d.d, u_input.a >> (var_1.d.x % 32u)), 4294967295u), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.b.x, 55595u, 0u), vec3<u32>(77756u, 62609u, 13155u), vec3<u32>(var_1.e.x, arg_3.c, 0u)))), all(arg_3.b), ~var_1.a.b, _wgslsmith_clamp_vec2_u32(var_1.d.zx, vec2<u32>(~41185u, var_1.b), vec2<u32>(1u, firstTrailingBit(reverseBits(10687u)))));
    var_1 = Struct_4(var_1.a, 4294967295u >> (countOneBits(_wgslsmith_sub_u32(var_1.a.b.x, firstTrailingBit(arg_3.c))) % 32u), var_1.e.x <= ((_wgslsmith_mod_u32(1u, var_1.b) ^ 5768u) >> (abs(arg_3.e) % 32u)), ~vec3<u32>(~5783u, reverseBits(_wgslsmith_sub_u32(0u, 0u)), abs(1u)), var_1.a.b.zx);
    var var_2 = arg_3.d;
    return select(~_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.e.x, 4294967295u, 0u), vec4<u32>(arg_3.e, var_2.a.x, 0u, 76811u)), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(arg_3.d.a.yx, var_2.a.yz), arg_3.d.c, ~0u)), _wgslsmith_clamp_vec4_u32(~(~max(vec4<u32>(var_1.b, 1u, 95023u, u_input.e), vec4<u32>(u_input.e, 15101u, var_1.d.x, 1728u))), firstTrailingBit(vec4<u32>(~var_1.d.x, ~10u, arg_3.c, 55809u)), _wgslsmith_add_vec4_u32(max(~vec4<u32>(var_2.a.x, arg_3.e, 0u, u_input.a), vec4<u32>(4294967295u, 4144u, 71688u, arg_3.d.c)), vec4<u32>(min(arg_3.d.a.x, arg_3.c), var_1.b & u_input.a, abs(1u), 0u))), arg_3.b);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f - 979f)), _wgslsmith_f_op_f32(step(-231f, _wgslsmith_f_op_f32(-768f * 281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1303f + -991f)), _wgslsmith_f_op_f32(-515f * _wgslsmith_f_op_f32(select(-1037f, 1000f, false))))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0, arg_0, 6302u, u_input.e)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 0u, u_input.e, 48202u), vec4<u32>(35947u, 0u, 0u, 40721u)), func_2(vec3<i32>(u_input.d.x, -1i, u_input.c), -44824i, var_0.yy, Struct_2(u_input.d, vec4<bool>(false, false, true, true), arg_1.b.x, Struct_1(vec3<u32>(arg_0, 1u, u_input.a), true, 18649u, 4294967295u, u_input.d.zy), 29398u)), vec4<u32>(4294967295u, arg_1.b.x, arg_0, 57175u))), 4294967295u);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(374f * -309f), -1000f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1153f, 682f, -323f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -280f, var_0.x, var_0.x))))))) - vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-650f - -772f))))), var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(floor(768f))));
    let var_2 = 441f;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(round(var_2)), var_2))));
    return Struct_1(vec3<u32>(~var_1.x, arg_0, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(arg_1.b.x, arg_0, true), abs(u_input.e), ~4294967295u), arg_1.b.x)), false, arg_1.b.x, arg_0, vec2<i32>(~min(arg_1.a, arg_1.a & u_input.c), u_input.c));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(-21139i >> (u_input.e % 32u), 40139i, min(arg_0.x, arg_1.e.x)), vec3<i32>(1i, func_1(u_input.e, Struct_3(-23105i, vec3<u32>(0u, arg_1.c, 8377u))).e.x, -22277i)), select(vec4<bool>(_wgslsmith_f_op_f32(-arg_2.x) > _wgslsmith_div_f32(924f, 1000f), u_input.e != arg_1.d, all(!vec4<bool>(false, arg_1.b, true, arg_1.b)), !arg_1.b), select(vec4<bool>(true, true, !arg_1.b, true), vec4<bool>(arg_1.b, false, arg_1.b, false), vec4<bool>(any(vec2<bool>(false, arg_1.b)), true, true, true)), select(vec4<bool>(arg_2.x >= -2025f, all(vec2<bool>(arg_1.b, arg_1.b)), true, !arg_1.b), select(select(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), vec4<bool>(true, arg_1.b, arg_1.b, true), vec4<bool>(arg_1.b, false, arg_1.b, true)), vec4<bool>(arg_1.b, true, arg_1.b, false), !vec4<bool>(arg_1.b, false, false, false)), !vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b))), 54513u, func_1(_wgslsmith_sub_u32(arg_1.c, 0u) & abs(firstTrailingBit(arg_1.d)), Struct_3(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, arg_0.x), arg_0), ~reverseBits(arg_1.a))), u_input.e);
    var var_1 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(-17954i, -func_1(4294967295u, Struct_3(-29305i, vec3<u32>(23427u, arg_1.d, 54613u))).e.x, _wgslsmith_clamp_i32(reverseBits(arg_1.e.x), ~arg_1.e.x, _wgslsmith_mod_i32(2147483647i, arg_1.e.x)), -2147483647i), ~max(~(vec4<i32>(arg_0.x, var_0.d.e.x, u_input.b, 2147483647i) >> (vec4<u32>(var_0.e, 5988u, u_input.e, 104489u) % vec4<u32>(32u))), countOneBits(vec4<i32>(-2147483647i, -32749i, -12760i, 326i))), vec4<i32>(arg_0.x, _wgslsmith_sub_i32(u_input.c, u_input.d.x), _wgslsmith_div_i32(u_input.c, -49180i), i32(-1i) * -(i32(-1i) * -27857i)));
    var_0 = Struct_2(vec3<i32>(2147483647i, 54551i, ~select(arg_0.x, 13505i, false)), var_0.b, ~func_2((var_1.zyy | vec3<i32>(2147483647i, -5943i, arg_1.e.x)) >> (~var_0.d.a % vec3<u32>(32u)), _wgslsmith_clamp_i32(0i, select(-1i, arg_0.x, var_0.b.x), -1i), _wgslsmith_f_op_vec2_f32(-arg_2.wx), Struct_2(var_1.xzz, !vec4<bool>(true, arg_1.b, var_0.b.x, arg_1.b), 66644u, func_1(4294967295u, Struct_3(2147483647i, vec3<u32>(15159u, 4294967295u, u_input.e))), u_input.a)).x, var_0.d, u_input.e);
    var_1 = -vec4<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_sub_i32(var_1.x, 29245i), -12733i), firstLeadingBit(-29042i), _wgslsmith_dot_vec2_i32(u_input.d.zy, _wgslsmith_sub_vec2_i32(var_1.zx, var_0.d.e)), i32(-1i) * -u_input.d.x) >> (((max(vec4<u32>(4294967295u, arg_1.d, u_input.a, 2852u), vec4<u32>(arg_1.d, 0u, var_0.d.d, var_0.c) & vec4<u32>(23255u, var_0.c, arg_1.a.x, u_input.e)) >> (~(vec4<u32>(u_input.a, 0u, var_0.d.c, arg_1.a.x) << (vec4<u32>(4294967295u, u_input.e, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ firstLeadingBit(~vec4<u32>(u_input.e, 0u, 4294967295u, arg_1.d) ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1.d, 133793u, var_0.c), vec4<u32>(var_0.d.a.x, 0u, var_0.c, 31390u)))) % vec4<u32>(32u));
    let var_2 = true;
    return firstLeadingBit(~104970u);
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_add_vec2_u32(~countOneBits(~vec2<u32>(4294967295u, 0u)) & arg_3.a.xz, _wgslsmith_div_vec2_u32(func_1(_wgslsmith_div_u32(1u, 33776u), Struct_3(arg_2, vec3<u32>(4294967295u, u_input.e, arg_3.d))).a.xy, _wgslsmith_div_vec2_u32(~arg_3.a.xy, ~arg_3.a.xz)) & ~(~vec2<u32>(arg_3.a.x, u_input.e)));
    let var_1 = reverseBits(-(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(32622i, 14947i, 31532i))));
    let var_2 = select(vec4<i32>(~(-arg_2), var_1.x & arg_0, ~arg_1, 1i) & abs(vec4<i32>(abs(-2147483647i), ~arg_1, abs(-1i), 69857i)), -(-vec4<i32>(arg_1, arg_1, arg_2, arg_3.e.x) >> (firstTrailingBit(vec4<u32>(3329u, arg_3.d, arg_3.d, arg_3.c)) % vec4<u32>(32u))), !(!vec4<bool>(true, true, arg_3.b, arg_3.b || arg_3.b)));
    var var_3 = func_1(~countOneBits(~min(u_input.e, arg_3.c)), Struct_3(func_4(max(select(vec4<i32>(-1i, 127i, -2147483647i, var_2.x), vec4<i32>(var_2.x, arg_1, arg_0, arg_3.e.x), vec4<bool>(true, arg_3.b, arg_3.b, arg_3.b)), var_2), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.a.x, arg_3.c, 70175u), vec3<u32>(77278u, u_input.a, 0u), arg_3.a)), countOneBits(vec3<u32>(_wgslsmith_sub_u32(var_0.x, 22991u), _wgslsmith_div_u32(26973u, u_input.e), _wgslsmith_sub_u32(68105u, arg_3.d)))));
    let var_4 = Struct_1(vec3<u32>(var_0.x, ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_3.c, 29704u), _wgslsmith_clamp_vec2_u32(~var_3.a.zy, vec2<u32>(arg_3.c, 74282u), ~vec2<u32>(arg_3.c, 4294967295u)))), false, 1u, 4294967295u, -vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, var_2.x), _wgslsmith_add_i32(-8466i, arg_1)), ~var_3.e.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-938f, 2164f, -244f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-731f, -1000f, -1253f), vec3<f32>(-303f, 417f, 310f), vec3<bool>(true, true, var_3.b))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(343f, 212f, -736f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1089f, 1000f, -1139f), vec3<f32>(-1071f, 1400f, 380f), vec3<bool>(false, arg_3.b, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-393f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(404f, 1125f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f) - _wgslsmith_f_op_f32(-239f - 1453f)))), -140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(870f)) + -638f));
    var_1 = _wgslsmith_f_op_vec3_f32(func_6(-(-_wgslsmith_clamp_i32(-2147483647i, 24353i, -10851i) << (func_5(u_input.d.xy, func_1(u_input.a, Struct_3(-2147483647i, vec3<u32>(u_input.e, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1011f, 434f, -632f, var_1.x))) % 32u)), func_3(Struct_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c, 0i, u_input.d.x), abs(vec3<i32>(var_0, var_0, u_input.c))), vec4<bool>(true, true, true, true), ~u_input.e << (u_input.a % 32u), func_1(u_input.e, Struct_3(4702i, vec3<u32>(u_input.e, u_input.a, u_input.e))), _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(1u, u_input.a))), Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), select(u_input.d.xy, vec2<i32>(26034i, u_input.c), false)), firstLeadingBit(~vec3<u32>(0u, 4294967295u, 40667u))), Struct_2(-func_3(Struct_2(u_input.d, vec4<bool>(true, true, false, true), u_input.e, Struct_1(vec3<u32>(1u, 0u, 78256u), true, u_input.e, u_input.e, u_input.d.yy), u_input.a), Struct_3(var_0, vec3<u32>(4294967295u, u_input.a, 2455u)), Struct_2(u_input.d, vec4<bool>(false, false, true, true), 1u, Struct_1(vec3<u32>(0u, u_input.a, 1u), false, u_input.a, 1u, vec2<i32>(41276i, var_0)), u_input.a), vec3<i32>(var_0, var_0, var_0)).wyw, !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), ~(~1u), func_1(6959u, Struct_3(u_input.c, vec3<u32>(3722u, 2634u, 112361u))), 3682u), vec3<i32>(~var_0, -62873i, -29420i) & func_3(Struct_2(vec3<i32>(-39467i, 22485i, var_0), vec4<bool>(true, true, true, false), u_input.a, Struct_1(vec3<u32>(90529u, 35644u, 1u), true, 0u, 1u, vec2<i32>(var_0, 1i)), 17623u), Struct_3(u_input.b, vec3<u32>(1u, 1526u, u_input.a)), Struct_2(vec3<i32>(var_0, -36089i, u_input.c), vec4<bool>(true, true, false, true), 11083u, Struct_1(vec3<u32>(105283u, u_input.a, 1u), true, u_input.a, u_input.a, u_input.d.zx), u_input.e), u_input.d | u_input.d).yyx).x, u_input.d.x, func_1(40262u, Struct_3(-u_input.c, ~vec3<u32>(u_input.a, u_input.e, u_input.e)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1035f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-827f - 897f), -308f, -1178f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1948f), vec3<f32>(1752f, -1548f, -317f))))));
    let var_2 = Struct_1(vec3<u32>(1u, ~69524u, (_wgslsmith_sub_u32(u_input.a, 156998u) << (1u % 32u)) >> (~50981u % 32u)), func_1(abs(_wgslsmith_clamp_u32(49851u, u_input.a, 8445u) & u_input.a), Struct_3(select(-u_input.c, var_0, true), vec3<u32>(func_2(vec3<i32>(1i, u_input.b, 2147483647i), 21106i, var_1.xz, Struct_2(vec3<i32>(var_0, var_0, -1i), vec4<bool>(true, true, false, false), u_input.a, Struct_1(vec3<u32>(30115u, u_input.a, u_input.a), true, 70752u, u_input.a, vec2<i32>(var_0, -2147483647i)), 1u)).x, 0u, ~4294967295u))).b, ~4294967295u, u_input.a, ~max(u_input.d.xy, u_input.d.zy) | vec2<i32>(var_0, (var_0 >> (68u % 32u)) ^ (var_0 & 0i)));
    var var_3 = Struct_4(Struct_3(select(u_input.b, max(var_2.e.x | var_2.e.x, -u_input.b), var_2.b), firstLeadingBit(func_2(firstLeadingBit(vec3<i32>(u_input.b, 6564i, var_0)), u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1298f, 361f) + var_1.yz), Struct_2(u_input.d, vec4<bool>(false, true, var_2.b, var_2.b), 2482u, var_2, 0u)).zyx)), _wgslsmith_dot_vec4_u32(~vec4<u32>(14312u, var_2.d, 77591u, u_input.e) ^ (vec4<u32>(u_input.e, u_input.a, 1u, u_input.a) << (vec4<u32>(var_2.a.x, u_input.a, u_input.e, var_2.d) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a, 3310u, 0u, var_2.a.x) & vec4<u32>(u_input.e, 4294967295u, u_input.a, var_2.a.x))) >> (firstTrailingBit(var_2.c) % 32u), !any(select(!vec3<bool>(var_2.b, var_2.b, true), select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(var_2.b, var_2.b, var_2.b)), select(vec3<bool>(var_2.b, true, false), vec3<bool>(var_2.b, false, false), vec3<bool>(var_2.b, var_2.b, true)))), (var_2.a & vec3<u32>(~var_2.a.x, ~12268u, 24535u)) << (vec3<u32>(~13054u, var_2.a.x, 1u) % vec3<u32>(32u)), abs(~var_2.a.yx));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(max(vec2<u32>(0u, 61835u), var_3.a.b.zy), select(var_2.a.xx, var_3.d.xx, true)), vec2<f32>(871f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(var_1.x * -420f)))))), firstTrailingBit(_wgslsmith_mod_vec2_u32(abs(var_2.a.xy), var_3.d.zy)) ^ func_1(1u, var_3.a).a.zz, 30879u, _wgslsmith_add_u32(var_3.e.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(86601u, 1u), ~27999u)) & (var_3.e.x & ~1u));
}

