struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>) -> i32 {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f - 1128f))) * -1000f));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2177f - _wgslsmith_f_op_f32(944f + var_0))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1f))))));
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = vec4<f32>(-506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-512f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f))) * _wgslsmith_f_op_f32(776f * -536f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f)))), _wgslsmith_f_op_f32(ceil(1455f)));
    return Struct_1(vec4<i32>(~_wgslsmith_add_i32(abs(2147483647i), u_input.a), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, -70352i, u_input.a, -28149i) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -2147483647i), vec4<i32>(25561i, 43552i, u_input.b.x, 1i)), vec4<i32>(6131i, func_3(vec2<i32>(u_input.a, u_input.a), u_input.b.zx), -1i, _wgslsmith_mod_i32(36323i, u_input.a))), ~u_input.b.x, -42812i), vec2<i32>(_wgslsmith_div_i32(min(~(-20093i), 1i), -(u_input.b.x << (u_input.c % 32u))), u_input.a), 7488u, abs(firstLeadingBit(u_input.d)));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global0 = (countOneBits(u_input.d.x) <= ~(~arg_0.c)) && any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)));
    let var_1 = firstLeadingBit(~(firstLeadingBit(vec4<u32>(0u, u_input.e, 4294967295u, arg_0.d.x)) & vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, var_0.c, arg_0.d.x), vec3<u32>(0u, u_input.d.x, u_input.e)), min(var_0.d.x, arg_0.c), arg_0.c, firstTrailingBit(var_0.c))));
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2212f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(714f * -500f) + _wgslsmith_f_op_f32(297f - -1378f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-549f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2159f, 1353f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2256f)), _wgslsmith_f_op_f32(floor(-1421f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2299f + -881f)) * -124f)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_div_f32(571f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f - -909f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1086f)) - _wgslsmith_f_op_f32(func_4(func_2())));
    global0 = true;
    global0 = all(!vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), any(vec4<bool>(true, true, true, true)), true));
    global0 = any(!select(vec3<bool>(false, true, u_input.a <= -1i), vec3<bool>(true, true, true), true));
    let var_0 = !(!vec4<bool>(true, true, true, any(vec2<bool>(true, true)) | true));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(true, true, true, true));
    var var_0 = func_1();
    var_0 = Struct_1(~(~vec4<i32>(1i, func_1().a.x, var_0.a.x, ~0i)), var_0.a.zw, ((~82650u ^ u_input.e) >> (countOneBits(~50622u) % 32u)) << (u_input.c % 32u), vec2<u32>(var_0.d.x, ~var_0.d.x));
    var var_1 = vec3<bool>(true, any(vec2<bool>(true || (var_0.c >= 4294967295u), !all(vec4<bool>(false, true, false, true)))), false);
    let var_2 = u_input.b.yz;
    var_1 = select(!vec3<bool>(false, all(vec4<bool>(var_1.x, true, var_1.x, true)), false), !vec3<bool>(true, var_2.x <= ~20944i, !var_1.x), true);
    let var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_clamp_i32(-2147483647i, var_2.x, var_0.b.x) << (~firstLeadingBit(26106u) % 32u), var_0.b.x), vec2<i32>(-22423i, select(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, var_2.x, u_input.b.x, var_0.b.x), var_0.a), vec4<i32>(u_input.b.x, 1i, 1592i, 0i)), func_3(vec2<i32>(u_input.a, var_0.a.x), var_2) ^ max(54187i, 2147483647i), !var_1.x)));
    let var_4 = ~(~(-2147483647i));
    let var_5 = _wgslsmith_div_vec2_u32(var_0.d, ~(~vec2<u32>(u_input.e, var_0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, _wgslsmith_sub_u32(~_wgslsmith_div_u32(3055u, 79426u), var_0.d.x << (~57333u % 32u)), var_5.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.d, u_input.d), u_input.d << (var_0.d % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(51986u, 17292u), vec2<u32>(43810u, var_5.x))))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(77238u, 2774u, u_input.d.x, 4294967295u) >> (firstTrailingBit(vec4<u32>(12659u, 1u, 43837u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, 26109u, var_0.d.x, u_input.d.x), firstLeadingBit(vec4<u32>(var_5.x, 0u, 0u, 29245u))), vec4<u32>(1u, ~22620u, u_input.d.x, var_0.c))), vec2<u32>(_wgslsmith_mod_u32(var_0.d.x, u_input.d.x), firstTrailingBit(var_5.x ^ 0u)) ^ u_input.d);
}

