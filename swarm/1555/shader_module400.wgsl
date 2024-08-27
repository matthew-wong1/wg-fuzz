struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1019f * arg_0))))), arg_0), vec4<u32>(~55865u, 0u, ~_wgslsmith_clamp_u32(~0u, abs(0u), 1u), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(425f, 240f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2173f, arg_0))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-861f, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 490f) + vec2<f32>(arg_0, 311f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -403f)), 14630u == u_input.b.x))))), true);
    var var_1 = -40065i;
    var_1 = u_input.e.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-502f - _wgslsmith_f_op_f32(floor(var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + arg_0)))), var_0.b, 700f, _wgslsmith_f_op_vec2_f32(-var_0.d), all(vec4<bool>(false, !(var_0.e || var_0.e), var_0.e, true)));
    var var_3 = 4294967295u;
    return vec4<bool>(!all(vec2<bool>(true, true)) | all(vec2<bool>(var_0.c < 720f, false)), !(var_0.e && !any(vec4<bool>(true, var_0.e, true, var_2.e))), true, all(!(!vec4<bool>(false, var_0.e, false, true))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = !select(select(select(func_3(1029f, 9370i), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), true), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1175f), -24035i)), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)))), false);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(sign(1098f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-132f)), 1322f)))), min(~countOneBits(u_input.c | u_input.c), u_input.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(926f, 262f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-834f, 1987f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(floor(-1288f))), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-604f, _wgslsmith_f_op_f32(max(989f, -1121f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(1331f)), _wgslsmith_f_op_f32(-220f + -886f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-187f, 1493f) * vec2<f32>(-449f, 354f)))))), (true & var_0.x) && (all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, var_0.x, true, var_0.x))) || (true & var_0.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(1129f)), _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), !select(vec2<bool>(var_0.x, true), vec2<bool>(var_1.e, var_0.x), var_0.zy))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.d.x))))), vec4<u32>(1u, countOneBits(var_1.b.x), 87836u, 4294967295u), -1050f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1386f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-255f, var_1.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c, var_1.d.x), var_1.d, var_0.xz))))))), any(select(func_3(_wgslsmith_f_op_f32(-var_1.d.x), u_input.e.x).wy, vec2<bool>(!var_1.e, u_input.e.x == u_input.e.x), select(vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, false), vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~(~(~vec3<i32>(41385i, u_input.e.x, u_input.a))), vec3<i32>(~(-u_input.a), -6003i, reverseBits(u_input.a))), ~(select(vec3<i32>(u_input.e.x, 1i, u_input.e.x), vec3<i32>(u_input.e.x, u_input.e.x, u_input.a), true) << (~u_input.c.xwx % vec3<u32>(32u))) ^ ~vec3<i32>(u_input.e.x, u_input.e.x << (var_1.b.x % 32u), -2147483647i));
    var var_3 = var_2.yz;
    return func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x - -356f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-458f)), -1527f))))), select(-18845i, 38482i, var_1.e) ^ -22214i);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_3 - vec2<f32>(514f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), 1656f, true)))), ~(~(~(~vec4<u32>(u_input.b.x, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -663f), arg_3.x, any(func_2(arg_0)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3, arg_3)), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(ceil(-702f))))), true);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a));
    var var_2 = u_input.e.x >> (arg_2.x % 32u);
    var var_3 = var_1.a.x;
    var var_4 = select(abs(vec2<i32>(~1i, -15458i) >> (~min(vec2<u32>(11550u, arg_2.x), var_0.b.yx) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -7846i, u_input.e.x, 31716i), vec4<i32>(8636i, -1i, -2147483647i, u_input.a))), -vec2<i32>(-41496i, -1i) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, arg_2.x), var_0.b.xy) % vec2<u32>(32u))) | u_input.e, true);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -673f) * -434f), -914f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))));
    var var_1 = vec4<i32>(-(~firstTrailingBit(reverseBits(u_input.e.x))), 33507i, func_1(_wgslsmith_div_u32(~(u_input.b.x >> (u_input.b.x % 32u)), _wgslsmith_clamp_u32(u_input.c.x, ~1u, 4294967295u)), vec4<u32>(~1u, 4365u, ~(u_input.d >> (0u % 32u)), max(45579u, _wgslsmith_sub_u32(u_input.b.x, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~7057u, ~4880u, reverseBits(47322u), u_input.d), u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 7836u, u_input.c.x, u_input.b.x), min(vec4<u32>(u_input.b.x, 4294967295u, 0u, 34623u), vec4<u32>(4294967295u, 53726u, u_input.b.x, 24507u)))), vec2<f32>(var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-u_input.e.x, firstTrailingBit(u_input.a), reverseBits(23810i), _wgslsmith_add_i32(0i, -1i)), firstTrailingBit(~(~vec4<i32>(0i, 1i, u_input.a, -1i)))));
    let var_2 = u_input.b.x;
    var_1 = vec4<i32>(-min(~u_input.e.x, max(-2147483647i, u_input.a) & 1i), 62894i << (1u % 32u), 24753i, u_input.e.x);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 2044f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), var_2, 162f, ~vec4<u32>(select(~1u, 0u, true), _wgslsmith_clamp_u32(~70377u, var_2, firstLeadingBit(0u)), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 28683u, 0u), vec3<u32>(u_input.d, u_input.b.x, 18269u)) ^ 0u), var_1.wzz | var_1.xxw);
}

