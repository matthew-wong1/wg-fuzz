struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_2(all(vec3<bool>(true, true, false)));
    var var_1 = Struct_2(1u == _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(78270u, 31824u, 22451u)), vec3<u32>(1u, 1u, 1u)));
    let var_2 = Struct_3(var_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1807f, -1000f, -716f) * vec3<f32>(-1169f, 876f, 1241f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-429f, 830f, -1069f), vec3<f32>(-595f, 531f, -300f))), vec3<f32>(-588f, -577f, _wgslsmith_f_op_f32(trunc(-2430f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(111f, -125f), _wgslsmith_f_op_f32(1000f + 430f), _wgslsmith_f_op_f32(484f - 1000f)))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x - 1026f), var_3.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(590f - var_3.x), _wgslsmith_f_op_f32(-366f + var_3.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -454f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x))) + -552f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1565f))))), var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), var_3.x))))));
    return all(!vec3<bool>(false, _wgslsmith_f_op_f32(var_3.x * var_4.x) < _wgslsmith_f_op_f32(ceil(-1034f)), any(select(vec3<bool>(var_2.a.a, var_1.a, var_2.a.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, true, var_2.a.a)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_1(vec3<u32>(~(~1u), 4294967295u, _wgslsmith_sub_u32(firstTrailingBit(~1u), 25116u)), false, _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~4294967295u, 0u) << (select(vec3<u32>(0u, 0u, 26902u), select(vec3<u32>(64538u, 387u, 0u), vec3<u32>(0u, 4294967295u, 116913u), vec3<bool>(arg_2, arg_1.x, arg_0.a.a)), !arg_3.xwx) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(20943u, 1u, 4294967295u, 0u)), 1u, ~(~4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(153f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(860f * -1947f), _wgslsmith_f_op_f32(f32(-1f) * -557f)))))));
    let var_1 = _wgslsmith_div_i32(reverseBits(u_input.b), u_input.a);
    var var_2 = vec3<bool>(var_0.b, !arg_2, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-999f, var_0.d)) * _wgslsmith_div_f32(-1214f, 601f)) < -128f));
    var var_3 = var_0;
    var_2 = !arg_3.xyz;
    return !vec3<bool>(any(select(select(vec2<bool>(true, arg_0.a.a), arg_3.ww, arg_1), !arg_3.ww, vec2<bool>(true, true))), !func_3(vec3<i32>(u_input.b, var_1, u_input.a)) != (~var_3.a.x < 56476u), true);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = all(!func_4(Struct_3(Struct_2(arg_2)), select(!vec2<bool>(arg_2, arg_0.b), vec2<bool>(true, arg_0.b), !arg_0.b), func_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -4583i), vec3<i32>(68943i, -20197i, -4427i))), select(select(vec4<bool>(arg_0.b, false, true, arg_2), vec4<bool>(arg_0.b, false, false, false), vec4<bool>(false, arg_0.b, arg_0.b, true)), vec4<bool>(false, false, arg_2, true), u_input.b == 12317i)));
    var var_1 = arg_0;
    let var_2 = !vec2<bool>(!arg_2, true);
    return Struct_1(var_1.a, arg_0.b, ~var_1.a | _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.c, vec3<u32>(1u, 78066u, 0u)), var_1.a, var_1.c), abs(vec3<u32>(17456u, 1u, arg_0.c.x)) & countOneBits(vec3<u32>(var_1.c.x, 4294967295u, 4878u))), arg_3.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = vec3<i32>(-1i) * -(~_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, 24631i, 5144i), vec3<i32>(-1i, u_input.b, var_0)));
    var var_2 = vec4<u32>(arg_1.c.x, select(29119u, 56677u, !(!any(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b)))), 34541u, 1u);
    var_2 = _wgslsmith_add_vec4_u32(reverseBits(firstLeadingBit(max(vec4<u32>(46057u, 71139u, arg_1.c.x, arg_1.c.x), ~vec4<u32>(var_2.x, 4294967295u, 66344u, 10047u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(~(~0u), arg_0, _wgslsmith_mult_u32(_wgslsmith_sub_u32(34622u, 1907u), _wgslsmith_mod_u32(4294967295u, arg_0)), 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(~arg_1.a.x, arg_1.c.x, var_2.x, countOneBits(var_2.x)), ~(vec4<u32>(arg_0, 10752u, 4294967295u, arg_0) & vec4<u32>(36454u, 88966u, var_2.x, 21145u)))));
    var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(53797u, var_2.x, var_2.x, arg_0)), abs(vec4<u32>(1u, var_2.x, 1u, var_2.x) & vec4<u32>(4294967295u, arg_0, arg_1.c.x, arg_0))), vec4<u32>(~arg_0, ~arg_0, ~_wgslsmith_div_u32(41818u, 43183u), var_2.x)), ~vec4<u32>(_wgslsmith_mod_u32(var_2.x, 1u), 4294967295u, arg_0 >> (0u % 32u), _wgslsmith_mult_u32(23343u, arg_0)) & ~vec4<u32>(~var_2.x, ~var_2.x, ~arg_0, ~arg_0));
    return Struct_2(!arg_1.b && !(!(!arg_1.b)));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_3(arg_1);
    return func_2(Struct_1(vec3<u32>(40297u, 4294967295u, _wgslsmith_mult_u32(35720u, 15576u)), var_0.a.a, arg_0.yyy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f + arg_3) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_3)), 1247f))))), false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-523f))), arg_3, _wgslsmith_f_op_f32(ceil(-679f)), 1f));
}

