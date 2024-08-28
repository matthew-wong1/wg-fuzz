struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), u_input.b), -_wgslsmith_div_vec2_i32(vec2<i32>(-7351i, u_input.a), vec2<i32>(u_input.a, -46955i)) & vec2<i32>(u_input.a << (51740u % 32u), _wgslsmith_div_i32(u_input.a, -2147483647i))), i32(-1i) * -1i);
    var_0 = vec3<i32>(37303i, max(_wgslsmith_add_i32(abs(var_0.x), _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), var_0.xx))), var_0.x), -1i);
    let var_1 = _wgslsmith_mult_vec3_u32(arg_0, ~(max(vec3<u32>(58962u, 35873u, 38241u), vec3<u32>(arg_3.x, 46991u, arg_0.x)) >> ((reverseBits(vec3<u32>(arg_0.x, 1u, 232u)) & vec3<u32>(18150u, 61848u, 32061u)) % vec3<u32>(32u))));
    var_0 = abs(~_wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.x, u_input.a, -13964i), firstLeadingBit(vec3<i32>(2147483647i, -48849i, 2147483647i) & vec3<i32>(-29348i, var_0.x, var_0.x))));
    var var_2 = reverseBits(var_1.zz);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-384f)) * -1030f))));
}

fn func_2(arg_0: Struct_5) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(-365f));
    var_0 = _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 824f, _wgslsmith_f_op_f32(func_3(~reverseBits(vec3<u32>(arg_0.b.x, 61975u, 12078u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(680f)) * -855f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.x, 792f), arg_0.a)))), arg_0.b))));
    let var_2 = Struct_3(1u, arg_0.d, select(!(!vec3<bool>(arg_0.d.x, true, true)), vec3<bool>(true, !all(vec3<bool>(arg_0.d.x, true, arg_0.d.x)), true), select(vec3<bool>(any(vec3<bool>(false, arg_0.d.x, false)), true, true), select(!vec3<bool>(true, arg_0.d.x, arg_0.d.x), select(vec3<bool>(true, false, arg_0.d.x), vec3<bool>(false, arg_0.d.x, arg_0.d.x), false), arg_0.d.x), !arg_0.d.x)), var_1.xy);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.d, _wgslsmith_f_op_vec2_f32(floor(var_1.xx)))));
    return (i32(-1i) * -1i) >> (~var_2.a % 32u);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, 1289f, 1704f, 1748f) - vec4<f32>(1046f, -1000f, -693f, 734f)))), vec4<f32>(1000f, -115f, _wgslsmith_f_op_f32(-309f - -269f), -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(526f - 1000f), -329f, _wgslsmith_f_op_f32(f32(-1f) * -1419f), 1f))), Struct_3(firstLeadingBit(min(_wgslsmith_clamp_u32(arg_2.d.x, arg_2.d.x, arg_2.d.x), arg_2.d.x)), !select(vec2<bool>(arg_2.a.x, false), vec2<bool>(arg_2.a.x, true), arg_2.a.yx), !select(select(arg_2.a, vec3<bool>(false, true, true), vec3<bool>(arg_1, true, false)), !arg_2.a, vec3<bool>(arg_1, arg_2.a.x, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, 246f)), _wgslsmith_f_op_f32(-1346f * 338f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-180f, 165f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1495f, 1000f))))));
    var var_1 = Struct_3(_wgslsmith_div_u32(var_0.b.a, var_0.b.a), select(!vec2<bool>(select(var_0.b.c.x, true, true), true), vec2<bool>(all(vec2<bool>(false, false)), var_0.b.b.x), true), var_0.b.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.yz - vec2<f32>(-2396f, var_0.b.d.x)) - var_0.b.d), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.d.x, 287f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1229f, 1155f))))))));
    var var_2 = Struct_2(arg_2);
    var var_3 = var_0.b;
    let var_4 = Struct_3(1u, select(!arg_2.a.yz, select(var_0.b.c.yx, select(vec2<bool>(true, false), vec2<bool>(true, true), false), (-1i >> (var_2.a.d.x % 32u)) < ~arg_2.c.x), true), vec3<bool>(true, true, arg_2.a.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.a.wx))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.d.x), var_0.a.x))));
    return var_2.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(1u, select(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.c.x, arg_1.c.x), vec2<i32>(u_input.a, -15471i)), false, Struct_1(vec3<bool>(arg_0.x, true, false), arg_1.d, -vec2<i32>(1i, u_input.c), arg_1.b)).a.yz, vec2<bool>(true, arg_1.a.x), !arg_0.x | all(vec2<bool>(true, true))), !(!vec3<bool>(arg_1.a.x, !arg_1.a.x, !arg_0.x)), vec2<f32>(-1616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 879f) + arg_2.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_2.x, -973f, -437f)))) - _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, -683f, 646f, arg_2.x) - vec4<f32>(arg_2.x, 345f, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec4_f32(-arg_2)))), Struct_3(1u, vec2<bool>(func_4(abs(arg_1.c), all(vec3<bool>(false, false, true)), Struct_1(var_0.c, arg_1.d, arg_1.c, arg_1.d)).a.x, !arg_1.a.x), !arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(round(-628f)))));
    let var_2 = true;
    var var_3 = _wgslsmith_mult_u32(~23787u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(countOneBits(var_1.b.a), 1u) << (((var_0.a & 0u) & ~31585u) % 32u), 1u));
    var_3 = _wgslsmith_add_u32(~select(~var_0.a, ~var_0.a, all(vec3<bool>(var_1.b.b.x, var_0.b.x, false))), ~0u) & 48338u;
    return Struct_2(func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(-26843i, u_input.c), vec2<i32>(arg_1.c.x, arg_1.c.x) << (vec2<u32>(arg_1.d.x, 34103u) % vec2<u32>(32u))), false, arg_1));
}

