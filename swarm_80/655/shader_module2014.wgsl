struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = ~_wgslsmith_div_i32(u_input.a, u_input.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(abs(1585f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-185f)))))));
    var_0 = u_input.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, var_1, var_1)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, 749f, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(200f, var_1, var_1)), vec3<bool>(false, false, false))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(615f, var_1, var_1), vec3<f32>(var_1, -373f, -565f))))))));
    let var_3 = u_input.d;
    return false;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = ~abs(_wgslsmith_div_i32(_wgslsmith_add_i32(-32008i, -14418i), u_input.e.x) | _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.e.x, u_input.d), _wgslsmith_mult_i32(u_input.d, -8425i)));
    var var_1 = Struct_1(vec3<bool>(any(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, true))) && func_3(), true, true), abs(1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-397f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, arg_3)) * _wgslsmith_f_op_f32(round(-689f)))) * arg_1));
    var_0 = 42612i;
    var var_2 = Struct_1(vec3<bool>(true, func_3(), arg_3), ~(~u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)), _wgslsmith_f_op_f32(var_1.c.x + -341f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(661f * _wgslsmith_f_op_f32(select(457f, arg_1.x, false))), 511f)));
    let var_3 = Struct_1(select(vec3<bool>(false, var_1.c.x < _wgslsmith_f_op_f32(ceil(-216f)), (u_input.c >= 0u) & all(vec2<bool>(var_2.a.x, arg_3))), select(vec3<bool>(true, true, true), !(!var_1.a), (55173u << (u_input.c % 32u)) > arg_0.x), -533f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -574f))), ~reverseBits(72239u), var_1.c);
    return var_3;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = func_2(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(abs(vec2<u32>(u_input.c, u_input.c))), _wgslsmith_mod_vec2_u32(vec2<u32>(54319u, 4294967295u), u_input.b.yx), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c) | vec2<u32>(1u, 1u), u_input.b.yy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(888f, -966f, -216f) + vec3<f32>(-411f, 976f, -586f)), _wgslsmith_div_vec3_f32(vec3<f32>(-570f, 755f, -846f), vec3<f32>(-1628f, 956f, 191f))))) * vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(1069f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-733f * 204f))))), !(u_input.d > arg_3), true);
    var_0 = func_2(~vec2<u32>(1u << (_wgslsmith_clamp_u32(12868u, 4294967295u, 28146u) % 32u), reverseBits(countOneBits(u_input.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), var_0.c.x, var_0.c.x) + vec3<f32>(var_0.c.x, -1153f, -1000f))), all(vec4<bool>(!var_0.a.x, func_2(u_input.b.xw, vec3<f32>(var_0.c.x, 436f, 807f), all(var_0.a.zx), func_3()).a.x, all(select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, false, true))), any(vec2<bool>(true, true)))), var_0.a.x);
    let var_1 = vec2<u32>(u_input.c, ~(var_0.b | u_input.b.x));
    var_0 = func_2(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 7023u, 0u) >> (~vec3<u32>(u_input.b.x, 10758u, 103342u) % vec3<u32>(32u)), u_input.b.xyy)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-681f, _wgslsmith_f_op_f32(f32(-1f) * -2009f), 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * -2006f), _wgslsmith_div_f32(-1121f, var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x)) - vec3<f32>(_wgslsmith_f_op_f32(round(var_0.c.x)), 810f, -1238f)), (reverseBits(18994u) ^ ~var_0.b) >= var_0.b)), !var_0.a.x, !any(vec4<bool>(var_0.a.x, false, var_0.a.x, false)) && var_0.a.x);
    return func_2(~select(u_input.b.xy, firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.b.wy, vec2<u32>(34196u, 62420u), u_input.b.zx)), all(var_0.a.yy)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.c + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(var_0.c))))), vec3<f32>(171f, _wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.a.x, any(select(var_0.a, vec3<bool>(true, true, true), func_2(var_1 & var_1, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_0.c.x, var_0.c.x), var_0.c)), !var_0.a.x, !var_0.a.x).a)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(func_2(firstLeadingBit(u_input.b.wz & ~u_input.b.xz), _wgslsmith_f_op_vec3_f32(arg_3.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-914f, 988f, arg_2.x) * arg_3.c))), all(func_1(u_input.e.x, u_input.e.x, vec2<i32>(u_input.a, 2147483647i), ~2147483647i).a.yy), all(!(!vec4<bool>(true, arg_3.a.x, true, arg_3.a.x)))).a, _wgslsmith_sub_u32(~0u, func_2(vec2<u32>(u_input.c, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(-1733f, -415f, -792f), vec3<f32>(arg_2.x, -898f, -1591f)), !arg_3.a.x, arg_3.a.x).b ^ 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(sign(func_1(-8316i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(18148i, u_input.d, u_input.a)), select(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(-1i, -23292i), arg_3.a.xy), u_input.a).c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_f_op_f32(-arg_0)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(-19657i >> (_wgslsmith_add_u32(~u_input.b.x, ~u_input.c) % 32u), ~func_4(-380f, _wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2283f, 1038f, -527f)), func_1(u_input.a, u_input.a, u_input.e, u_input.e.x))), ~1i);
    let var_1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(1i), ~(-1i), 1i) & _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, 0i, -39470i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 0i, 8871i), vec3<i32>(0i, -1i, 23156i), vec3<i32>(-22304i, -1i, 1i))), ~(vec3<i32>(var_0.x, 23828i, u_input.d) | ~vec3<i32>(var_0.x, 1i, u_input.e.x)));
    var_0 = u_input.e;
    var var_2 = !any(select(vec4<bool>(func_1(var_0.x, var_0.x, vec2<i32>(u_input.e.x, 2147483647i), var_1.x).a.x, true, var_0.x <= 2831i, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    let var_3 = func_2(u_input.b.wy, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1781f + -326f), -1312f, _wgslsmith_f_op_f32(trunc(377f))))))), true, true & (true | all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))));
    var_2 = true;
    var_0 = select(u_input.e, ~vec2<i32>(28825i, var_1.x) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.b.wx), _wgslsmith_mod_vec2_u32(u_input.b.xx, u_input.b.zy)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.b, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b.yz, u_input.b.zw, vec2<u32>(40227u, u_input.b.x)), ~u_input.b.xx)) % vec2<u32>(32u)), var_3.c.x >= _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-714f)))));
    let var_4 = reverseBits(select(~(~var_3.b), u_input.c & abs(var_3.b), !var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~31268u, u_input.c);
}