fn func_7(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_u32(func_2(func_2(func_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -798f), arg_0.d <= -321f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d, -1000f, arg_0.d, arg_0.d)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.d, -1865f))), !func_3(vec3<i32>(2147483647i, 2147483647i, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.d)), arg_0.d, _wgslsmith_f_op_f32(max(-804f, arg_0.d)), 351f)), _wgslsmith_f_op_f32(trunc(1f)), arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, 765f, -736f, arg_0.d)))))).a.x, _wgslsmith_mod_u32(arg_0.c.x, arg_0.a.x));
    var var_1 = Struct_3(func_5(var_0, func_2(arg_0, func_2(func_6(vec4<u32>(1u, 0u, 20436u, arg_0.c.x), Struct_2(true), var_0, 882f), _wgslsmith_div_f32(-1000f, arg_0.d), arg_0.b & false, _wgslsmith_div_vec4_f32(vec4<f32>(1128f, arg_0.d, arg_0.d, -124f), vec4<f32>(arg_0.d, 1476f, arg_0.d, -1167f))).d, true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d, arg_0.d, arg_0.d, -437f))))));
    let var_2 = select(firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec2_u32(arg_0.c.xy, vec2<u32>(arg_0.c.x, 7232u)))), arg_0.a.yy, vec2<bool>(u_input.b <= ~u_input.b, var_1.a.a));
    let var_3 = ~(39917u | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0.a, ~arg_0.a), 1u));
    var var_4 = select(!(!func_4(Struct_3(var_1.a), select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(arg_0.b, false), vec2<bool>(var_1.a.a, var_1.a.a)), !var_1.a.a, vec4<bool>(var_1.a.a, false, true, arg_0.b)).zz), select(vec2<bool>(true, true), func_4(Struct_3(var_1.a), vec2<bool>(any(vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, var_1.a.a)), true), !func_4(Struct_3(var_1.a), vec2<bool>(false, true), false, vec4<bool>(false, var_1.a.a, arg_0.b, false)).x, !select(vec4<bool>(true, true, false, var_1.a.a), vec4<bool>(true, true, false, true), var_1.a.a)).xz, select(vec2<bool>(func_4(Struct_3(Struct_2(false)), vec2<bool>(false, true), false, vec4<bool>(false, arg_0.b, true, arg_0.b)).x, true), vec2<bool>(arg_0.b, true), vec2<bool>(true, true))), arg_0.b && true);
    return -1423f;
}

