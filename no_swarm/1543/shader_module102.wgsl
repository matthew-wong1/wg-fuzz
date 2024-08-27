struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~(u_input.a.x ^ 52104u)), 0u, firstTrailingBit(~(~u_input.a.x))), ~select(u_input.a, u_input.a, select(vec3<bool>(arg_0.x, false, true), vec3<bool>(false, true, arg_0.x), arg_0.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 39098u, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(27184u, u_input.a.x, 0u, 0u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_clamp_u32(abs(firstTrailingBit(u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u), 0u, select(0u, u_input.a.x, true)), abs(~3991u)), u_input.a.x));
    let var_1 = var_0.yz;
    let var_2 = Struct_2(~_wgslsmith_dot_vec2_u32(~var_1, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, var_0.x, 1u), vec4<u32>(var_1.x, var_0.x, u_input.a.x, u_input.a.x)), var_1.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-291f + 450f) + 1141f), 1f, 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(371f * -1000f)))), 388f, 1i, min(countOneBits(u_input.b), countOneBits(1i))), ~_wgslsmith_div_u32(var_1.x, ~71665u) <= firstTrailingBit(var_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-772f, -694f, 1240f, 350f) + vec4<f32>(501f, -1161f, -1000f, 427f))))), 696f, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.b, select(u_input.b, -2147483647i, false)), firstTrailingBit(~28254i)), abs(u_input.b)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1042f, 613f, -1484f, 434f) - vec4<f32>(1172f, 1847f, -1479f, -802f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1339f, -1127f, -481f, -617f), vec4<f32>(-243f, -195f, 1000f, 1239f), arg_0))), var_1.x > 20606u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(652f))), ~0i & u_input.b, -u_input.b));
    var var_3 = var_2.e;
    let var_4 = Struct_2(~4294967295u, var_2.b, any(vec2<bool>(!var_2.c, true)), var_2.b, var_2.e);
    return vec3<f32>(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.b) - _wgslsmith_f_op_f32(-var_3.a.x)) * var_2.d.b), 256f);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(~(~(~u_input.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2369f, arg_2.b, arg_2.b, 201f))))), _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, true))).x, arg_0, 1i), false, arg_2, arg_2);
    let var_1 = ~countOneBits(max(vec2<i32>(arg_2.d, 0i) & vec2<i32>(arg_3.d, arg_3.d), vec2<i32>(arg_2.c, 0i) >> (u_input.a.yz % vec2<u32>(32u)))) & abs(select(abs(vec2<i32>(2147483647i, 49312i)), max(firstLeadingBit(vec2<i32>(2147483647i, var_0.b.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(9041i, -1i), vec2<i32>(u_input.b, arg_3.d))), true));
    return !select(vec4<bool>(all(!vec3<bool>(true, true, var_0.c)), var_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0.a, 15168u), vec4<u32>(var_0.a, 112204u, u_input.a.x, var_0.a)) >= ~u_input.a.x, all(!vec3<bool>(var_0.c, var_0.c, false))), select(vec4<bool>(true, true, arg_3.d != 0i, true), select(select(vec4<bool>(false, var_0.c, false, true), vec4<bool>(true, var_0.c, false, true), vec4<bool>(true, var_0.c, false, false)), select(vec4<bool>(var_0.c, var_0.c, var_0.c, true), vec4<bool>(var_0.c, true, false, false), var_0.c), vec4<bool>(true, true, false, true)), false), !(!select(vec4<bool>(false, true, var_0.c, var_0.c), vec4<bool>(var_0.c, false, false, var_0.c), true)));
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = select(vec4<bool>(true, !(!all(vec4<bool>(false, false, false, false))), true, !any(vec4<bool>(false, true, true, true))), vec4<bool>(false, false, all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false)), all(vec2<bool>(true, true))), func_4(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, u_input.b, -7397i), vec4<i32>(55589i, 1i, u_input.b, -1i))), _wgslsmith_f_op_vec3_f32(func_3(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true))), Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) + -1412f), 18702i, u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, 1299f, arg_0.x, -107f)), vec4<f32>(1252f, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(397f - arg_0.x)), _wgslsmith_add_i32(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b))), 2147483647i)));
    var var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-17630i, u_input.b, 1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(-34354i, u_input.b, u_input.b) ^ vec3<i32>(-60641i, u_input.b, u_input.b))), select(vec4<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(63360i, -1i, u_input.b)), reverseBits(-9568i)), vec4<i32>(u_input.b, ~(-49593i), _wgslsmith_mult_i32(-1i, -2147483647i), -1i), !func_4(u_input.b, arg_0.yyx, Struct_1(vec4<f32>(319f, arg_0.x, -674f, -357f), arg_0.x, -1i, u_input.b), Struct_1(arg_0, 1237f, u_input.b, u_input.b))));
    var var_3 = !var_1.wzx;
    let var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-984f + arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2464f, 1731f)))), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(937f + arg_0.x))), -596f, 262f), -164f, firstLeadingBit(_wgslsmith_div_i32(countOneBits(u_input.b), max(abs(30767i), reverseBits(u_input.b)))), u_input.b);
    return firstLeadingBit(reverseBits(~countOneBits(u_input.a.xx)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> f32 {
    var var_0 = ~func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(606f, 1431f, -872f, -2178f)))) ^ ~vec2<u32>(arg_1.x, u_input.a.x);
    let var_1 = Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(834f, 1000f, -1303f, -103f), vec4<f32>(1647f, -1262f, -497f, -323f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-924f, -480f, -221f, -581f)), vec4<bool>(false, arg_0.x, true, arg_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-801f)))), -u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, u_input.b), abs(vec2<i32>(-23872i, -2147483647i))), -(vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(-13670i, -12000i)))), arg_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 532f, -536f, -3186f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-844f, -249f))), u_input.b, _wgslsmith_clamp_i32(~(-12405i), u_input.b, u_input.b)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1262f, -529f, -192f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1879f)) + -2677f), _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-1145f, 1078f), true)))), -_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(0i, u_input.b)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 13924i, -1i, u_input.b), reverseBits(vec4<i32>(u_input.b, -13664i, u_input.b, -2147483647i))) ^ min(u_input.b, 2147483647i)));
    var_0 = min(~(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(var_0.x, var_0.x)), ~u_input.a.zz) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 47172u, 1u), vec3<u32>(var_0.x, 4294967295u, u_input.a.x)), u_input.a.x)), ~vec2<u32>(var_1.a, 2916u));
    var_0 = ~select(~(~arg_1.yx) | arg_1.zz, firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(34233u, var_1.a), arg_1.wy, u_input.a.yy)), !(!func_4(u_input.b, var_1.d.a.zyx, Struct_1(vec4<f32>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x, var_1.d.b), 1193f, 1i, u_input.b), var_1.d).ww));
    var_0 = vec2<u32>(arg_1.x, ~firstLeadingBit(0u) | (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(53711u, 43650u, 4294967295u)) >> (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u))) & (~_wgslsmith_mult_vec2_u32(~u_input.a.xz, vec2<u32>(79519u, 1u)) >> (~vec2<u32>(~arg_1.x, u_input.a.x) % vec2<u32>(32u)));
    return 1584f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>((u_input.b << (17028u % 32u)) >> (1u % 32u), u_input.b) >> (vec2<u32>(4294967295u, select(~u_input.a.x, u_input.a.x, all(vec2<bool>(true, true)))) % vec2<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1407f), _wgslsmith_f_op_f32(func_1(vec4<bool>(var_0, true, var_0, false), vec4<u32>(4294967295u, 0u, 72347u, u_input.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(f32(-1f) * -1517f), false)), -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, 773f, -538f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(!select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, true, false, true), var_0), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(67028u, u_input.a.x, 35875u, u_input.a.x)) >> (firstTrailingBit(vec4<u32>(7270u, 0u, 1u, 32681u)) % vec4<u32>(32u)))) - _wgslsmith_f_op_f32(round(-3518f))), -16291i, var_1.x);
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(max(183f, -437f)), ~var_1.x, -12226i | _wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(7318i), -1i), ~u_input.b));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, var_3.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.a.x * var_3.b)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(638f, -438f), -1000f))) + var_3.a.zx);
    let var_5 = Struct_1(var_2.a, var_4.x, 2147483647i, min(i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_2.c & -1i, firstTrailingBit(var_3.d))));
    let var_6 = vec4<bool>(true, !(!var_0 & (true | !var_0)), true, !(-850f < var_3.a.x) | (-363f > _wgslsmith_f_op_f32(-var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(~select(vec2<u32>(47296u, u_input.a.x), vec2<u32>(u_input.a.x, 1u), vec2<bool>(var_6.x, var_0)))));
}

