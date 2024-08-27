struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_2(vec2<u32>(u_input.b.x >> (~(~arg_0) % 32u), 1u), vec3<bool>(any(vec3<bool>(true, true, true)) | select(true, all(vec2<bool>(false, false)), false), true, true));
    var_0 = Struct_2(var_0.a, select(select(!var_0.b, vec3<bool>(true, u_input.a.x <= 39926i, var_0.b.x | false), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b, vec3<bool>(!var_0.b.x, !select(false, true, var_0.b.x), true)));
    var_0 = Struct_2(u_input.b, var_0.b);
    var var_1 = Struct_1(1f, _wgslsmith_clamp_i32(max(1i, _wgslsmith_mod_i32(u_input.a.x, -10385i)) | abs(~(-2147483647i)), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), vec3<bool>(var_0.b.x || !var_0.b.x, var_0.b.x, all(select(select(vec4<bool>(true, var_0.b.x, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, false, false), var_0.b.x), select(vec4<bool>(false, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), var_0.b.x), any(var_0.b.yz)))), var_0.b.x, vec2<u32>(abs(arg_0 >> (49124u % 32u)) ^ var_0.a.x, 9228u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-158f, var_1.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, 2612f))))))))), true, u_input.a.x, _wgslsmith_mod_i32(-(~(-var_1.b)), countOneBits(1i)), var_1.b >= ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1037f, 1000f)) - 412f))));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(u_input.b.x));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -335f), vec2<f32>(-607f, 1352f)))), all(!(!vec4<bool>(true, arg_0, arg_0, arg_0))), -2147483647i, u_input.a.x ^ u_input.a.x, false));
    let var_2 = Struct_1(687f, _wgslsmith_clamp_i32(-17060i, ~(-var_1.a.c >> ((u_input.b.x << (arg_3.x % 32u)) % 32u)), 1i), !select(!select(vec3<bool>(true, arg_0, var_1.a.b), vec3<bool>(var_1.a.b, arg_0, true), true), vec3<bool>(!arg_0, true, arg_0), true), arg_0, ~u_input.b);
    let var_3 = _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_add_u32(arg_1.x, u_input.b.x)), ~arg_1.x);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(f32(-1f) * -606f));
    return ~min(min(76452u, ~countOneBits(17403u)), 93791u & max(abs(12396u), arg_1.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1097f, 118f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1243f, 1210f), vec2<f32>(-1600f, 1564f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)) != _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(357f)), 978f))), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(-u_input.a.x, abs(-1i))) << (abs(arg_0.x) % 32u), ~2527i, !all(!select(vec2<bool>(arg_1.x, true), arg_3, vec2<bool>(arg_1.x, false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2282f, _wgslsmith_f_op_f32(var_0.a.x * -1000f), _wgslsmith_f_op_f32(func_3(~1u)), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-224f - 1000f)))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(546f * _wgslsmith_div_f32(1547f, var_1.x))));
    var var_3 = !vec4<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.x, false, false, arg_3.x), arg_3.x)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(var_0.e, var_0.e, arg_3.x, false), var_0.b), any(arg_1))), true, false);
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz + var_1.xz)), vec2<f32>(-1489f, 650f)))), !(arg_3.x == var_3.x), u_input.a.x, u_input.a.x, arg_1.x);
    return Struct_3(var_1.yy, arg_3.x, u_input.a.x, ~var_0.d | 1i, select(true, var_3.x, !(all(vec3<bool>(var_0.b, true, var_3.x)) | true)));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-1848f, -1201f)))));
    let var_1 = true;
    let var_2 = Struct_2(reverseBits(~vec2<u32>(~u_input.b.x, _wgslsmith_mod_u32(46916u, 1u))), vec3<bool>(false | var_1, all(!select(vec3<bool>(true, arg_0, true), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, true))), any(select(!vec3<bool>(true, var_1, false), !vec3<bool>(arg_0, true, false), var_1))));
    let var_3 = Struct_4(func_4(vec3<u32>(u_input.b.x, u_input.b.x, func_2(!var_2.b.x, vec3<u32>(104298u, 4294967295u, u_input.b.x) & vec3<u32>(u_input.b.x, var_2.a.x, 1u), u_input.a.x, _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, var_2.a.x, 4294967295u, var_2.a.x), vec4<u32>(var_2.a.x, u_input.b.x, 94741u, 1u)))), !select(var_2.b, var_2.b, arg_0 && var_2.b.x), select(select(~vec2<u32>(4294967295u, u_input.b.x), ~vec2<u32>(24803u, var_2.a.x), var_2.b.xz), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(6496u, var_2.a.x)), _wgslsmith_sub_vec2_u32(var_2.a, u_input.b)), all(vec2<bool>(false, true))), select(var_2.b.yx, vec2<bool>(var_2.b.x, false), !(!var_1))));
    let var_4 = var_3.a;
    return _wgslsmith_f_op_f32(step(var_0, -746f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f) - -1553f) * _wgslsmith_f_op_f32(-531f + -853f))), _wgslsmith_f_op_f32(-938f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1219f + 1156f) * _wgslsmith_f_op_f32(f32(-1f) * -512f)))), 485f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true))) + var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(func_3(u_input.b.x))))));
    let var_2 = Struct_4(func_4(vec3<u32>(~1u & (u_input.b.x ^ 22094u), ~(u_input.b.x | u_input.b.x), ~(~u_input.b.x)), vec3<bool>(true, !func_4(vec3<u32>(u_input.b.x, 23044u, u_input.b.x), vec3<bool>(true, true, true), u_input.b, vec2<bool>(true, true)).b, true), u_input.b, vec2<bool>(any(vec4<bool>(true, true, true, true)), true | any(vec4<bool>(false, true, true, true)))));
    let var_3 = vec4<u32>(u_input.b.x, 0u, abs(abs(u_input.b.x)), u_input.b.x << (0u % 32u));
    var var_4 = ~u_input.b.x;
    let var_5 = Struct_2(~(~u_input.b), select(select(!vec3<bool>(var_2.a.b, var_2.a.e, false), select(select(vec3<bool>(var_2.a.e, var_2.a.b, false), vec3<bool>(var_2.a.e, var_2.a.b, false), true), !vec3<bool>(var_2.a.e, false, var_2.a.e), true), vec3<bool>(false, var_2.a.b, all(vec2<bool>(false, var_2.a.b)))), vec3<bool>(func_4(vec3<u32>(15847u, 1u, 67602u), !vec3<bool>(false, var_2.a.b, false), ~vec2<u32>(u_input.b.x, 87550u), vec2<bool>(false, var_2.a.b)).e, true, true), !var_2.a.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(max(-_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(2147483647i, var_2.a.d)), reverseBits(abs(vec2<i32>(u_input.a.x, u_input.a.x)))), u_input.a), vec2<u32>(33259u & firstLeadingBit(_wgslsmith_mult_u32(var_5.a.x, 64640u)), ~(~_wgslsmith_add_u32(16867u, u_input.b.x))));
}

