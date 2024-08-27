struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_vec3_u32(u_input.e, u_input.e);
    var var_1 = all(select(vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !all(vec4<bool>(false, true, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, any(vec4<bool>(true, true, true, false)), true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))), vec3<bool>(any(vec3<bool>(true, false, false)), true, false)));
    var_1 = all(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17051u, 1603u, var_0.x), firstLeadingBit(vec3<u32>(1u, 21072u, u_input.c))), _wgslsmith_div_u32(abs(1u), _wgslsmith_add_u32(var_0.x, 24383u)), ~(~var_0.x), ~_wgslsmith_div_u32(43643u, var_0.x))), ~(~((vec4<u32>(1u, 0u, 17941u, 46105u) >> (vec4<u32>(u_input.e.x, var_0.x, var_0.x, 0u) % vec4<u32>(32u))) | (vec4<u32>(29586u, var_0.x, 4294967295u, u_input.c) ^ vec4<u32>(u_input.c, var_0.x, u_input.e.x, var_0.x)))));
    var_2 = _wgslsmith_sub_vec4_u32(abs(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1u, 10964u, var_2.x), vec4<u32>(1u, 1u, 6426u, u_input.c), vec4<u32>(var_2.x, var_2.x, 41344u, var_2.x)))) >> (firstLeadingBit((vec4<u32>(var_0.x, 24003u, 4294967295u, 50738u) | vec4<u32>(0u, var_0.x, 20003u, var_2.x)) >> (abs(vec4<u32>(var_0.x, var_0.x, var_2.x, var_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 6274u, 1665u, u_input.c) << (max(vec4<u32>(var_2.x, var_0.x, var_2.x, var_0.x), vec4<u32>(16572u, 4294967295u, 0u, 0u)) % vec4<u32>(32u)), abs(~vec4<u32>(u_input.c, 4294967295u, 107055u, var_2.x))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(select(~0u, var_2.x, false), 82792u, u_input.e.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 57318u, 0u), _wgslsmith_div_vec3_u32(u_input.e, _wgslsmith_mod_vec3_u32(var_2.zyx, vec3<u32>(4294967295u, 4294967295u, var_0.x))))), vec4<u32>(~u_input.e.x, abs(_wgslsmith_sub_u32(~var_2.x, ~140441u)), 1u, ~_wgslsmith_sub_u32(~u_input.c, _wgslsmith_add_u32(1u, var_2.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3;
    var var_1 = max(_wgslsmith_mult_u32(var_0.a.a | ~(~arg_3.a.a), u_input.c), func_3());
    var_1 = 1u;
    var_1 = arg_3.a.a;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x * 255f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1377f)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(845f)), arg_2.x))))));
}

fn func_1() -> i32 {
    let var_0 = ~(~u_input.c);
    let var_1 = u_input.a;
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-152f + -693f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f + -307f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(-var_2.a)) * var_2.a) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1159f, var_2.a.x), var_2.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2241f, -1231f) + vec2<f32>(1000f, var_2.a.x))), _wgslsmith_f_op_vec2_f32(func_2(vec2<u32>(53392u, 4294967295u), Struct_5(false, vec2<f32>(var_2.a.x, var_2.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 1000f, 1000f) * vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x)), Struct_2(Struct_1(0u, u_input.b.zxy))))))));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_2.a.x))));
    return ~reverseBits(select(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.b.yyz, vec3<i32>(u_input.d, 10869i, var_1)), _wgslsmith_mod_i32(var_1, u_input.d)), 1i, true));
}

fn func_4(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_clamp_u32(41419u, _wgslsmith_mult_u32(firstLeadingBit(u_input.c), ~(~(57061u << (u_input.c % 32u)))), ~0u);
    var var_1 = _wgslsmith_sub_vec3_i32(arg_0, arg_0);
    var var_2 = vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, 1u);
    var_2 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~(vec4<u32>(1u, 67835u, 0u, var_2.x) ^ vec4<u32>(9573u, 7327u, u_input.e.x, var_2.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(19628u, 52084u, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u)))), vec4<u32>(~abs(_wgslsmith_mod_u32(50427u, 64490u)), 15087u, 23945u, ~1u), reverseBits(~firstTrailingBit(abs(vec4<u32>(5670u, 173u, 0u, 26500u)))));
    var var_3 = min(1923u, u_input.c);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f + 466f)), -363f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(171f, -979f) + vec2<f32>(-212f, -417f))), vec2<f32>(_wgslsmith_f_op_f32(round(1528f)), 1045f))), vec2<bool>(true, true))));
    let var_1 = Struct_2(Struct_1(0u, u_input.b.xxy));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * _wgslsmith_f_op_vec2_f32(sign(var_0.a))))));
    let var_2 = Struct_2(var_1.a);
    var var_3 = func_4(vec3<i32>(firstTrailingBit(-var_2.a.b.x), (i32(-1i) * -20307i) | var_2.a.b.x, func_1()) & vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 25121i), vec2<i32>(-13043i, var_2.a.b.x)), -29543i, -1i));
    let var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.b.x, _wgslsmith_clamp_i32(max(-11326i, 4190i), func_1(), ~var_1.a.b.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, 1i, 7211i), u_input.b), func_1()), reverseBits(var_1.a.b));
    var var_5 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false))), select(vec2<bool>(!any(vec4<bool>(true, true, false, false)), true), vec2<bool>(true, true), true), !vec2<bool>(false, select(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.x);
}