fn func_8(arg_0: f32, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = func_3(-(~vec3<i32>(u_input.b, u_input.b, ~u_input.a)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f + 1252f));
    var_1 = !any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))) || all(vec3<bool>(true, true, true));
    var var_2 = !vec2<bool>(true, !(_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(arg_0 + -1438f)));
    return Struct_2(func_6(_wgslsmith_div_vec4_u32(vec4<u32>(66995u, firstTrailingBit(arg_1.x), _wgslsmith_mod_u32(arg_1.x, arg_1.x), arg_1.x), vec4<u32>(~arg_1.x, arg_1.x, ~36921u, arg_1.x | arg_1.x)), func_5(arg_1.x, func_6(~vec4<u32>(48320u, arg_1.x, arg_1.x, arg_1.x), Struct_2(false), 47129u << (0u % 32u), -1339f)), (firstTrailingBit(59560u) | ~1u) ^ ~(~arg_1.x), 813f).b);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    let var_0 = func_8(_wgslsmith_f_op_f32(func_7(func_6(abs(~vec4<u32>(21310u, 18250u, 95934u, 94415u)), func_5(1u, func_2(Struct_1(vec3<u32>(4294967295u, 27486u, 49669u), true, vec3<u32>(1u, 48629u, 1u), 171f), -513f, false, vec4<f32>(-1092f, arg_0, -285f, arg_0))), _wgslsmith_sub_u32(35493u, 27025u) << (func_2(Struct_1(vec3<u32>(65937u, 15507u, 1u), false, vec3<u32>(36263u, 1u, 48498u), 487f), arg_0, false, vec4<f32>(388f, arg_0, 1167f, -382f)).c.x % 32u), arg_0))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 17419u))));
    var var_1 = ~0u;
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_sub_i32(reverseBits(_wgslsmith_clamp_i32(u_input.b, arg_1, 1i)), 0i), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 0i), vec4<i32>(arg_1, -42297i, 12731i, 1i)))), vec3<i32>(arg_1, abs(arg_1) | reverseBits(-1i), firstTrailingBit(abs(arg_1))) ^ (~(~vec3<i32>(0i, arg_1, -16649i)) & _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 1i, 1i)), firstLeadingBit(vec3<i32>(-2147483647i, u_input.a, -1i)))));
    let var_3 = var_0;
    var_1 = select((4294967295u | _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(24296u, 1u), select(1u, 4294967295u, var_0.a))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(20796u, 4294967295u))) % 32u), func_2(func_2(Struct_1(vec3<u32>(4294967295u, 0u, 2295u), all(vec3<bool>(var_0.a, false, var_0.a)), countOneBits(vec3<u32>(35224u, 1u, 26480u)), _wgslsmith_f_op_f32(1000f - -993f)), -1410f, all(select(vec3<bool>(true, var_3.a, true), vec3<bool>(var_0.a, true, true), var_0.a)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(round(709f)), _wgslsmith_f_op_f32(min(2254f, -1000f)))), arg_0, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, arg_0, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-378f, -1000f, arg_0, 225f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, -783f), vec4<f32>(arg_0, arg_0, arg_0, 1023f), vec4<bool>(var_0.a, true, true, var_3.a))))))).a.x, 1000f <= _wgslsmith_f_op_f32(func_7(func_2(Struct_1(vec3<u32>(1u, 29779u, 4294967295u), true, vec3<u32>(0u, 60812u, 32684u), -287f), arg_0, true, vec4<f32>(-149f, arg_0, -1000f, -1518f)))));
    return func_8(936f, countOneBits(~vec2<u32>(1u, 1u)));
}

fn func_9(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = Struct_2(-12854i >= _wgslsmith_clamp_i32(0i, reverseBits(-7333i), countOneBits(_wgslsmith_clamp_i32(u_input.a, -2298i, -5914i))));
    var var_1 = firstTrailingBit(max((~vec4<u32>(1u, 7373u, 49362u, 92396u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 24446u, 202u, 36046u), vec4<u32>(53034u, 4294967295u, 44625u, 13450u), vec4<u32>(0u, 4294967295u, 1255u, 0u))) ^ abs(~vec4<u32>(42480u, 46742u, 81502u, 36497u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 92762u), vec2<u32>(23513u, 24788u)), 50733u, ~1u, abs(reverseBits(52839u)))));
    let var_2 = abs(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, 0i) | _wgslsmith_sub_vec2_i32(arg_0.xx | arg_0.xy, arg_0.yz), vec2<i32>(arg_0.x, abs(-21115i))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(226f)) + _wgslsmith_f_op_f32(round(874f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(731f, -2322f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(Struct_1(var_1.yxw, true, var_1.wwz, 518f), 981f, true, vec4<f32>(1000f, -107f, 134f, 2004f)).d))) * -495f));
    return vec3<u32>(var_1.x, var_1.x, var_1.x);
}

