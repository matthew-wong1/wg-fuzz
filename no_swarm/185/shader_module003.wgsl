struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec3<f32> {
    let var_0 = vec4<u32>(~(~84252u >> (u_input.d.x % 32u)) | (~select(u_input.d.x, u_input.d.x, true) & (0u << (0u % 32u))), ~56492u, ~40068u, arg_1);
    let var_1 = Struct_1(vec4<bool>(true, false, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec4<bool>(true, false, false, false)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), vec4<i32>(1i, _wgslsmith_sub_i32(-1i, 1i), 6994i, u_input.e.x));
    var var_2 = ~(~vec2<u32>(65592u, _wgslsmith_div_u32(~u_input.d.x, 27055u)));
    var_2 = vec2<u32>(var_0.x, var_2.x);
    let var_3 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(33688u, 21855u, 29004u)), vec3<u32>(arg_1, 24090u, 19444u) | vec3<u32>(var_0.x, arg_1, 0u)), 27265u) ^ ~var_2.x;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1768f + 1716f) + _wgslsmith_f_op_f32(min(770f, 1596f))), _wgslsmith_f_op_f32(sign(1148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1529f, _wgslsmith_f_op_f32(-362f - 403f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1017f, _wgslsmith_f_op_f32(f32(-1f) * -517f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, 279f, -139f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-559f, -365f, -257f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-675f, -305f, -1030f), vec3<f32>(-733f, 696f, -549f), false)) - vec3<f32>(-195f, -310f, 177f)))));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(vec4<bool>(select(true, any(arg_0.a.xx), !(u_input.d.x > 0u)), all(select(arg_0.a.wyx, !vec3<bool>(false, arg_0.a.x, true), select(vec3<bool>(true, arg_0.a.x, false), vec3<bool>(true, true, arg_0.a.x), arg_0.a.zyx))), !(arg_0.a.x || arg_0.a.x), any(select(arg_0.a, select(vec4<bool>(arg_0.a.x, true, false, arg_0.a.x), arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), vec4<i32>(arg_0.b.x, ~max(arg_0.b.x, u_input.a) << (_wgslsmith_mod_u32(~u_input.d.x, 13854u) % 32u), abs(select(-arg_0.b.x, u_input.b.x, !arg_0.a.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(34795i, countOneBits(-54768i)), ~_wgslsmith_add_i32(arg_0.b.x, -63553i))));
    var var_1 = max(1u, ~u_input.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-543f, _wgslsmith_f_op_f32(-1028f - 2444f), -110f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1630f, 1104f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1465f, -1000f, -593f)) * _wgslsmith_f_op_vec3_f32(func_3(var_0.b.zz, u_input.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-894f, 2580f, 678f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 621f, -1534f), vec3<f32>(478f, 983f, 3249f)))))));
    let var_3 = arg_0.b.yzw & select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.x, -7286i, _wgslsmith_dot_vec4_i32(vec4<i32>(-24898i, var_0.b.x, var_0.b.x, -64788i), var_0.b)), var_0.b.wyx, u_input.b.xyz), vec3<i32>(var_0.b.x, ~_wgslsmith_dot_vec3_i32(u_input.b.zxy, arg_0.b.yyw), reverseBits(5837i)), !(!var_0.a.zyw));
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_0.b.zz, u_input.d.x)).x - -242f)) - vec3<f32>(860f, 691f, _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1509f, 2152f, -1773f))), vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_div_f32(var_2.x, -157f), 727f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -366f)))))))));
    return ~(_wgslsmith_mult_vec3_i32(max(_wgslsmith_mult_vec3_i32(arg_0.b.zww, u_input.b.xyw), vec3<i32>(-56408i, 1i, -1i) | vec3<i32>(u_input.a, 0i, -1i)), u_input.b.wzw) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.b.yzy, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.x, var_0.b.x, 105i), vec3<i32>(19151i, 26754i, var_3.x))), 22633i, var_0.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>) -> bool {
    let var_0 = ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), reverseBits(u_input.d.xy)), countOneBits(abs(vec2<u32>(u_input.d.x, 20328u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)));
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(17283i, min(arg_2.x, 36540i) ^ 28101i, ~arg_0.b.x, 19342i);
    var_2 = u_input.b;
    var var_3 = arg_0.a;
    return false && all(var_3.xz);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(all(!vec2<bool>(true, arg_0)), !arg_0, func_4(Struct_1(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)), vec4<i32>(arg_2.x, arg_2.x, -2147483647i, 2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1519f, arg_1, arg_1), vec4<f32>(arg_1, arg_1, arg_1, -1232f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(611f, 931f, arg_1, -1338f), vec4<f32>(arg_1, -2312f, 1087f, arg_1), arg_0))), abs(func_2(Struct_1(vec4<bool>(arg_0, true, arg_0, arg_0), u_input.b)))), arg_0), u_input.b);
    var var_1 = select(!(!(!select(vec2<bool>(false, false), var_0.a.yw, var_0.a.xx))), select(vec2<bool>(!var_0.a.x, true), var_0.a.xy, any(vec3<bool>(!var_0.a.x, true, false))), vec2<bool>(false, true));
    var_0 = Struct_1(!(!select(select(vec4<bool>(true, true, true, true), var_0.a, false), var_0.a, select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(false, true, var_1.x, arg_0), vec4<bool>(var_0.a.x, true, var_1.x, var_1.x)))), select(var_0.b, ~(~vec4<i32>(-1i, var_0.b.x, 2147483647i, var_0.b.x)), all(!var_0.a) & (-1270f < _wgslsmith_f_op_f32(-arg_1))));
    let var_2 = Struct_1(select(var_0.a, select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(true, true, true, true), -902f < arg_1), !var_0.a.x), countOneBits(vec4<i32>(-_wgslsmith_mult_i32(arg_2.x, 16372i), -_wgslsmith_mult_i32(-45066i, -39881i), min(max(2147483647i, u_input.e.x), ~(-951i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, var_0.b.x), vec3<i32>(u_input.a, var_0.b.x, 1i)))));
    var_1 = !var_0.a.xx;
    return Struct_1(select(select(!vec4<bool>(arg_0, false, false, var_0.a.x), !vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false), select(vec4<bool>(true, var_1.x, arg_0, arg_0), var_2.a, var_2.a)), !(!var_0.a), true), max(vec4<i32>(~var_2.b.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, 1i), var_0.b.ywz), var_2.b.x, min(var_2.b.x, abs(u_input.a)), 2147483647i), vec4<i32>(-32308i << (~u_input.d.x % 32u), -u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, 37941i), -12835i), u_input.b.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0.a.zy;
    let var_1 = 8084i;
    let var_2 = !arg_0.a.x;
    var var_3 = false;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) * -1854f), _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(423f)), _wgslsmith_div_f32(arg_2.x, 1170f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f - arg_2.x))))), -1844f, arg_2.x);
    return Struct_1(vec4<bool>(all(select(select(arg_0.a, vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, arg_1.a.x)), arg_0.a, !vec4<bool>(false, var_2, false, true))), var_2, any(vec2<bool>(true, var_0.x)) | var_0.x, func_4(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-621f * -1419f), -898f, var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -367f)), ~vec3<i32>(var_1, 1i, u_input.b.x))), firstTrailingBit(reverseBits(arg_3)));
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1014f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + _wgslsmith_f_op_f32(sign(-1846f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) + -673f), 570f));
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(step(184f, 1000f));
    var var_2 = false;
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1)), var_0.x, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(-357f - arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(426f, var_0.x, arg_1) - vec3<f32>(-2787f, 766f, arg_1))))))));
    return select(!vec4<bool>(!(!arg_0.a.x), true, true, false | func_5(arg_0, Struct_1(vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), arg_0.b), vec3<f32>(-937f, -1675f, -702f), u_input.b).a.x), vec4<bool>(arg_0.a.x && arg_0.a.x, false, any(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)), true), vec4<bool>(arg_0.a.x || !(true | arg_0.a.x), false, arg_0.a.x, (true && arg_0.a.x) | arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_6(func_5(func_1(true, _wgslsmith_f_op_f32(-319f - -549f), max(u_input.e, u_input.b.ww)), Struct_1(vec4<bool>(true, false, true, false), func_1(true, 590f, u_input.e).b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2470f, -555f, -1261f), vec3<f32>(682f, 298f, -1000f))))), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(526f)))));
    var var_1 = all(vec4<bool>(any(vec2<bool>(func_6(Struct_1(vec4<bool>(false, var_0, false, var_0), u_input.b), -902f).x, !var_0)), var_0, true & !var_0, func_4(func_5(Struct_1(vec4<bool>(var_0, true, var_0, var_0), vec4<i32>(1i, u_input.a, -30433i, -2147483647i)), Struct_1(vec4<bool>(var_0, var_0, var_0, var_0), u_input.b), vec3<f32>(-2323f, 1298f, 1666f), vec4<i32>(u_input.c, u_input.a, u_input.e.x, 11319i)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1008f, 716f, 358f, 941f))), vec3<i32>(-1i, u_input.c, -2147483647i))));
    var var_2 = 801f;
    var var_3 = _wgslsmith_f_op_f32(-294f + 627f);
    var var_4 = vec3<u32>(~(~1u), _wgslsmith_add_u32(reverseBits(abs(44334u)), u_input.d.x), ~_wgslsmith_dot_vec2_u32(u_input.d.xy, ~u_input.d.xy)) ^ vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(~u_input.d.yx, vec2<u32>(45244u, 4294967295u) >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u))), 0u), u_input.d.x);
    var_4 = ~vec3<u32>(0u, _wgslsmith_sub_u32(countOneBits(50584u), reverseBits(0u)), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(81110u, 20836u, u_input.d.x, var_4.x)), vec4<u32>(1u, _wgslsmith_mult_u32(u_input.d.x, var_4.x), u_input.d.x << (u_input.d.x % 32u), ~3728u)));
    var var_5 = func_1(all(!select(select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(true, true)), vec2<bool>(true, var_0), all(vec2<bool>(var_0, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(-1i, u_input.e.x) ^ vec2<i32>(u_input.b.x, 32503i), 10843u)).x), -477f)), u_input.b.wz);
    var var_6 = Struct_1(func_1(true, -505f, _wgslsmith_clamp_vec2_i32(~var_5.b.wz, _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(23083i, -5170i)), vec2<i32>(49944i, -120116i)), vec2<i32>(-23395i, 1i))).a, -_wgslsmith_mod_vec4_i32(vec4<i32>(var_5.b.x, firstTrailingBit(var_5.b.x), -2147483647i, _wgslsmith_sub_i32(-39792i, u_input.b.x)), vec4<i32>(-1i) * -u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(830f, -635f, -298f) - vec3<f32>(-112f, 1190f, 838f)), vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-162f, 557f, -1330f), vec3<f32>(-1000f, 1283f, -1618f), var_6.a.x)))))), 0u);
}