fn func_1(arg_0: Struct_1) -> Struct_5 {
    var var_0 = func_5(arg_0.a, func_4(vec2<i32>(min(u_input.b, func_2(Struct_5(vec2<f32>(-1942f, -336f), vec2<u32>(arg_0.b.x, 31864u), vec3<i32>(21614i, 21795i, 13976i), vec2<bool>(true, arg_0.a.x)))), ~(35519i & arg_0.c.x)), true, Struct_1(select(arg_0.a, arg_0.a, false), arg_0.b, -vec2<i32>(u_input.b, -1i) << (arg_0.b.xy % vec2<u32>(32u)), _wgslsmith_mult_vec3_u32(arg_0.b, vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(349f, 442f)), _wgslsmith_f_op_f32(max(1675f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -830f), 1232f))));
    var_0 = func_5(!vec3<bool>(var_0.a.a.x, func_5(vec3<bool>(false, arg_0.a.x, true), arg_0, vec4<f32>(111f, -650f, 677f, -653f)).a.a.x, !any(vec3<bool>(false, false, var_0.a.a.x))), func_4(vec2<i32>(_wgslsmith_mod_i32(func_2(Struct_5(vec2<f32>(-535f, 202f), vec2<u32>(77611u, var_0.a.d.x), vec3<i32>(arg_0.c.x, arg_0.c.x, u_input.c), vec2<bool>(arg_0.a.x, true))), arg_0.c.x), 0i), var_0.a.a.x, Struct_1(vec3<bool>(true, var_0.a.a.x, true), abs(arg_0.d), _wgslsmith_sub_vec2_i32(arg_0.c, var_0.a.c ^ arg_0.c), ~(~arg_0.d))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(411f + 793f), _wgslsmith_f_op_f32(step(-610f, 446f)))))), -588f, 1446f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f) - _wgslsmith_f_op_f32(floor(-2550f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-449f, 727f) + _wgslsmith_f_op_f32(1933f - -869f))))));
    let var_1 = Struct_2(arg_0);
    var var_2 = Struct_3(_wgslsmith_div_u32(~70288u, _wgslsmith_dot_vec3_u32(vec3<u32>(8298u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b.x, arg_0.b.x, 19019u, 3196u), vec4<u32>(61165u, 4294967295u, arg_0.d.x, 51075u)), min(1u, 4264u)), ~arg_0.d << (_wgslsmith_sub_vec3_u32(var_1.a.b, vec3<u32>(46732u, var_0.a.d.x, 79005u)) % vec3<u32>(32u)))), vec2<bool>(true, var_0.a.b.x <= (22033u << (_wgslsmith_div_u32(arg_0.d.x, arg_0.d.x) % 32u))), select(func_5(!func_4(var_1.a.c, true, Struct_1(arg_0.a, vec3<u32>(47861u, arg_0.b.x, var_0.a.d.x), var_1.a.c, var_1.a.d)).a, Struct_1(func_5(var_0.a.a, var_1.a, vec4<f32>(1336f, 1000f, -1000f, 1665f)).a.a, func_5(vec3<bool>(var_1.a.a.x, true, false), var_1.a, vec4<f32>(140f, -1429f, 2148f, 1041f)).a.d, ~vec2<i32>(-10608i, var_1.a.c.x), arg_0.d), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, 1536f, -559f, 469f) * vec4<f32>(1373f, -1000f, 1361f, -886f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, -898f, -301f, -535f))))).a.a, !select(vec3<bool>(arg_0.a.x, false, var_0.a.a.x), arg_0.a, vec3<bool>(true, arg_0.a.x, true)), !var_0.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(984f - -1052f)))));
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(33686u, arg_0.b.x, ~_wgslsmith_div_u32(~arg_0.d.x, _wgslsmith_div_u32(var_1.a.b.x, var_2.a)), 4294967295u), _wgslsmith_add_vec4_u32(max(max(vec4<u32>(var_0.a.b.x, arg_0.d.x, arg_0.d.x, var_2.a), vec4<u32>(11099u, arg_0.b.x, 1u, arg_0.d.x)), vec4<u32>(~var_0.a.b.x, ~var_0.a.d.x, 47842u ^ arg_0.d.x, firstLeadingBit(1u))), ~vec4<u32>(var_1.a.d.x, var_0.a.b.x, 21453u, ~var_2.a)));
    return Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(var_2.d)), var_2.d, select(func_5(!vec3<bool>(true, true, var_1.a.a.x), var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, var_2.d.x, -653f, var_2.d.x))).a.a.zz, arg_0.a.xy, any(var_1.a.a)))), var_0.a.b.zx, abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x, var_0.a.c.x, 55637i), -vec3<i32>(var_1.a.c.x, u_input.c, -13042i)), abs(~vec3<i32>(-46285i, 47685i, arg_0.c.x)), vec3<i32>(max(var_0.a.c.x, -2147483647i), ~0i, i32(-1i) * -50670i))), vec2<bool>(!(!arg_0.a.x), var_1.a.a.x));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = -148f;
    let var_1 = select(vec4<bool>(arg_0.d.x, !arg_0.d.x, func_5(vec3<bool>(false, !arg_0.d.x, false), func_4(arg_0.c.xx, !arg_0.d.x, func_4(vec2<i32>(-68545i, u_input.a), true, Struct_1(vec3<bool>(true, arg_0.d.x, arg_0.d.x), vec3<u32>(arg_0.b.x, 0u, 55840u), vec2<i32>(u_input.b, -62838i), vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-223f, arg_0.a.x, arg_1.x, -459f))).a.a.x, !arg_0.d.x == (_wgslsmith_clamp_i32(u_input.a, 2955i, u_input.b) == func_4(vec2<i32>(-2147483647i, 31944i), true, Struct_1(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<u32>(4294967295u, arg_0.b.x, 0u), vec2<i32>(-2147483647i, 2147483647i), vec3<u32>(arg_0.b.x, 27349u, 1u))).c.x)), select(select(select(!vec4<bool>(true, arg_0.d.x, false, arg_0.d.x), !vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, true), true & arg_0.d.x), select(select(vec4<bool>(true, arg_0.d.x, true, arg_0.d.x), vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x), true), vec4<bool>(false, arg_0.d.x, false, arg_0.d.x), true), true), vec4<bool>(!arg_0.d.x, 0u < select(86230u, 4294967295u, false), any(vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x)), arg_0.d.x), ~_wgslsmith_div_u32(7128u, 4294967295u) == arg_0.b.x), vec4<bool>(true, !arg_0.d.x, true, func_4(arg_0.c.yy, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) > arg_0.a.x, func_5(func_5(vec3<bool>(true, arg_0.d.x, arg_0.d.x), Struct_1(vec3<bool>(true, arg_0.d.x, true), vec3<u32>(arg_0.b.x, arg_0.b.x, 4294967295u), vec2<i32>(u_input.b, arg_0.c.x), vec3<u32>(arg_0.b.x, 11315u, arg_0.b.x)), vec4<f32>(arg_1.x, arg_1.x, arg_0.a.x, -584f)).a.a, func_4(arg_0.c.xy, false, Struct_1(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<u32>(0u, 0u, 23589u), arg_0.c.zz, vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1339f, arg_1.x, var_0, -818f), vec4<f32>(-1029f, -740f, 2162f, -1076f), vec4<bool>(true, arg_0.d.x, true, arg_0.d.x)))).a).a.x));
    var var_2 = max(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, 1u, arg_0.b.x, arg_0.b.x), vec4<u32>(arg_0.b.x, 18842u, arg_0.b.x, 3168u)))), ~vec4<u32>(~(~arg_0.b.x), ~5685u, 36394u, _wgslsmith_add_u32(arg_0.b.x, _wgslsmith_div_u32(arg_0.b.x, arg_0.b.x))));
    var_2 = min(_wgslsmith_mod_vec4_u32(max(abs(vec4<u32>(1u, 14196u, 1u, arg_0.b.x)), vec4<u32>(89002u, 1u, 4294967295u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 34281u, 1u, arg_0.b.x), abs(vec4<u32>(var_2.x, arg_0.b.x, 8044u, var_2.x)))), vec4<u32>(var_2.x, var_2.x, arg_0.b.x, arg_0.b.x)) | vec4<u32>(0u, _wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, arg_0.b.x, var_2.x, var_2.x), vec4<u32>(1u, arg_0.b.x, arg_0.b.x, var_2.x)), vec4<u32>(38200u, 0u, arg_0.b.x, arg_0.b.x), true), abs(~vec4<u32>(arg_0.b.x, 33838u, var_2.x, arg_0.b.x))), var_2.x, arg_0.b.x >> (~4294967295u % 32u));
    let var_3 = -arg_0.c;
    return !(!vec4<bool>(arg_0.d.x, arg_0.d.x, var_0 != _wgslsmith_f_op_f32(select(var_0, arg_0.a.x, arg_0.d.x)), true));
}

