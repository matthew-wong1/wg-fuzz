struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = true;
    let var_1 = ~reverseBits(~(~(-u_input.c)));
    let var_2 = firstLeadingBit(vec2<i32>(abs(var_1), -abs(var_1 & 1i)));
    let var_3 = vec3<f32>(-682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -521f)))))), -1265f);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_3.yx))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(959f, 453f)))))));
    return !all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), false))) && select(-991f != _wgslsmith_f_op_f32(floor(298f)), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec2<bool>(true, true)) || ((u_input.a.x ^ 24164u) != u_input.a.x));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(vec3<i32>(abs(-17740i), _wgslsmith_add_i32(firstTrailingBit(u_input.c), 7362i), u_input.c) ^ (vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(-51734i, -2147483647i, u_input.c))));
    var var_1 = Struct_1(_wgslsmith_mod_u32(u_input.b.x, 38523u));
    var_1 = Struct_1(~(~0u));
    let var_2 = vec3<bool>(all(vec3<bool>(true, true, true)), false, !select(any(vec2<bool>(true, false)), true & func_3(), any(vec3<bool>(false, true, true))));
    let var_3 = vec4<bool>(!var_2.x, true, var_2.x, all(var_2.xy));
    return Struct_1(firstTrailingBit(90694u));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(reverseBits(~u_input.d), ~15718u));
    let var_1 = func_2();
    return vec4<u32>(_wgslsmith_mod_u32(arg_1.a, var_1.a), 1u, ~_wgslsmith_mod_u32(30613u, ~_wgslsmith_mod_u32(4294967295u, 9181u)), 90297u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(8964u);
    let var_2 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(-2283i, u_input.c, u_input.c), vec3<i32>(41783i, u_input.c, 15070i), vec3<bool>(false, true, true)), ~(-vec3<i32>(40144i, u_input.c, -1i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 63162i, -28716i), vec3<i32>(57898i, u_input.c, u_input.c) & vec3<i32>(u_input.c, u_input.c, u_input.c)), ~5250i)), _wgslsmith_mod_i32(u_input.c, (i32(-1i) * -2147483647i) >> (_wgslsmith_clamp_u32(0u, abs(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(39912u, var_1.a))) % 32u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(abs(~34452i), u_input.c), ~_wgslsmith_clamp_i32(21123i >> (u_input.e % 32u), u_input.c, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-(~3016i), countOneBits(u_input.c), -14769i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(4393i, u_input.c, u_input.c), vec3<i32>(u_input.c, 1i, 1i), vec3<i32>(-1i, u_input.c, u_input.c)), vec3<i32>(2147483647i, -11173i, 38410i) >> (u_input.a.wzz % vec3<u32>(32u)))), vec4<i32>(-1i) * -(vec4<i32>(0i, 9439i, 1i, 0i) & vec4<i32>(0i, -6176i, u_input.c, u_input.c))));
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(var_1.a, _wgslsmith_clamp_u32(var_1.a, var_0 | u_input.e, 8415u & u_input.d) & _wgslsmith_dot_vec3_u32(u_input.a.yxy << (u_input.b.yzx % vec3<u32>(32u)), u_input.a.wyz)), max(177u, u_input.a.x), 1u, min(~_wgslsmith_dot_vec4_u32(u_input.b, func_1(true, var_1, var_2.yww)), _wgslsmith_dot_vec4_u32((u_input.b >> (vec4<u32>(11816u, 77379u, 4294967295u, 1u) % vec4<u32>(32u))) & u_input.a, u_input.b)));
    var var_4 = _wgslsmith_f_op_f32(step(165f, 1520f));
    let var_5 = var_1;
    let var_6 = Struct_1(~4294967295u);
    var var_7 = vec4<bool>(!all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))), select(false, !all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), any(vec3<bool>(true, all(vec3<bool>(false, true, true)), true)) && any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true)), select(true, ((var_3.x | 9212u) ^ var_5.a) > 1u, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    let var_8 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-153f, -1138f) - -903f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) * -173f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-502f))))), var_3.zwz & var_3.yyx);
}

