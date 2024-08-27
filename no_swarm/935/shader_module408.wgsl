struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(firstTrailingBit(arg_2), reverseBits(~arg_2)) ^ arg_2;
    var_0 = vec4<u32>(4294967295u, var_0.x, 1985u, 4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1879f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_0 * arg_1))), arg_0), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1396f, arg_0, arg_0))))))));
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~(_wgslsmith_sub_i32(arg_3, 0i) & arg_3), select(~arg_3, max(2147483647i, -arg_3), true), arg_3), _wgslsmith_sub_vec3_i32(-select(vec3<i32>(arg_3, arg_3, -2147483647i), vec3<i32>(arg_3, arg_3, 76801i), vec3<bool>(false, false, false)) ^ -vec3<i32>(1852i, arg_3, 8275i), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(arg_3, arg_3, -45613i) ^ vec3<i32>(arg_3, arg_3, arg_3)), select(vec3<i32>(18854i, arg_3, 2147483647i) ^ vec3<i32>(arg_3, arg_3, 2429i), vec3<i32>(arg_3, arg_3, -8054i) | vec3<i32>(88486i, arg_3, 33724i), vec3<bool>(false, false, false)))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(1i, 2147483647i)), (0i | arg_3) << (select(1u, 28321u, true) % 32u), arg_3), vec3<i32>(-1i) * -select(vec3<i32>(arg_3, -1i, arg_3), vec3<i32>(arg_3, 2147483647i, arg_3), vec3<bool>(false, true, true))));
    var_0 = arg_2;
    return -644f;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1763f + 596f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-565f))) * -480f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1416f * _wgslsmith_f_op_f32(f32(-1f) * -772f)) + 794f), 1047f, vec4<u32>(~(~u_input.a.x), u_input.a.x, 2828u, ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), select(2147483647i, ~countOneBits(-23883i), false))));
    let var_1 = var_0.x;
    let var_2 = !(!vec2<bool>(any(vec3<bool>(false, false, false)), !any(vec3<bool>(true, false, true))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -746f)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = var_0.x;
    return Struct_1((i32(-1i) * -33982i) & countOneBits((-1i >> (u_input.a.x % 32u)) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 10144i), vec3<i32>(-25265i, -1i, 1i))), vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(0u, u_input.a.x), ~u_input.a.x), 10639u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -600f))), _wgslsmith_f_op_f32(floor(1410f)));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.a, var_0.a), vec2<i32>(1i, arg_0.x)) & var_0.a, countOneBits(vec2<u32>(u_input.a.x << (var_0.b.x % 32u), ~86808u) >> ((~vec2<u32>(var_0.b.x, 4294967295u) | vec2<u32>(23627u, 44175u)) % vec2<u32>(32u))));
    let var_3 = vec4<u32>(~(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(0u, u_input.a.x)), _wgslsmith_div_vec2_u32(var_2.b, vec2<u32>(var_0.b.x, 65814u))) & ~(~var_0.b.x)), ~(~(~50107u)), ~var_0.b.x, 42721u);
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(func_3(var_4.x, _wgslsmith_f_op_f32(sign(var_1)), var_3, _wgslsmith_div_i32(-25656i, arg_0.x)));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(firstTrailingBit(i32(-1i) * -2147483647i), ~(~1693i)), countOneBits(1i)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(86857u, 4294967295u, u_input.a.x), vec3<u32>(86506u, u_input.a.x, u_input.a.x), u_input.a))), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-321f, 295f))) - _wgslsmith_f_op_f32(step(1571f, _wgslsmith_f_op_f32(-220f - arg_1)))), arg_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(655f - _wgslsmith_div_f32(485f, 345f)), true)) + arg_1));
    var var_2 = all(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), ~4294967295u <= ~u_input.a.x), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(!any(vec2<bool>(false, true)), !all(vec3<bool>(false, true, true)), true)));
    let var_3 = ~var_0.a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1082f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(2147483647i, -2147483647i), vec2<f32>(-848f, 837f))) * _wgslsmith_f_op_f32(-763f - 679f))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1266f * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(911f, 2008f))))));
    var var_1 = firstTrailingBit(~u_input.a.x) == ~countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 12748u), u_input.a.zx), 1u));
    var_1 = any(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)));
    let var_2 = Struct_1(-(-59551i | var_0.a), max(reverseBits(~var_0.b) << (firstTrailingBit(u_input.a.xy) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(634u, u_input.a.x, var_0.b.x)), countOneBits(_wgslsmith_mod_u32(18671u, 1u)))));
    var var_3 = any(vec4<bool>(var_0.a <= 6722i, !(any(vec2<bool>(false, true)) & all(vec2<bool>(true, false))), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1593f), -2147483647i, var_0.b.x, vec3<f32>(-671f, 1322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f))));
}

