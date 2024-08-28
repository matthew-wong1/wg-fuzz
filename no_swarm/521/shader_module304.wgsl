struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(141f, 723f, 698f)))))));
    let var_1 = Struct_1(abs(~1u), min(abs(-_wgslsmith_sub_i32(-38860i, -2147483647i)), countOneBits(~(~(-2147483647i)))), ~u_input.a, true);
    let var_2 = Struct_2(~(1u >> (0u % 32u)), var_0.b);
    let var_3 = select(vec4<i32>(var_1.b, var_1.b | -11979i, var_1.b, _wgslsmith_mult_i32(max(~var_1.b, -var_1.b), -(~12202i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-38976i, -7159i, var_1.b, var_1.b), _wgslsmith_div_vec4_i32(vec4<i32>(5042i, -3781i, -1i, var_1.b), vec4<i32>(var_1.b, var_1.b, 46158i, -2147483647i)), !vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d)), _wgslsmith_sub_vec4_i32(-vec4<i32>(45329i, var_1.b, 1i, 0i), vec4<i32>(1i, 2147483647i, var_1.b, var_1.b))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, 2147483647i, var_1.b)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, var_1.b, -2147483647i, 18836i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, var_1.b, 30679i, var_1.b), vec4<i32>(var_1.b, 1i, var_1.b, var_1.b))))), true);
    let var_4 = select(!select(select(!vec4<bool>(true, false, var_1.d, var_1.d), select(vec4<bool>(true, false, var_1.d, true), vec4<bool>(false, true, true, true), vec4<bool>(var_1.d, true, true, true)), all(vec2<bool>(true, var_1.d))), vec4<bool>(!var_1.d, true, true, var_1.d), select(!vec4<bool>(false, true, var_1.d, true), vec4<bool>(var_1.d, var_1.d, false, false), true)), select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, var_1.d), vec4<bool>(true, true, true, var_1.d)), select(vec4<bool>(var_1.d, true, var_1.d, var_1.d), vec4<bool>(true, var_1.d, true, var_1.d), true), vec4<bool>(false, var_1.d, var_1.d, false)), !(!vec4<bool>(true, var_1.d, true, var_1.d)), !any(vec3<bool>(false, var_1.d, var_1.d))), select(!(!vec4<bool>(true, var_1.d, var_1.d, var_1.d)), vec4<bool>(all(vec3<bool>(var_1.d, true, var_1.d)), false | var_1.d, var_1.d, 639f < var_2.b.x), select(select(vec4<bool>(true, true, var_1.d, var_1.d), vec4<bool>(var_1.d, false, var_1.d, var_1.d), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, var_1.d, true, false), vec4<bool>(true, var_1.d, var_1.d, var_1.d)), vec4<bool>(var_1.d, var_1.d, var_1.d, false))), countOneBits(_wgslsmith_mult_i32(var_3.x, 38364i)) < (1i >> (~u_input.a.x % 32u))), vec4<bool>(var_1.d, all(select(vec2<bool>(true, false), !vec2<bool>(true, var_1.d), select(vec2<bool>(var_1.d, false), vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, var_1.d)))), all(vec4<bool>(var_1.d, var_1.d, false, var_1.d)) || all(vec2<bool>(true, true)), var_1.d));
    return var_3.x;
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = ~max(_wgslsmith_div_i32(func_3(), _wgslsmith_clamp_i32(40535i, -2147483647i, 0i)) << (_wgslsmith_dot_vec2_u32(~u_input.a.zy, vec2<u32>(0u, 36197u) << (u_input.a.zy % vec2<u32>(32u))) % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 55772i), vec2<i32>(14247i, 0i)) << (0u % 32u));
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_0.a.b.x));
    let var_2 = true;
    let var_3 = 1f;
    var var_4 = _wgslsmith_f_op_f32(floor(649f));
    return !var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_sub_vec4_u32((_wgslsmith_mult_vec4_u32(vec4<u32>(32432u, arg_1.a.a, u_input.a.x, u_input.a.x), vec4<u32>(1u, 23389u, u_input.a.x, 1u)) | ~u_input.a) & ((u_input.a & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 22953u)) & vec4<u32>(u_input.a.x, 25062u, 18672u, arg_1.a.a)), u_input.a), !func_2(Struct_3(Struct_2(26621u, arg_1.b.zwy), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1066f, 414f, arg_1.a.b.x, arg_1.b.x) + arg_1.b))));
    var_0 = Struct_1(1u, arg_3.x, var_0.c, !all(select(!vec4<bool>(true, false, var_0.d, var_0.d), vec4<bool>(false, true, false, true), var_0.d & true)));
    var var_1 = vec4<i32>(min(reverseBits(countOneBits(arg_0) >> (min(var_0.c.x, arg_1.a.a) % 32u)), firstTrailingBit(abs(16966i))), arg_3.x, arg_0, -arg_2);
    var var_2 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(var_0.c.xyw, vec3<u32>(var_0.a, var_0.c.x, 95122u)));
    var_1 = ~vec4<i32>(-(~(-32107i)), 9956i & _wgslsmith_div_i32(-36492i & arg_2, 1i), var_0.b, -var_1.x);
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    let var_0 = arg_0.d;
    let var_1 = func_4(-(~_wgslsmith_add_i32(-arg_0.b, _wgslsmith_clamp_i32(14160i, arg_0.b, arg_0.b))), Struct_3(Struct_2(~select(u_input.a.x, u_input.a.x, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1631f, 1000f, 516f) * vec3<f32>(-2048f, -301f, -313f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(705f, 1620f, 1000f, -1173f) - vec4<f32>(-684f, -286f, -618f, -1184f)) * vec4<f32>(-781f, 306f, -2110f, 591f)))), 0i << ((~firstTrailingBit(u_input.a.x) >> ((arg_0.a >> (abs(25989u) % 32u)) % 32u)) % 32u), select(vec2<i32>(-1i) * -min(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(7025i, arg_0.b)), -_wgslsmith_div_vec2_i32(-vec2<i32>(arg_0.b, arg_0.b), ~vec2<i32>(arg_0.b, 2147483647i)), any(vec3<bool>(!arg_0.d, func_2(Struct_3(Struct_2(arg_0.a, vec3<f32>(-1117f, -166f, -1700f)), vec4<f32>(-615f, -1987f, 497f, -1275f))), true))));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)) != !all(vec3<bool>(true, func_1(Struct_1(u_input.a.x, -13936i, u_input.a, false), vec2<bool>(true, false)), true));
    let var_1 = vec4<i32>(~(-1i), -5114i, -2147483647i, _wgslsmith_div_i32(-32259i, ~_wgslsmith_clamp_i32(2147483647i, 1i, 1i)));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(~select(~u_input.a.x, select(u_input.a.x, 252u, false), false), ~_wgslsmith_div_u32(u_input.a.x, abs(701u)), u_input.a.x), -1i, vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x << (u_input.a.x % 32u)), u_input.a.x, u_input.a.x >> (68706u % 32u), 0u), false);
    var var_3 = Struct_3(Struct_2(select(u_input.a.x, var_2.c.x, false), vec3<f32>(273f, _wgslsmith_f_op_f32(step(-442f, -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -176f))))), vec4<f32>(414f, 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1098f, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1126f + -2009f), -178f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1800f, 137f, var_0)))) * _wgslsmith_f_op_f32(step(1641f, _wgslsmith_f_op_f32(f32(-1f) * -136f))))));
    var var_4 = Struct_3(Struct_2(83977u, vec3<f32>(var_3.b.x, var_3.b.x, var_3.a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(826f, var_3.a.b.x, -1000f, 980f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2152f - var_3.b.x), _wgslsmith_f_op_f32(575f + var_3.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(-var_3.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_3.b)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.a.b.x, var_3.b.x, var_3.a.b.x, -375f)))))));
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-108f)) * var_3.a.b.x) * _wgslsmith_div_f32(var_3.a.b.x, var_3.a.b.x))), -2102f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.a.b.x, var_4.a.b.x)) - _wgslsmith_div_f32(-2586f, -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x - -661f) - -814f)) - _wgslsmith_f_op_f32(-1396f - 1004f)), (var_1.x >> (~var_3.a.a % 32u)) << (var_3.a.a % 32u), var_4.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(358f)))), var_3.a.b.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.b.x - _wgslsmith_f_op_f32(-var_3.a.b.x)) - _wgslsmith_f_op_f32(floor(var_4.a.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(551f * var_4.a.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1070f)) + _wgslsmith_f_op_f32(max(552f, _wgslsmith_f_op_f32(-var_4.b.x))))));
}

