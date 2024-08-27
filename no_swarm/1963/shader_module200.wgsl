struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(-vec2<i32>(u_input.b, -22768i), (10522i | u_input.b) ^ _wgslsmith_add_i32(u_input.a.x | u_input.a.x, firstTrailingBit(~u_input.a.x)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(102f, 346f, -1318f), vec3<f32>(-240f, -748f, 1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(488f, -440f, -564f), vec3<f32>(-1619f, -543f, 1666f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(454f))), 1146f, _wgslsmith_f_op_f32(step(-834f, -1046f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f * -1113f))), -751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -682f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(399f, var_1.x)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(129f - 393f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f + var_1.x)))))));
    var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1013f)), _wgslsmith_div_f32(884f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(var_1.x)))));
    return select(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), select(vec2<bool>(select(true, true, all(vec2<bool>(false, true))), any(vec3<bool>(true, true, true))), vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(all(vec2<bool>(true, true)), true)), var_1.x != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648f * var_1.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = select(vec4<bool>(49069u != _wgslsmith_sub_u32(4294967295u, u_input.c.x), -(~2147483647i) != firstLeadingBit(arg_0.x << (u_input.d % 32u)), !all(func_3()), arg_2.a.x), select(select(!(!vec4<bool>(arg_2.a.x, true, true, arg_2.a.x)), select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true), !vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, true, false)), !vec4<bool>(arg_2.a.x, false, true, false)), select(select(vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_2.a.x), select(vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(true, true, false, arg_2.a.x)), any(vec4<bool>(arg_2.a.x, false, arg_2.a.x, arg_2.a.x))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, true, false), vec4<bool>(false, false, arg_2.a.x, true)), !vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(true, true, true, true))), true), vec4<bool>(u_input.c.x <= u_input.c.x, false, (_wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(sign(556f))) && false, arg_2.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_1 - arg_1)), -991f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - 999f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(284f - _wgslsmith_f_op_f32(select(-1056f, _wgslsmith_f_op_f32(trunc(1333f)), var_0.x != arg_2.a.x))))));
    let var_2 = ~(~(~(~_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(1u, 4294967295u, 1u), u_input.c))));
    var var_3 = vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 1u, u_input.d, var_2.x), vec4<u32>(0u, var_2.x, 101009u, var_2.x)), vec4<u32>(19677u, 4294967295u, u_input.c.x, 55562u)), u_input.c.x), 4294967295u, 1u ^ max(4294967295u, max(u_input.c.x, 0u)), ~(~_wgslsmith_div_u32(u_input.c.x, ~25680u)));
    let var_4 = Struct_3(var_1.wyy, var_1.wy, arg_2.c, Struct_1(arg_0, _wgslsmith_sub_i32(u_input.a.x, i32(-1i) * -2147483647i)));
    return Struct_2(arg_2.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    return -28423i;
}

