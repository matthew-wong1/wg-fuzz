struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = Struct_1(arg_1.a);
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_2, -24882i, 1i)), vec3<i32>(1i, -2147483647i, arg_2))), -arg_2, (i32(-1i) * -2147483647i) ^ arg_2), select(2147483647i >> (select(min(u_input.a, 4294967295u), min(u_input.a, u_input.b), var_0.a.x) % 32u), i32(-1i) * -(arg_2 >> (0u % 32u)), false));
    return ~(~var_1.x);
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-811f, 1503f, any(vec4<bool>(false, false, false, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(362f - 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(f32(-1f) * -302f), true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(112f, -2384f)) * _wgslsmith_f_op_f32(floor(-1548f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(522f, -1356f, 1330f), vec3<f32>(219f, 1000f, 1498f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, 1249f, -2163f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-329f, 726f, -259f), vec3<f32>(1184f, 801f, 195f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1225f, 417f, 126f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-856f, -197f, var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-694f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + var_0.x))), var_0.x)));
    var var_1 = vec2<i32>(-2147483647i, ~_wgslsmith_mod_i32(0i, -countOneBits(-2147483647i)));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1632f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-670f - var_0.x) + _wgslsmith_f_op_f32(1485f - var_0.x)) + _wgslsmith_f_op_f32(trunc(-503f))))));
    let var_2 = Struct_1(select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    return select(vec4<bool>(_wgslsmith_sub_i32(abs(-5090i), ~var_1.x) >= var_1.x, all(select(select(vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, false, false)), select(vec4<bool>(var_2.a.x, false, var_2.a.x, false), vec4<bool>(true, true, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, false, false)), all(vec3<bool>(false, false, false)))), all(var_2.a), select(!(!var_2.a.x), true, var_2.a.x | all(vec3<bool>(var_2.a.x, var_2.a.x, true)))), !vec4<bool>(true | (4294967295u < u_input.b), !(!var_2.a.x), var_1.x >= abs(var_1.x), true), var_2.a.x);
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = -1i << (u_input.b % 32u);
    let var_1 = select(select(vec4<bool>(true, var_0 != -var_0, any(vec4<bool>(true, true, false, true)), func_2(false, Struct_1(vec3<bool>(false, false, true)), var_0) == var_0), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), false), true), select(!func_3(vec4<u32>(0u, 1u, u_input.a, 71573u)), vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), all(vec2<bool>(true, true)), !any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_f32(abs(arg_0.x)) <= _wgslsmith_f_op_f32(1273f * 2040f)), vec4<bool>(any(vec4<bool>(true, true, true, false)) || false, !any(vec3<bool>(true, false, true)), true, true)), select(func_3(~(~vec4<u32>(u_input.a, u_input.b, 0u, 0u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, false)), false));
    let var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(0u, 15189u)), ~0u), u_input.b, u_input.a, 0u));
    let var_3 = vec2<u32>(var_2.x, 49488u);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)))), -1371f) - 833f);
    return select(all(vec2<bool>(true, select(false, var_1.x, var_1.x))) | !(true || !var_1.x), ~u_input.b <= _wgslsmith_div_u32(var_2.x, u_input.b), select(!var_1.x, all(vec2<bool>(true, true)), true) | false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(vec2<f32>(_wgslsmith_f_op_f32(600f * -1199f), _wgslsmith_f_op_f32(f32(-1f) * -2193f)))));
    var var_1 = func_3(~countOneBits(~min(vec4<u32>(u_input.a, u_input.b, 15979u, 0u), vec4<u32>(u_input.a, u_input.b, u_input.b, 76924u)))).x;
    var_1 = var_0.a.x;
    let var_2 = var_0;
    var_1 = var_0.a.x;
    var var_3 = -194f;
    var var_4 = var_2;
    let var_5 = Struct_1(select(!func_3(reverseBits(vec4<u32>(u_input.b, 4294967295u, 86240u, u_input.a))).yxz, select(select(select(var_0.a, var_0.a, false), !var_2.a, var_2.a), vec3<bool>(any(var_4.a.yy), true, true), var_2.a.x), !((u_input.a == u_input.b) != true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_i32(12979i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -30093i), -vec3<i32>(2147483647i, -2042i, 7436i))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, -10391i), i32(-1i) * -31565i), false), vec2<f32>(716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1426f)) - 1160f)), 1i, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(820f - 736f), _wgslsmith_f_op_f32(sign(293f)), true)))), _wgslsmith_f_op_f32(ceil(-387f))));
}

