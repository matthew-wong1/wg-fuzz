struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = 28242u;
    let var_1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(4294967295u, 61753u), 1u << (_wgslsmith_div_u32(8001u, 4294967295u) % 32u)), firstTrailingBit(~9197u)), 0u ^ (countOneBits(select(20814u, 4294967295u, false)) ^ reverseBits(select(81662u, 54184u, true))));
    var_0 = var_1.x;
    var var_2 = ~select(reverseBits(select(vec2<i32>(-1i, u_input.a), vec2<i32>(41615i, u_input.a), vec2<bool>(false, false))) & vec2<i32>(-u_input.a, u_input.a), max(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -87439i), vec2<i32>(u_input.a, 1i) ^ vec2<i32>(-1i, u_input.a)), -abs(vec2<i32>(u_input.a, -37264i))), vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true));
    let var_3 = Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(-743f)), max(max(vec2<u32>(4294967295u, 1u), var_1), countOneBits(~vec2<u32>(var_1.x, 29980u))) << (~(~var_1) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1815f));
    return ~_wgslsmith_mult_i32(var_3.a, _wgslsmith_sub_i32(var_2.x, _wgslsmith_clamp_i32(var_2.x, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15972i, var_2.x), vec3<i32>(2147483647i, u_input.a, var_3.a)))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(func_3() << (0u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f * _wgslsmith_f_op_f32(-608f + -1237f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f - 582f)))), ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 15120u, 1u, 19285u), vec4<u32>(20788u, 78463u, 1u, 4294967295u)), _wgslsmith_clamp_u32(7496u, 46755u, 1u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(299f + _wgslsmith_f_op_f32(-740f + -536f)))));
    var var_1 = Struct_1(~u_input.a, _wgslsmith_f_op_f32(-var_0.d), ~vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(74654u, var_0.c.x)), var_0.c.x), _wgslsmith_f_op_f32(var_0.b * var_0.d));
    let var_2 = Struct_1(_wgslsmith_mult_i32(u_input.a, -(~u_input.a) & abs(_wgslsmith_add_i32(-6601i, u_input.a))), var_1.d, var_1.c, 1507f);
    var_1 = var_0;
    let var_3 = 4294967295u;
    return select(all(vec4<bool>(any(vec2<bool>(true, true)), ~4294967295u < _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, 4294967295u, 86229u, var_2.c.x), vec4<u32>(31579u, var_0.c.x, 1u, 0u)), false, all(vec4<bool>(false, false, false, true)) || all(vec3<bool>(false, true, true)))), any(select(vec3<bool>(52998u == var_0.c.x, false, true), vec3<bool>(all(vec3<bool>(false, false, false)), true, true), vec3<bool>(var_1.b < var_2.d, true, true))), true);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(step(267f, -319f))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-710f)), _wgslsmith_f_op_f32(f32(-1f) * -1150f)))));
    let var_1 = true & (false | func_2());
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 743f, 985f)))))));
    var var_3 = vec3<i32>(~(~u_input.a), u_input.a, _wgslsmith_mult_i32(countOneBits(0i), u_input.a));
    var var_4 = Struct_1(reverseBits(u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -174f), var_1 || var_1))) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.x)), var_2.x), 1000f)), firstLeadingBit(~(~(~vec2<u32>(22639u, 35064u)))), 1306f);
    return _wgslsmith_f_op_f32(399f - var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -825f)))) * -1644f), _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(abs(1u), 1u)), vec2<u32>(abs(~23564u), 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-135f))) * -398f) - _wgslsmith_f_op_f32(func_1())));
    let var_1 = var_0;
    let var_2 = select(vec3<bool>(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)))), ~var_1.a < _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, u_input.a), vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(0i, 18021i)), true), vec3<bool>(any(vec2<bool>(false, true)) | false, ~0i != var_0.a, _wgslsmith_clamp_i32(var_1.a, _wgslsmith_clamp_i32(var_1.a, 0i, 1i), firstLeadingBit(var_1.a)) > var_0.a), !vec3<bool>(true, all(vec3<bool>(true, true, true)), ~4294967295u >= ~var_0.c.x));
    var var_3 = var_0;
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(1074f * -1219f)), vec3<f32>(var_1.d, var_3.b, _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.b, var_1.d, var_1.b)))))), vec3<i32>(var_0.a >> (var_0.c.x % 32u), -2147483647i, 2147483647i));
}