fn func_7(arg_0: vec3<f32>, arg_1: vec4<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -621f)))), arg_0.x)) + _wgslsmith_f_op_f32(1542f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = !arg_1.x;
    let var_2 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~func_5(vec3<bool>(true, var_1, arg_1.x), Struct_1(arg_1.wxx, vec3<u32>(1u, 10119u, 50015u), vec2<i32>(u_input.c, u_input.c), vec3<u32>(0u, 23012u, 97101u)), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 2402f)).a.d, vec3<u32>(~0u, 0u, 1u)), select(~(~vec3<u32>(0u, 34818u, 1u)), ~(~vec3<u32>(4294967295u, 76411u, 121251u)), arg_1.ywx));
    var var_3 = ~_wgslsmith_sub_u32(12282u, var_2.x);
    let var_4 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.b), abs(2147483647i) | u_input.c), _wgslsmith_sub_i32((i32(-1i) * -u_input.a) | u_input.b, _wgslsmith_mult_i32(u_input.a, -u_input.c)));
    return StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(47530i, u_input.c, u_input.a, var_4), vec4<i32>(-2147483647i, 26402i, 0i, -2147483647i)) | abs(vec4<i32>(-1i, 2147483647i, u_input.a, u_input.b)), vec4<i32>(var_4, 1i << (var_2.x % 32u), u_input.c, 3941i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_4, 13763i, -10688i, -1i), vec4<i32>(u_input.a, 2147483647i, u_input.a, var_4)))), 1485f, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -406f, -1546f) * vec3<f32>(653f, -242f, 1896f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, -879f, 1020f) * vec3<f32>(448f, 128f, 288f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-680f, 1000f, -2262f) + vec3<f32>(-1870f, 473f, -987f)))), !func_6(func_1(Struct_1(vec3<bool>(false, true, false), vec3<u32>(79202u, 1u, 14597u), vec2<i32>(48759i, 0i), vec3<u32>(0u, 29987u, 24514u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, -1778f, 922f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-675f, 1081f, -778f)))));
}

