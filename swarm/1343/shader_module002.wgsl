struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    let var_0 = false;
    var var_1 = 1u;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(-2611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1781f * -958f) + _wgslsmith_f_op_f32(floor(911f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-344f, -361f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(846f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(233f * _wgslsmith_f_op_f32(select(var_2.x, -1000f, !var_0))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-236f, 1040f), vec2<f32>(-1956f, -2476f)))))));
    var var_4 = _wgslsmith_mult_vec3_u32(~(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(0u, select(1u, 1u, false), ~21059u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(1u, select(58511u, 60232u, true), _wgslsmith_clamp_u32(0u, 33272u, 3764u))), vec3<u32>(~24333u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(89746u, 0u, 30566u)), vec3<u32>(6758u, 28224u, 1u)), ~1u)));
    return ~_wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(0u), ~var_4.x), ~7607u << (countOneBits(var_4.x) % 32u)) | 1u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = -544f;
    let var_1 = 4294967295u;
    let var_2 = Struct_1(4294967295u);
    var var_3 = var_2;
    var_3 = Struct_1(arg_2.a);
    return countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, select(arg_2.a, var_3.a, arg_0.x)), (vec2<u32>(arg_2.a, var_3.a) << (vec2<u32>(233u, var_3.a) % vec2<u32>(32u))) >> (vec2<u32>(var_2.a, arg_2.a) % vec2<u32>(32u))) | firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 18107u), vec2<u32>(26377u, 4294967295u)), 23434u)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: bool, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, arg_0) ^ _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(14263u, arg_0))) & ~(vec2<u32>(arg_0, arg_0) | func_3(vec3<bool>(false, true, arg_2), vec4<f32>(arg_1.x, -1046f, arg_1.x, -362f), Struct_1(0u))), _wgslsmith_mult_vec2_u32(firstTrailingBit(~vec2<u32>(42845u, arg_0)), func_3(!(!vec3<bool>(false, arg_3, false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, -947f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), Struct_1(arg_0))), ~vec2<u32>(arg_0, 57600u));
    var_0 = _wgslsmith_mult_vec2_u32(countOneBits(~(~vec2<u32>(var_0.x, var_0.x))) | _wgslsmith_mod_vec2_u32(~(vec2<u32>(52241u, 71386u) & vec2<u32>(arg_0, 43487u)), max(~vec2<u32>(arg_0, 4294967295u), vec2<u32>(var_0.x, var_0.x))), ~(vec2<u32>(~var_0.x, var_0.x | 64152u) & reverseBits(vec2<u32>(4294967295u, arg_0))));
    var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 1u), reverseBits(vec2<u32>(33635u, var_0.x))), max(vec2<u32>(arg_0, arg_0) & vec2<u32>(4294967295u, 42919u), max(vec2<u32>(arg_0, 0u), ~vec2<u32>(1u, 80613u)))));
    var_0 = select(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, 4294967295u), vec2<u32>(0u, 4294967295u) | vec2<u32>(95595u, arg_0), vec2<u32>(arg_0, arg_0)) >> (~(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0, 1047u)) & vec2<u32>(var_0.x, arg_0)) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_mod_u32(5009u, var_0.x), arg_0), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(any(vec3<bool>(true, arg_3, arg_2)), any(vec3<bool>(true, false, true))), !vec2<bool>(arg_3, false), !arg_3)));
    var_0 = ~vec2<u32>(abs(~var_0.x), func_1());
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1());
    let var_1 = Struct_1(~(~firstLeadingBit(var_0.a)));
    var var_2 = min(firstLeadingBit(9213i), 0i) <= -(u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -2147483647i, 1i) | vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(2147483647i, 42038i, 0i, u_input.a)));
    var_2 = any(vec3<bool>(func_2(var_1.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-310f, -1329f, -501f))))), true, !(var_0.a == var_1.a)), false, all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec2<bool>(true, false))))));
    var var_3 = max(abs(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, var_0.a, 86718u), vec3<u32>(var_1.a, 7109u, 4294967295u)))), vec3<u32>(~firstLeadingBit(4294967295u), ~4294967295u, var_0.a));
    var_0 = Struct_1(var_1.a);
    var var_4 = Struct_1(_wgslsmith_sub_u32(~(~var_1.a), ~_wgslsmith_mult_u32(40318u, var_0.a)) ^ var_1.a);
    var_2 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~(~var_3.x)), 4294967295u), _wgslsmith_f_op_f32(1059f + _wgslsmith_f_op_f32(-1051f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(155f)), _wgslsmith_f_op_f32(580f + -2235f))))), vec4<i32>(-(~u_input.a), max(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 28222i), vec3<i32>(18654i, 0i, u_input.a)), u_input.a), 19486i), ~u_input.a, u_input.a));
}