fn func_10(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = func_5(_wgslsmith_div_u32(27186u, _wgslsmith_mod_u32(func_6(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, 33786u, 37267u, arg_0.a.x), vec4<u32>(42525u, arg_0.a.x, 1u, arg_0.c.x)), func_8(arg_0.d, arg_0.a.xx), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.d)).c.x, reverseBits(0u))), arg_0);
    let var_2 = Struct_1(vec3<u32>(0u, arg_0.a.x, ~30556u >> (arg_0.a.x % 32u)), arg_0.b, select(vec3<u32>(abs(firstTrailingBit(4294967295u)), 1u, _wgslsmith_div_u32(~arg_0.c.x, firstTrailingBit(1u))), ~(~_wgslsmith_mult_vec3_u32(arg_0.c, arg_0.a)), arg_1.x), arg_0.d);
    var var_3 = vec2<u32>(~(~select(arg_0.c.x, 49991u ^ var_2.c.x, false)), var_2.a.x);
    let var_4 = var_2.b || ((_wgslsmith_mult_u32(var_2.c.x >> (var_2.a.x % 32u), func_2(var_2, var_2.d, var_2.b, vec4<f32>(791f, -926f, 134f, 575f)).c.x) >= ~4294967295u) && (all(func_4(Struct_3(Struct_2(var_1.a)), vec2<bool>(arg_1.x, false), true, vec4<bool>(arg_0.b, false, false, arg_0.b)).yz) | false));
    return var_1;
}

