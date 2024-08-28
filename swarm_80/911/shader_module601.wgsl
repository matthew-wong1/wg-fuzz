struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, true)), select(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, any(vec2<bool>(true, false)), any(vec4<bool>(true, true, false, false)), true), true), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, false, false, false)))));
    let var_1 = firstTrailingBit(_wgslsmith_add_i32(0i, _wgslsmith_div_i32(0i, -3676i)));
    let var_2 = Struct_2(_wgslsmith_clamp_vec3_i32(-abs(-vec3<i32>(13903i, var_1, var_1)), vec3<i32>(-(~var_1), 4051i, -(~var_1)), vec3<i32>(~max(var_1, -57345i), var_1, ~var_1)), vec4<i32>(-14565i, -10791i, -19502i, _wgslsmith_add_i32(7499i, 3739i)));
    let var_3 = false;
    var_0 = var_3;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-613f, -1000f))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f))) + _wgslsmith_f_op_f32(583f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f))));
    let var_1 = any(vec2<bool>(true, true));
    let var_2 = -(~(-33634i));
    let var_3 = _wgslsmith_clamp_u32(1u, ~_wgslsmith_mod_u32(~u_input.a, 100200u), select(_wgslsmith_mult_u32(~u_input.a, 1u), u_input.a, !var_1));
    var var_4 = select(!vec4<bool>(!var_1, !(1u <= var_3), true, -var_2 != ~var_2), vec4<bool>(any(select(vec2<bool>(false, var_1), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), var_1, !(var_2 != 41715i), !select(true, any(vec4<bool>(var_1, false, var_1, false)), true)), !vec4<bool>(var_1, var_1, var_1, true));
    return 0u;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = -374f;
    var var_1 = arg_0.x;
    var var_2 = true;
    var_1 = _wgslsmith_add_u32(firstLeadingBit(max(1u, 127863u)), ~(_wgslsmith_add_u32(u_input.a, u_input.b.x) ^ (~1u << (func_2() % 32u))));
    let var_3 = vec2<i32>(70553i, _wgslsmith_div_i32(-37755i, 8637i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b.wx)) * _wgslsmith_f_op_f32(f32(-1f) * -246f)))), -975f));
    var var_1 = _wgslsmith_sub_i32(-32245i >> ((0u ^ u_input.b.x) % 32u), ~1i);
    var_1 = _wgslsmith_mod_i32(-_wgslsmith_div_i32(1i, 372i) >> (u_input.a % 32u), 1i);
    var var_2 = firstTrailingBit(select(19470i, min(-(2147483647i >> (u_input.a % 32u)), 1i), true && all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true))));
    var var_3 = Struct_3(-(~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-33623i, 46319i)), vec2<i32>(1i, 1i))));
    var_3 = Struct_3(-(~vec2<i32>(reverseBits(var_3.a.x), -var_3.a.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -493f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1059f + -500f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-403f, _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(func_3()))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1476f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), var_0), _wgslsmith_f_op_f32(func_3())))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-3055f, _wgslsmith_f_op_f32(round(-150f)), 2270f))), -68250i, ~u_input.b.zzy, _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(31830u, 1u << (u_input.b.x % 32u))) >> (~(u_input.a ^ ~u_input.a) % 32u), var_4.x);
}