fn func_1(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, firstTrailingBit(func_4(func_2(u_input.a.yy, 122f, Struct_4(vec2<bool>(false, true), Struct_1(arg_0.c.a.a, -3456i), arg_0.c)), Struct_4(arg_0.a, arg_0.b, arg_0.c), Struct_3(vec3<f32>(744f, 1799f, -1354f), vec2<f32>(432f, 362f), arg_0.c, Struct_1(vec2<i32>(u_input.a.x, -114876i), u_input.a.x)))), firstLeadingBit(arg_0.c.a.a.x)), u_input.a);
    var var_1 = func_2(arg_0.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-195f * 1341f))), Struct_4(select(arg_0.a, vec2<bool>(arg_0.a.x, true), !select(vec2<bool>(true, true), vec2<bool>(true, arg_0.a.x), arg_0.a)), Struct_1(vec2<i32>(-61665i, _wgslsmith_add_i32(u_input.a.x, 1i)), -min(var_0, var_0)), arg_0.c)).a;
    var var_2 = arg_0.c.a;
    var var_3 = -41233i;
    var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -2147483647i, var_2.a.x), 17111i) ^ ~reverseBits(vec2<i32>(var_1.b, arg_0.c.a.b)), arg_0.c.a.a.x << (u_input.d % 32u));
    return max(~(var_2.a | reverseBits(abs(vec2<i32>(var_0, u_input.a.x)))), -select(vec2<i32>(firstLeadingBit(u_input.b), var_0), vec2<i32>(-20820i, countOneBits(0i)), false));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2758f, -477f))))) * 865f), -704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -183f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-712f * arg_1), _wgslsmith_f_op_f32(f32(-1f) * -485f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))));
    var var_1 = firstTrailingBit(vec2<i32>(max(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(-max(u_input.b, 1i), ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
    let var_2 = Struct_5(arg_2.wxx, Struct_1(vec2<i32>(~arg_0.x, ~u_input.b), _wgslsmith_mult_i32(-35994i, u_input.b)), vec4<bool>(u_input.d < arg_3.x, _wgslsmith_f_op_f32(470f - _wgslsmith_f_op_f32(-arg_1)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -1007f)), (0u < arg_3.x) | any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), true & ((u_input.c.x != arg_3.x) | (-25363i <= var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) + var_0.zz) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -337f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(190f, arg_1) - vec2<f32>(-415f, var_0.x)), vec2<f32>(-248f, arg_1))))), _wgslsmith_clamp_i32(2147483647i, arg_0.x, _wgslsmith_sub_i32(abs(-arg_2.x), arg_2.x)));
    var_1 = ~arg_0;
    let var_3 = -24550i;
    return Struct_4(!vec2<bool>(_wgslsmith_f_op_f32(select(var_2.d.x, -1373f, var_2.c.x)) == 898f, _wgslsmith_f_op_f32(-var_2.d.x) >= _wgslsmith_f_op_f32(-var_2.d.x)), Struct_1(vec2<i32>(~(i32(-1i) * -1i), var_1.x), ~var_2.a.x), Struct_2(func_2(~max(u_input.a.xz, vec2<i32>(arg_2.x, var_3)), 833f, Struct_4(vec2<bool>(false, var_2.c.x), func_2(vec2<i32>(var_1.x, -1i), var_0.x, Struct_4(var_2.c.xw, var_2.b, Struct_2(Struct_1(var_2.b.a, 0i)))).a, func_2(u_input.a.yx, -886f, Struct_4(var_2.c.xx, var_2.b, Struct_2(Struct_1(vec2<i32>(arg_0.x, -2147483647i), var_3)))))).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_5(-_wgslsmith_add_vec2_i32(abs(u_input.a.xy), _wgslsmith_clamp_vec2_i32(~u_input.a.yz, u_input.a.yy & u_input.a.zx, func_1(Struct_4(vec2<bool>(false, true), Struct_1(u_input.a.zx, 39397i), Struct_2(Struct_1(vec2<i32>(2147483647i, u_input.b), -2147483647i)))))), -1000f, ~abs(min(~vec4<i32>(u_input.b, u_input.b, -30302i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -12393i, u_input.a.x, 0i), vec4<i32>(-6604i, 0i, u_input.b, u_input.b)))), ~u_input.c);
    var_0 = 1f <= _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(1102f - _wgslsmith_f_op_f32(911f + _wgslsmith_f_op_f32(max(212f, 331f)))), true));
    let var_2 = _wgslsmith_dot_vec4_u32(abs(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 38237u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 8167u, u_input.c.x)))), select(vec4<u32>(_wgslsmith_add_u32(13905u, 26927u) << (_wgslsmith_div_u32(38893u, 22342u) % 32u), _wgslsmith_mult_u32(u_input.c.x, 0u), u_input.d, ~(~u_input.d)), vec4<u32>(1u, 82203u, u_input.d, _wgslsmith_dot_vec2_u32(max(vec2<u32>(31712u, 4294967295u), u_input.c.zy), vec2<u32>(u_input.d, u_input.d))), vec4<bool>(var_1.a.x, !var_1.a.x, var_1.a.x, !(!var_1.a.x))));
    var var_3 = var_1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-139f, -1000f)) + 897f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(163f * -931f), -1462f) + _wgslsmith_f_op_f32(882f * _wgslsmith_f_op_f32(-1281f - 187f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-335f)))), -1924f));
}

