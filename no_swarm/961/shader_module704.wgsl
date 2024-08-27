struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(870f, _wgslsmith_f_op_f32(floor(-761f)))), true && all(!(!vec4<bool>(true, arg_0, arg_0, true))), any(vec2<bool>(!arg_0, true)) | (arg_0 & true), vec2<i32>(arg_1, 0i), abs(_wgslsmith_div_i32(arg_1, _wgslsmith_dot_vec2_i32(~vec2<i32>(-15364i, 0i), ~vec2<i32>(arg_3.a.x, 1i)))));
    var var_1 = select(select(select(vec2<bool>(select(var_0.c, var_0.b, arg_0), true), !(!vec2<bool>(false, var_0.c)), var_0.b), vec2<bool>(var_0.b, arg_0), arg_0), select(vec2<bool>(var_0.b, true), select(vec2<bool>(arg_0, arg_3.a.x <= -19435i), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(false, true, arg_0)), any(vec3<bool>(false, false, true)))), vec2<bool>(!var_0.c, 1u <= ~arg_2.x));
    var_1 = !vec2<bool>(arg_3.b.x != ~_wgslsmith_mod_u32(36056u, 64582u), any(vec2<bool>(true, true)));
    var_1 = vec2<bool>(!(!arg_0), true | var_0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), ~2147483647i == _wgslsmith_mult_i32(select(-2147483647i >> (u_input.a % 32u), reverseBits(-2147483647i), false), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 28101i, 0i) >> (vec3<u32>(arg_2.x, 33755u, 19473u) % vec3<u32>(32u)), vec3<i32>(var_0.e, var_0.e, -29844i))), var_1.x, vec2<i32>(-(~arg_1), var_0.d.x), max(63152i, _wgslsmith_clamp_i32(-2147483647i, -var_0.d.x, arg_3.a.x)) ^ (arg_3.a.x << (firstLeadingBit(~u_input.a) % 32u)));
    return -719f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) + _wgslsmith_f_op_f32(abs(arg_0.x)))) - _wgslsmith_f_op_f32(abs(1f))) + 1000f);
    let var_1 = arg_2.x;
    let var_2 = _wgslsmith_f_op_f32(ceil(1000f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(976f, 1000f), 1301f, _wgslsmith_f_op_f32(arg_0.x + var_2)))));
    let var_4 = firstLeadingBit(_wgslsmith_add_u32(0u, ~(~4294967295u)) | u_input.a);
    return vec4<bool>((~(-arg_3.x) == -max(arg_3.x, 7085i)) || any(select(arg_1.xy, vec2<bool>(true, true), arg_1.x)), arg_1.x & (_wgslsmith_f_op_f32(func_3(true, -2147483647i, abs(arg_2.zx), Struct_2(vec2<i32>(-48513i, arg_3.x), vec3<u32>(var_1, arg_2.x, 96290u)))) >= _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-var_0))), false, all(select(select(!arg_1, arg_1, false), select(select(arg_1, arg_1, arg_1), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), false), true)));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = ~select(select(~select(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec4<bool>(true, true, false, true)), reverseBits(vec4<u32>(1u, 0u, 9937u, u_input.a)), vec4<bool>(true, true, true, true)), ~vec4<u32>(~u_input.a, u_input.a, 8086u, u_input.a << (u_input.a % 32u)), any(select(vec4<bool>(true, true, true, true), func_2(vec4<f32>(arg_0, -649f, arg_0, -492f), vec4<bool>(false, true, true, true), vec3<u32>(2265u, u_input.a, 28380u), vec3<i32>(2147483647i, 0i, -20311i)), true)));
    var var_1 = select(select(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, -929f, -233f, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1134f, -1005f, arg_0, 599f) + vec4<f32>(1000f, 253f, 186f, arg_0))), vec4<bool>(true, true, true, true), ~firstTrailingBit(var_0.zxw), vec3<i32>(1i, 1i, 1i)), vec4<bool>(!func_2(vec4<f32>(872f, -689f, -1883f, 1995f), vec4<bool>(true, false, true, true), vec3<u32>(var_0.x, u_input.a, var_0.x), vec3<i32>(0i, 2147483647i, 44797i)).x, _wgslsmith_mod_u32(u_input.a, 24965u) >= ~var_0.x, false, select(false, true, true)), !((13046u > u_input.a) && any(vec2<bool>(false, false)))), select(vec4<bool>(true, true, true, true), !func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -637f, arg_0, 2526f)), vec4<bool>(true, true, true, true), ~var_0.yzx, vec3<i32>(0i, -1i, -2147483647i) << (var_0.xyy % vec3<u32>(32u))), ((var_0.x >> (var_0.x % 32u)) == 1u) & true), vec4<bool>(true, true, true, false));
    let var_2 = -215f;
    let var_3 = abs(reverseBits(var_0.xy));
    var_1 = select(!(!select(select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), false), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<bool>(var_1.x, false, true, !any(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, false), true))), !select(true, true, var_1.x));
    return !vec4<bool>(_wgslsmith_div_i32(-26163i, 8739i) > firstTrailingBit(-1i), !var_1.x, _wgslsmith_clamp_i32(~0i, -2147483647i, ~(-26460i)) < ~(-24639i), !var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(-(vec2<i32>(28774i, 2147483647i) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), -(~vec2<i32>(2147483647i, 2147483647i)))), -vec2<i32>(1i, 1i));
    var var_1 = -640f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f + -989f) * _wgslsmith_f_op_f32(f32(-1f) * -646f)), _wgslsmith_f_op_f32(f32(-1f) * -113f), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f * -121f))))));
    var var_2 = select(select(select(!func_1(-776f), vec4<bool>(select(true, true, false), true, true, false), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), false), vec4<bool>(any(vec2<bool>(true, false)), (2147483647i > _wgslsmith_add_i32(var_0.x, -737i)) || false, all(vec4<bool>(false, true, true, func_1(665f).x)), -16699i < _wgslsmith_dot_vec4_i32(vec4<i32>(-41283i, -17423i, 2147483647i, 72512i), -vec4<i32>(1i, 0i, 2147483647i, var_0.x))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1102f, 643f, -185f, -150f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-619f, -1871f, -986f, -1768f))), any(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, 1000f, -473f, 1797f) + vec4<f32>(-160f, -1208f, 2275f, 698f))))), vec4<bool>(true, true, true, true), select(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 51202u, u_input.a), ~vec3<u32>(13336u, 1u, u_input.a)), vec3<u32>(u_input.a, u_input.a, _wgslsmith_div_u32(67763u, u_input.a)), vec3<bool>(true, true, true)), vec3<i32>(~_wgslsmith_div_i32(36924i, var_0.x), _wgslsmith_add_i32(var_0.x, 0i), -1i)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, 207f)) + vec2<f32>(1942f, 438f)))), !var_2.x, true, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_0.x, -34050i)) & -vec2<i32>(var_0.x, var_0.x), -firstLeadingBit(vec2<i32>(-2147483647i, 0i))), 2147483647i), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f - _wgslsmith_f_op_f32(f32(-1f) * -146f)))));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 914u, 29383u), vec3<u32>(95954u, u_input.a, 4294967295u) << (vec3<u32>(58260u, u_input.a, 1u) % vec3<u32>(32u))), ~vec3<u32>(1u, 19741u, 4294967295u) & ~vec3<u32>(1u, u_input.a, var_3.b)), abs(~var_3.b)), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(u_input.a, var_3.b))), ~(~var_3.b))), abs(~vec2<u32>(1u, 7514u)));
    let var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.x, var_3.b, 45220u, _wgslsmith_sub_u32(~66421u, _wgslsmith_dot_vec2_u32(var_4, var_4))) | ~(~vec4<u32>(var_3.b, var_4.x, var_3.b, var_3.b)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 1u), 1u), 1u, 4294967295u), -((-var_3.a.e | abs(var_3.a.d.x)) ^ firstLeadingBit(~(-19675i))), vec3<i32>(_wgslsmith_mult_i32(var_3.a.d.x, var_3.a.e), select((var_0.x & var_3.a.e) | (var_0.x << (var_3.b % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 29710i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_3.a.d.x, -55427i), vec2<i32>(-2147483647i, 0i))), false && var_3.a.b), firstLeadingBit(~59350i | var_0.x)));
}