fn func_11(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(!all(vec4<bool>(true, !arg_1.a, false | arg_1.a, true)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1195f))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 294f) + _wgslsmith_f_op_f32(func_7(Struct_1(vec3<u32>(47757u, 0u, 25648u), true, vec3<u32>(0u, 1u, 4294967295u), arg_0.x))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1390f + arg_0.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x)));
    var var_3 = ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<bool>(arg_1.a, true)), _wgslsmith_mult_vec2_u32(countOneBits(reverseBits(vec2<u32>(0u, 1u))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 6269u), vec2<u32>(1u, 1u))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1006f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - 339f), arg_0.x, !arg_1.a))), arg_0.x) * arg_0.x);
    return func_2(func_2(Struct_1(vec3<u32>(1u, var_3.x, var_3.x), !func_3(vec3<i32>(u_input.b, u_input.a, u_input.b)), vec3<u32>(103369u >> (1u % 32u), var_3.x, var_3.x), _wgslsmith_f_op_f32(820f + _wgslsmith_div_f32(-773f, 1499f))), -364f, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(1392f * 1282f), _wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(-arg_0.x)))), 1629f, !(var_0.a || all(func_4(var_1, vec2<bool>(true, true), false, vec4<bool>(true, var_1.a.a, var_0.a, arg_1.a)).xz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 564f, -260f, -327f) - vec4<f32>(arg_0.x, 234f, arg_0.x, 491f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -128f, arg_0.x, 1000f), vec4<f32>(191f, -612f, arg_0.x, -140f)))), vec4<f32>(_wgslsmith_f_op_f32(1220f + arg_0.x), _wgslsmith_f_op_f32(floor(-1152f)), -1776f, -254f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_11(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-271f, 443f, false)), _wgslsmith_f_op_f32(-1438f - -858f), 749f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -1224f, 1235f), vec3<f32>(-1000f, -1389f, -1027f))) * vec3<f32>(627f, 247f, 813f)))), func_10(Struct_1(_wgslsmith_mod_vec3_u32(select(vec3<u32>(67295u, 2413u, 13955u), vec3<u32>(23391u, 1u, 22469u), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 30892u, 1u), vec3<u32>(41592u, 0u, 1u), vec3<u32>(0u, 101098u, 1u))), true, func_9(-vec3<i32>(3690i, 2147483647i, u_input.a), func_1(1000f, u_input.a), vec2<bool>(true, false)), _wgslsmith_f_op_f32(max(-374f, -762f))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var_0 = func_11(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -1410f, _wgslsmith_f_op_f32(sign(var_0.d)))))), Struct_2(any(vec3<bool>(true, true, var_0.b))));
    var_0 = Struct_1(func_2(func_11(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-853f, var_0.d, var_0.d))))), Struct_2(false)), var_0.d, !(!(!var_0.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1628f, var_0.d, var_0.d, -558f), vec4<f32>(-469f, var_0.d, var_0.d, var_0.d)) * vec4<f32>(var_0.d, var_0.d, 1125f, -1431f))))).c, any(func_4(Struct_3(func_1(506f, -2147483647i)), vec2<bool>(true, var_0.b), func_4(Struct_3(Struct_2(true)), vec2<bool>(var_0.b, false), var_0.b || true, vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)).x, select(!vec4<bool>(false, var_0.b, var_0.b, true), select(vec4<bool>(false, true, var_0.b, false), vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b)), vec4<bool>(var_0.b, false, var_0.b, var_0.b)))), countOneBits(firstLeadingBit(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))));
    let var_1 = countOneBits((((var_0.a.x & 33595u) & (var_0.a.x | 1u)) | ~var_0.a.x) & ~var_0.a.x);
    var var_2 = countOneBits(~vec4<i32>(u_input.b, _wgslsmith_div_i32(1i, 14199i), ~(-6043i), abs(u_input.b << (var_0.a.x % 32u))));
    let var_3 = func_2(Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(var_0.c.x, 4294967295u, var_1)), ~vec3<u32>(var_0.c.x, var_1, 129779u)), (func_9(vec3<i32>(u_input.a, u_input.a, 25266i), Struct_2(var_0.b), vec2<bool>(var_0.b, var_0.b)).x >= var_0.a.x) | func_6(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 11131u, var_0.a.x, 33283u), vec4<u32>(1u, 82975u, 0u, 47472u)), func_1(var_0.d, 2147483647i), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 14522u), var_0.c.zx), _wgslsmith_f_op_f32(round(var_0.d))).b, ~(~(var_0.c << (vec3<u32>(var_0.a.x, 42772u, 54105u) % vec3<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(f32(-1f) * -168f)), -1123f)), _wgslsmith_f_op_f32(func_7(Struct_1(vec3<u32>(~19519u, var_0.a.x, var_0.c.x), all(!vec3<bool>(var_0.b, var_0.b, var_0.b)), select(vec3<u32>(var_1, 30557u, 32687u) << (vec3<u32>(14226u, 4294967295u, 36572u) % vec3<u32>(32u)), vec3<u32>(0u, 2675u, 37842u), true | var_0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(sign(665f))))))), func_8(-567f, vec2<u32>(var_0.a.x, 28662u)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, _wgslsmith_f_op_f32(-var_0.d), 2326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-633f - 1668f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(370f, var_0.d, var_0.d, var_0.d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1173f, 549f, 697f, var_0.d), vec4<f32>(var_0.d, -172f, var_0.d, 405f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d, var_0.d, var_0.d, var_0.d), vec4<f32>(-757f, -1227f, var_0.d, 2056f)))))));
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.b, u_input.b) ^ ~var_2.ywy, _wgslsmith_add_vec3_i32(var_2.xxy, vec3<i32>(u_input.b, 2147483647i, u_input.b)) >> (max(var_3.a, vec3<u32>(51141u, var_3.c.x, 8440u)) % vec3<u32>(32u))), ~_wgslsmith_div_i32(u_input.a, u_input.b) << (~(~var_1) % 32u), var_2.x), abs(select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, var_3.c.x, var_1), vec4<u32>(23359u, var_3.a.x, var_3.a.x, var_0.a.x)), firstLeadingBit(var_3.c.x)), countOneBits(~var_3.a.xx), func_4(Struct_3(Struct_2(true)), vec2<bool>(true, false), var_0.b, !vec4<bool>(true, var_0.b, var_0.b, false)).zz)), abs(1u), _wgslsmith_f_op_f32(-var_0.d), -(~(-_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, 1i), vec3<i32>(var_2.x, u_input.b, -2147483647i)))));
}

