struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = abs(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 4294967295u), vec2<u32>(arg_1, 4294967295u) | vec2<u32>(arg_1, arg_1)) << (0u % 32u), u_input.a));
    var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(~(u_input.a | arg_1), ~u_input.a), ~(~vec2<u32>(~1u, arg_1)));
    var var_1 = Struct_3(vec4<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), true, false & (_wgslsmith_div_u32(11748u, u_input.a) == 1u), false), -(~(~arg_0.e.a)));
    var var_2 = Struct_2(var_1.b.xy, arg_0.b, 310f, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1909f)), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(817f - -298f))), -1000f), arg_0.e);
    var_1 = Struct_3(var_1.a, ~arg_0.e.a);
    return arg_0.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<u32>(~(_wgslsmith_div_u32(_wgslsmith_div_u32(79599u, 1u), ~0u) << (_wgslsmith_add_u32(max(0u, 4294967295u), u_input.a) % 32u)), 38663u, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_2, 107677u) >> (vec2<u32>(48500u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(77836u, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, false)), vec2<u32>(~12762u, arg_2)));
    let var_1 = -546f;
    let var_2 = firstTrailingBit(var_0.x << (min(arg_2, ~arg_2) % 32u)) < arg_2;
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(1i, -47332i) >> ((firstLeadingBit(~1u) >> (1u % 32u)) % 32u), _wgslsmith_mult_i32(-func_3(Struct_2(vec2<i32>(-7986i, 7776i), arg_0, 1279f, arg_0.zzx, Struct_1(vec3<i32>(-2147483647i, -2147483647i, 0i), -35611i, 17808i, vec2<f32>(var_1, 1022f), arg_0.x)), u_input.a), 1i), i32(-1i) * -1753i, _wgslsmith_dot_vec4_i32(~max(abs(vec4<i32>(-1i, 882i, 1i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-8118i, -2147483647i, 0i, -8356i), vec4<i32>(24083i, 6174i, -12869i, -1i), vec4<i32>(34204i, -37816i, 0i, -1i))), countOneBits(min(vec4<i32>(-25799i, -2147483647i, -3789i, -88038i), reverseBits(vec4<i32>(-8350i, -2147483647i, 1i, 2147483647i))))));
    var_3 = select(_wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(4122i, var_3.x, var_3.x, -30161i)), select(vec4<i32>(17784i, 12826i, -8589i, var_3.x), vec4<i32>(var_3.x, var_3.x, -1i, -63977i), vec4<bool>(var_2, false, false, true))) ^ (vec4<i32>(firstLeadingBit(var_3.x), var_3.x, max(var_3.x, var_3.x), var_3.x) & ~vec4<i32>(-17497i, var_3.x, -2147483647i, -2147483647i)), _wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-66256i, var_3.x, 11968i, var_3.x), vec4<i32>(var_3.x, var_3.x, 1i, -11466i)), vec4<i32>(2147483647i, var_3.x, -1i, 2147483647i), false) & ~vec4<i32>(8998i, var_3.x, 6466i, var_3.x), select(vec4<i32>(_wgslsmith_dot_vec2_i32(var_3.zz, vec2<i32>(var_3.x, var_3.x)), -var_3.x, ~(-32588i), abs(23366i)), countOneBits(vec4<i32>(var_3.x, 0i, 0i, var_3.x)), true)), vec4<bool>(!(~u_input.a >= u_input.a), true, 2147483647i < -_wgslsmith_add_i32(var_3.x, 2257i), var_2));
    return Struct_1(var_3.wxz, firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_3.x, 0i) ^ ~var_3.x, var_3.x, var_3.x | ~3237i)), min(0i, _wgslsmith_clamp_i32(-(~(-2147483647i)), -30530i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yx + _wgslsmith_f_op_vec2_f32(select(arg_0.ww, vec2<f32>(380f, -287f), vec2<bool>(false, arg_1)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, arg_0.x))))))), -1000f);
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(arg_0.e.a, arg_0.a.x, ~(-11238i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.e.e))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.yx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f * _wgslsmith_f_op_f32(-arg_0.d.x))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(720f)) - _wgslsmith_f_op_f32(-1000f - arg_0.e.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d.x - 326f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f + arg_0.c)), _wgslsmith_f_op_f32(sign(-164f)))), any(vec2<bool>(true, true)), _wgslsmith_mult_u32(firstTrailingBit(4294967295u), 13017u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * var_1.e) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f + var_0.d.x))), arg_0.c));
    let var_3 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(0u, u_input.a), ~firstTrailingBit(1u << (abs(u_input.a) % 32u)));
    var var_4 = Struct_3(vec4<bool>(true, true, true, true), arg_0.e.a);
    return var_4.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(true, arg_0.a.x, arg_0.a.x);
    var var_1 = Struct_3(!func_4(Struct_2(_wgslsmith_mult_vec2_i32(arg_0.b.zx, arg_0.b.xy), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e.e, -332f, arg_1.e.e, -569f) + arg_1.b), _wgslsmith_f_op_f32(1841f - -444f), vec3<f32>(-1684f, arg_1.b.x, 427f), func_2(vec4<f32>(arg_1.c, arg_1.b.x, arg_1.b.x, -1356f), true, 1u))), ~(~arg_0.b));
    let var_2 = -arg_1.e.a.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.e.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.d.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(449f, 298f, false)) - arg_1.b.x))) * 1f);
    var_1 = Struct_3(vec4<bool>(func_4(arg_1).x, false, var_1.a.x, false), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.x, -1i, -1i) & vec3<i32>(-47428i, arg_0.b.x, var_1.b.x), countOneBits(var_1.b)));
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1496f, var_3, arg_1.e.d.x), _wgslsmith_f_op_vec4_f32(-arg_1.b), vec4<bool>(arg_0.a.x, false, arg_0.a.x, var_1.a.x)))))), !arg_0.a.x, 1u);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(countOneBits(98421i), 0i, reverseBits(1i), ~42688i)), firstLeadingBit(vec4<i32>(abs(i32(-1i) * -20283i), -1i, abs(1i), 24754i)));
    let var_1 = func_5(Struct_3(func_4(Struct_2(vec2<i32>(2147483647i, 2147483647i), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -533f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_0), vec3<f32>(arg_0, -115f, -1027f), func_2(vec4<f32>(-290f, arg_0, arg_0, arg_0), true, arg_2.x))), select(reverseBits(vec3<i32>(-23803i, -69684i, -1i)), max(-vec3<i32>(184i, 0i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-25410i, 1i, 2147483647i), vec3<i32>(-1i, 2147483647i, 2147483647i))), (-1905f < arg_0) & true)), Struct_2(abs(abs(abs(vec2<i32>(2147483647i, 0i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1017f, arg_0, 769f, arg_0), vec4<f32>(arg_0, 931f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(116f, -864f, arg_0, arg_0) * vec4<f32>(arg_0, arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 695f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 2069f, 486f, 528f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0), any(vec4<bool>(true, true, true, true)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 1519f), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(904f, 1021f, arg_0, 1328f), vec4<f32>(arg_0, arg_0, -884f, 1012f), false)) * vec4<f32>(1124f, arg_0, -366f, arg_0)), 43494u != max(6617u, arg_1.x), max(0u, 1u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d.x))), arg_0)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(1138f * -331f))) - func_5(Struct_3(vec4<bool>(true, false, true, true), var_1.a), Struct_2(vec2<i32>(-2147483647i, var_1.a.x), vec4<f32>(-255f, var_1.e, arg_0, var_1.e), 379f, vec3<f32>(-1286f, -496f, var_1.e), Struct_1(var_1.a, var_1.a.x, -17999i, vec2<f32>(var_1.e, -341f), -1339f))).d.x), _wgslsmith_f_op_f32(-1780f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0))))), _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(939f - arg_0))), _wgslsmith_f_op_f32(-1975f + -316f)));
    var_0 = func_3(Struct_2(firstLeadingBit(_wgslsmith_add_vec2_i32(var_1.a.xx, var_1.a.xx)) | vec2<i32>(_wgslsmith_clamp_i32(var_1.c, -15060i, var_1.b), func_3(Struct_2(var_1.a.zy, var_2, -631f, var_2.yxy, var_1), u_input.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(var_1.d.x, 1226f), var_1.d.x, _wgslsmith_f_op_f32(-101f - 614f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2, var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.xxx - var_2.ywz) + vec3<f32>(func_2(var_2, false, arg_1.x).e, 1634f, -742f)), func_5(Struct_3(vec4<bool>(true, true, true, true), min(vec3<i32>(var_1.a.x, var_1.c, var_1.c), var_1.a)), Struct_2(~vec2<i32>(-27814i, var_1.c), _wgslsmith_f_op_vec4_f32(sign(var_2)), _wgslsmith_div_f32(-531f, arg_0), vec3<f32>(var_1.d.x, var_2.x, arg_0), var_1))), ~(~_wgslsmith_dot_vec4_u32(arg_1, arg_1)) & ~_wgslsmith_mod_u32(53972u, arg_1.x));
    var var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, 0i, var_1.c), select(var_1.b, -63395i, true)), -var_1.c >> (8448u % 32u), var_1.a.x >> ((30789u | arg_2.x) % 32u), -37511i), vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, -1713i, 0i, var_1.c))), ~(~(~min(vec4<i32>(-1i, var_1.c, 2147483647i, var_1.c), vec4<i32>(-2147483647i, 0i, var_1.b, var_1.b)))));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u | ~min(~func_1(1006f, vec4<u32>(4294967295u, u_input.a, u_input.a, 36945u), vec2<u32>(u_input.a, u_input.a)), 4294967295u);
    var var_1 = func_4(Struct_2(vec2<i32>(-abs(-48119i), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(394f, -1000f, 606f, 684f), vec4<f32>(2097f, -1665f, -592f, -283f), true)) * _wgslsmith_div_vec4_f32(vec4<f32>(-496f, 618f, 877f, -1000f), vec4<f32>(-1000f, -957f, -798f, 474f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1921f * -464f)) + _wgslsmith_f_op_f32(step(-1000f, -1811f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(170f, -1749f, _wgslsmith_f_op_f32(-1000f * -889f)))), Struct_1(select(func_5(Struct_3(vec4<bool>(false, true, true, false), vec3<i32>(0i, 5176i, -68050i)), Struct_2(vec2<i32>(-28371i, 39533i), vec4<f32>(1248f, 152f, -1000f, 1000f), -467f, vec3<f32>(-1151f, -1338f, -1000f), Struct_1(vec3<i32>(-33406i, -2147483647i, 2147483647i), 2480i, 2802i, vec2<f32>(-105f, 2169f), 256f))).a, min(vec3<i32>(1i, -12732i, 1i), vec3<i32>(2147483647i, -64817i, 0i)), true), 1i, 1i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1591f, -110f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(780f, 144f, true))))));
    var_1 = vec4<bool>(var_1.x & var_1.x, var_1.x, !any(var_1.xxx), var_1.x);
    var_1 = select(!func_4(Struct_2(~vec2<i32>(1i, -53688i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1058f, -1501f, -139f, -1758f)), -883f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-248f, 1841f, 1000f)), Struct_1(vec3<i32>(26612i, 29072i, 16597i), 1i, 16857i, vec2<f32>(-1055f, -1069f), -1475f))), select(!(!func_4(Struct_2(vec2<i32>(16287i, 2147483647i), vec4<f32>(622f, 173f, -302f, -1295f), 420f, vec3<f32>(-1000f, -350f, -1822f), Struct_1(vec3<i32>(0i, 1i, -37511i), 13742i, 13683i, vec2<f32>(-485f, -637f), -902f)))), vec4<bool>(_wgslsmith_f_op_f32(select(-576f, 1389f, var_1.x)) == -1000f, !var_1.x & all(var_1.wzw), any(var_1.xw), false), select(vec4<bool>(false, true, var_1.x, var_1.x), select(select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(true, true, true, false), var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), all(var_1.yy)), var_1.x)), true);
    let var_2 = Struct_3(vec4<bool>(true, var_1.x, !(!(u_input.a > u_input.a)), func_4(Struct_2(vec2<i32>(1i, 1i), vec4<f32>(1452f, 1192f, 534f, -1518f), _wgslsmith_f_op_f32(1422f + -1179f), _wgslsmith_div_vec3_f32(vec3<f32>(-1211f, -1122f, -694f), vec3<f32>(1239f, 1315f, 2244f)), func_5(Struct_3(vec4<bool>(true, var_1.x, false, false), vec3<i32>(39407i, -7974i, -1i)), Struct_2(vec2<i32>(-34806i, 1i), vec4<f32>(-818f, 273f, -714f, 1000f), -1334f, vec3<f32>(302f, 449f, -188f), Struct_1(vec3<i32>(-41727i, -20003i, 1i), -12329i, -85478i, vec2<f32>(283f, -645f), 308f))))).x), max(vec3<i32>(~2147483647i | select(-2147483647i, -1i, false), 1i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(1i, -1i))), vec3<i32>(-2943i, 1i, 0i)));
    var var_3 = u_input.a;
    var var_4 = Struct_2(var_2.b.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(387f))), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-324f)))), 1101f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), -1884f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 716f, -145f), vec3<f32>(468f, 126f, 1869f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-322f, -1000f, 933f)))))))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1063f, -703f, -1234f, -1396f))))), var_1.x, firstLeadingBit(~var_0)));
    var_1 = vec4<bool>(func_4(Struct_2(vec2<i32>(2147483647i, -18408i) | _wgslsmith_mod_vec2_i32(vec2<i32>(3579i, var_2.b.x), vec2<i32>(-54854i, var_2.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_4.b, var_4.b))), 257f, vec3<f32>(_wgslsmith_f_op_f32(-var_4.b.x), var_4.c, -1000f), Struct_1(~var_2.b, var_2.b.x, var_2.b.x, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.d.x, 680f), vec2<f32>(808f, -452f))), _wgslsmith_f_op_f32(min(var_4.e.d.x, var_4.b.x))))).x, !(_wgslsmith_mod_i32(var_4.a.x >> (1u % 32u), var_4.a.x) <= (~var_2.b.x ^ ~(-49945i))), !(~29573i != var_4.a.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.b) - vec4<f32>(_wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(-var_4.c)), -1234f, _wgslsmith_f_op_f32(var_4.b.x * 1373f), var_4.e.e)), max(-var_4.a.x, var_2.b.x));
}

