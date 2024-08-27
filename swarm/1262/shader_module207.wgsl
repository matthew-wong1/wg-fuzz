struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_1(arg_1.x);
    let var_1 = ~_wgslsmith_mod_u32(4294967295u, 1040u);
    let var_2 = any(vec3<bool>((arg_1.x <= 297f) | true, true, true)) | select(select(_wgslsmith_sub_i32(u_input.b, u_input.b) >= u_input.b, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), false), true, u_input.b >= 2147483647i);
    let var_3 = var_1;
    let var_4 = select(!select(!vec3<bool>(var_2, false, true), select(!vec3<bool>(false, true, var_2), select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, var_2, var_2), true), select(vec3<bool>(var_2, var_2, false), vec3<bool>(false, var_2, false), var_2)), !vec3<bool>(false, false, var_2)), select(vec3<bool>(var_2, var_2, all(!vec2<bool>(false, var_2))), !vec3<bool>(var_2, var_0.a <= -1000f, var_2), ~4294967295u >= ~var_3), var_2);
    return arg_1.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = u_input.b;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1180f, arg_1.a, arg_1.a)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_1.a) + _wgslsmith_f_op_f32(var_1.a + var_1.a)))), _wgslsmith_f_op_f32(f32(-1f) * -433f), var_1.a, arg_1.a)));
    var var_3 = arg_0;
    var var_4 = reverseBits(countOneBits(~min(firstTrailingBit(vec2<u32>(1u, 4294967295u)), max(vec2<u32>(0u, 18486u), vec2<u32>(4294967295u, 28949u)))));
    return ~(~(~1u));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.x, 1u)), arg_0.zx);
    var var_1 = abs(vec4<u32>(arg_0.x, ~1u, ~(0u >> (1u % 32u)), var_0));
    var_1 = ~vec4<u32>(~3829u, ~var_1.x, arg_0.x, func_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), 1i), Struct_1(_wgslsmith_f_op_f32(step(-1000f, -1000f)))));
    var var_2 = var_1.x | 4294967295u;
    var_1 = arg_0;
    return any(vec2<bool>(any(!vec2<bool>(arg_2, arg_2)), arg_2)) == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(457f))) > 1853f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(select(vec3<bool>(true, func_1(vec4<u32>(25196u, 4294967295u, 29844u, 1u), Struct_1(-994f), false, Struct_1(208f)), any(vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true)), -1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1406f)) - _wgslsmith_f_op_f32(floor(-183f))));
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.a.zyy, abs(_wgslsmith_add_vec3_i32(-(vec3<i32>(-2147483647i, u_input.a.x, 15015i) >> (vec3<u32>(4294967295u, 46089u, 26273u) % vec3<u32>(32u))), u_input.a.ywy)));
    var_1 = ~_wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(1i, ~u_input.a.x, -u_input.b));
    var var_2 = select(select(vec3<bool>(!var_0.x, true, all(!vec4<bool>(var_0.x, true, false, var_0.x))), !vec3<bool>(true, var_0.x, true), var_0.x), !(!vec3<bool>(all(vec4<bool>(var_0.x, false, true, var_0.x)), var_0.x, var_0.x)), var_0.x);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1488f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1040f))))), -667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -707f))) - 170f));
    var var_4 = _wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, ~14336u), 0u));
    var var_5 = !select(!var_2.yz, !select(var_2.zx, vec2<bool>(false, true), any(var_0)), select(select(var_0, !var_2.zx, select(vec2<bool>(true, var_2.x), vec2<bool>(true, var_0.x), var_2.yx)), !select(vec2<bool>(false, true), vec2<bool>(true, var_2.x), var_0), true));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1906f, -673f)) - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-var_3.x), false || var_0.x))), 921f), var_3.x);
    let var_6 = select(vec4<bool>(!(!all(vec3<bool>(true, true, false))), false, var_2.x, true & all(!vec3<bool>(false, var_5.x, var_5.x))), vec4<bool>(var_3.x >= _wgslsmith_f_op_f32(abs(-143f)), all(select(select(vec4<bool>(var_5.x, var_0.x, var_0.x, false), vec4<bool>(false, true, var_2.x, false), true), vec4<bool>(var_0.x, var_5.x, true, var_2.x), any(vec3<bool>(var_5.x, false, false)))), !(!func_1(vec4<u32>(67127u, 0u, 0u, 42407u), Struct_1(var_3.x), var_0.x, Struct_1(var_3.x))), true), select(!(!vec4<bool>(var_5.x, false, false, var_2.x)), vec4<bool>(false, var_2.x, !any(vec2<bool>(var_2.x, var_5.x)), any(select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, false, true), var_2.x))), func_1(select(vec4<u32>(21752u, 46830u, 4294967295u, 1u), vec4<u32>(4294967295u, 77994u, 1u, 1u), u_input.a.x < u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-2021f - 789f)), any(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)), Struct_1(_wgslsmith_f_op_f32(abs(var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

