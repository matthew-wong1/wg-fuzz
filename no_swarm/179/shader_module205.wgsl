struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_1(vec4<i32>(u_input.a, u_input.a, -65251i, u_input.a), -(_wgslsmith_div_i32(u_input.a, u_input.a) | u_input.a), ~0u & max(~47292u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 48923u))), u_input.a);
    let var_1 = select(arg_1.x, any(!select(vec3<bool>(true, false, true), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x)), false);
    var var_2 = 175f;
    var var_3 = var_0.c;
    let var_4 = Struct_2(!vec3<bool>(select(true, !var_1, true), true, true && !arg_1.x));
    return _wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, countOneBits(var_0.a));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(-min(vec3<i32>(u_input.a, -6172i, u_input.a) >> (vec3<u32>(41340u, 0u, 4294967295u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.a, -38355i, u_input.a))) | ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, 41587i), select(vec3<i32>(-10743i, u_input.a, -17273i), vec3<i32>(u_input.a, u_input.a, -43540i), vec3<bool>(false, true, true))), vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), select(1i, u_input.a >> (~0u % 32u), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true)))));
    let var_1 = abs(-_wgslsmith_add_vec4_i32(-vec4<i32>(0i, u_input.a, -2147483647i, u_input.a), vec4<i32>(_wgslsmith_add_i32(15931i, u_input.a), 2147483647i, -u_input.a, u_input.a)));
    let var_2 = firstTrailingBit(-vec4<i32>(-(~u_input.a), _wgslsmith_sub_i32(_wgslsmith_add_i32(38751i, u_input.a), -2147483647i), ~reverseBits(var_1.x), u_input.a));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(978f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1103f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(204f + -827f), -175f)))));
    return Struct_1(-_wgslsmith_clamp_vec4_i32(~func_3(vec3<f32>(2480f, -1016f, 311f), vec3<bool>(true, false, var_3)), vec4<i32>(abs(var_1.x), 13458i, 1i, -1i), -vec4<i32>(var_2.x, var_1.x, -1i, var_2.x)), ~(-12346i) ^ min(var_1.x, u_input.a), 52813u, _wgslsmith_mult_i32(_wgslsmith_div_i32(~_wgslsmith_div_i32(-11254i, var_2.x), var_1.x), var_2.x));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(-882f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(1678f))))));
    var var_1 = func_2();
    var var_2 = _wgslsmith_sub_i32(min(-arg_1.d.a.x, u_input.a), min(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-701f, arg_0, -1019f))), !(!arg_2)).x, var_1.b));
    let var_3 = ~_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.c.x, var_1.c, 68453u) ^ vec4<u32>(43494u, 1u, 4294967295u, 0u), ~vec4<u32>(arg_1.c.x, 53500u, var_1.c, 12249u)), vec4<u32>(abs(0u), 24040u, ~(~arg_1.c.x), ~(~4294967295u)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2361f, _wgslsmith_div_f32(-285f, 388f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 443f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, var_0.x))), vec2<bool>(arg_2.x | arg_3.a.x, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(641f)), _wgslsmith_f_op_f32(var_0.x + arg_0))));
    return Struct_2(vec3<bool>(true, arg_3.a.x && all(select(arg_1.a.a.xy, arg_1.b.a.yy, true)), !(!arg_1.b.a.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~1i;
    var var_1 = Struct_1(vec4<i32>((u_input.a >> (min(47685u, 53407u) % 32u)) << (4294967295u % 32u), u_input.a, u_input.a, -1i), _wgslsmith_sub_i32(~u_input.a, 2147483647i), 4294967295u, u_input.a);
    let var_2 = firstTrailingBit(u_input.a);
    let var_3 = ~vec4<u32>(~max(0u, var_1.c), reverseBits(_wgslsmith_sub_u32(var_1.c, var_1.c)), func_2().c, _wgslsmith_sub_u32(var_1.c, 4294967295u)) | firstTrailingBit(~abs(vec4<u32>(0u, 1u, 1u, 4294967295u) & vec4<u32>(var_1.c, 23396u, 0u, 33288u)));
    var var_4 = false;
    return func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-218f)))), Struct_3(Struct_2(vec3<bool>(true, true, true)), Struct_2(arg_0.a), min(~vec3<u32>(37044u, 4294967295u, 1u), vec3<u32>(~0u, _wgslsmith_div_u32(var_1.c, 4294967295u), 6703u)), Struct_1(~var_1.a, reverseBits(46505i), 1u, 5374i), vec2<i32>(-2147483647i & var_2, -20326i)), func_1(-1304f, Struct_3(arg_0, arg_0, var_3.yww, Struct_1(vec4<i32>(71714i, var_1.a.x, 1i, 1299i) & var_1.a, var_1.a.x, firstTrailingBit(var_1.c), ~2147483647i), vec2<i32>(var_1.b, var_2 & 0i)), vec3<bool>(!func_1(-100f, Struct_3(arg_0, arg_0, vec3<u32>(14647u, var_1.c, 44977u), Struct_1(vec4<i32>(u_input.a, -2147483647i, var_2, -2147483647i), -2147483647i, 0u, var_1.d), vec2<i32>(u_input.a, 2147483647i)), vec3<bool>(false, arg_0.a.x, arg_0.a.x), Struct_2(vec3<bool>(arg_0.a.x, false, arg_0.a.x))).a.x, func_1(_wgslsmith_f_op_f32(step(-1431f, -297f)), Struct_3(Struct_2(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), arg_0, var_3.xzy, Struct_1(vec4<i32>(var_2, var_2, var_1.d, var_2), 1i, var_3.x, 77509i), vec2<i32>(2147483647i, var_1.a.x)), vec3<bool>(arg_0.a.x, arg_0.a.x, true), Struct_2(vec3<bool>(true, true, arg_0.a.x))).a.x, all(arg_0.a.yx)), Struct_2(arg_0.a)).a, func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1590f + 1000f), 1886f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-728f, -373f))))), Struct_3(arg_0, arg_0, vec3<u32>(_wgslsmith_div_u32(var_1.c, var_1.c), 1859u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_1.c)), func_2(), vec2<i32>(_wgslsmith_clamp_i32(var_2, 2147483647i, 2147483647i), _wgslsmith_clamp_i32(var_2, -46593i, var_1.b))), arg_0.a, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(func_4(func_1(_wgslsmith_f_op_f32(floor(-1000f)), Struct_3(Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, true)), vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec4<i32>(u_input.a, u_input.a, -5354i, -33855i), u_input.a, 2812u, -1i), vec2<i32>(-2147483647i, 2147483647i)), vec3<bool>(true, true, true), Struct_2(vec3<bool>(true, true, false)))), Struct_2(vec3<bool>(func_1(-127f, Struct_3(Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)), vec3<u32>(0u, 1u, 12238u), Struct_1(vec4<i32>(u_input.a, u_input.a, 12546i, u_input.a), 40993i, 4294967295u, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec3<bool>(true, false, true), Struct_2(vec3<bool>(false, false, false))).a.x, true, true)), ~vec3<u32>(13673u, ~0u, ~4294967295u), Struct_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 70601i, 1i, u_input.a), vec4<i32>(-45144i, -1i, u_input.a, -25283i)), func_3(vec3<f32>(-1111f, 734f, -1222f), vec3<bool>(false, true, true)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 60484u, 11677u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(firstLeadingBit(u_input.a))), vec2<i32>(~abs(u_input.a), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-742f + 1039f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-908f - _wgslsmith_f_op_f32(sign(399f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-364f, 114f)), _wgslsmith_f_op_f32(f32(-1f) * -478f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1000f, 2094f, true)), _wgslsmith_f_op_f32(abs(1030f)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f))), Struct_3(Struct_2(vec3<bool>(true, true, true)), func_1(_wgslsmith_f_op_f32(round(-1570f)), Struct_3(Struct_2(vec3<bool>(true, true, true)), func_1(-311f, Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, true)), vec3<u32>(28942u, 102243u, 0u), Struct_1(vec4<i32>(1i, u_input.a, -22839i, u_input.a), -2147483647i, 23913u, u_input.a), vec2<i32>(-14870i, -1i)), vec3<bool>(true, true, true), Struct_2(vec3<bool>(false, false, false))), vec3<u32>(1u, 1u, 1u), func_2(), firstTrailingBit(vec2<i32>(u_input.a, u_input.a))), vec3<bool>(false, false, false), func_4(Struct_2(vec3<bool>(false, true, true)))), abs(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 67790u, 1u), vec3<u32>(18804u, 4294967295u, 4294967295u)))), func_2(), ~countOneBits(vec2<i32>(8455i, -14735i)) >> (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(93013u, 29753u), vec2<u32>(1u, 771u), vec2<u32>(1u, 0u))) % vec2<u32>(32u))), -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, ~(-8398i), firstLeadingBit(u_input.a), 1i), max(vec4<i32>(2147483647i, -10672i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)) | vec4<i32>(u_input.a, u_input.a, -17142i, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f - 1542f))))));
    let var_1 = true;
    let var_2 = true;
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1311f, _wgslsmith_f_op_f32(-var_0.e), var_0.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.e))))), var_0.a, -(~var_0.a.d.a), _wgslsmith_f_op_f32(-var_0.e));
    var var_3 = _wgslsmith_div_vec3_f32(var_0.b.xxz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.e)) - -115f)), _wgslsmith_f_op_f32(-var_0.e), var_0.e));
    var var_4 = 9917i;
    var var_5 = ~vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(37923i, -var_0.a.d.b, func_2().a.x), -(~vec3<i32>(-2147483647i, -1i, u_input.a))));
    var_5 = ~vec2<i32>(_wgslsmith_add_i32(-2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_5.x, u_input.a, u_input.a, var_0.d.x), vec4<i32>(var_0.a.d.d, var_5.x, -1i, var_5.x))), 2147483647i);
    var_4 = ~62608i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(~_wgslsmith_mult_u32(4294967295u, var_0.c.c.x), ~4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.e))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_f_op_f32(-var_0.b.x), false)), var_3.x, _wgslsmith_f_op_f32(step(-221f, var_3.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.b.wxz))), u_input.a);
}

