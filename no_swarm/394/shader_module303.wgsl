struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = firstLeadingBit(~_wgslsmith_mult_i32(u_input.a, 1i));
    var_0 = ~(_wgslsmith_add_i32(arg_3.x, 2147483647i) | -31075i);
    var_0 = arg_0;
    let var_1 = true;
    let var_2 = vec2<bool>(true, any(vec2<bool>(true, !any(vec4<bool>(false, true, false, false)))));
    return 280f;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f * -888f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))) - 2019f) >= _wgslsmith_div_f32(-1806f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(719f))))));
    var var_1 = !(!(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-587f - arg_0.x), all(vec2<bool>(true, false)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x)));
    var_1 = true;
    var var_2 = Struct_1(true, ~u_input.c.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1211f, _wgslsmith_f_op_f32(min(arg_0.x, -451f))))), ~(~(-1i)));
    var_1 = !all(vec3<bool>(min(u_input.c.x, 1u) != ~u_input.b, _wgslsmith_f_op_f32(ceil(var_2.c)) < _wgslsmith_div_f32(var_2.c, -840f), var_2.a));
    return ~0u;
}

fn func_2() -> f32 {
    let var_0 = vec4<u32>(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2044f, 1097f)))), _wgslsmith_mod_vec2_i32(vec2<i32>(max(u_input.a, 7236i), ~(-29352i)), vec2<i32>(u_input.a << (u_input.c.x % 32u), u_input.a))), countOneBits(~abs(0u)), _wgslsmith_add_u32(u_input.c.x, ~4294967295u), ~_wgslsmith_div_u32(_wgslsmith_div_u32(select(u_input.b, 4294967295u, false), ~479u), u_input.c.x));
    let var_1 = abs(u_input.a) ^ _wgslsmith_dot_vec3_i32(~select(firstTrailingBit(vec3<i32>(u_input.a, 58939i, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -812i, 26025i), vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), min(vec3<i32>(-24849i, 0i, 0i), vec3<i32>(u_input.a, u_input.a, u_input.a))), -reverseBits(vec3<i32>(u_input.a, u_input.a, -58386i)), countOneBits(vec3<i32>(-2147483647i, -1i, u_input.a)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c.x, var_0.x), vec3<u32>(57947u, 4294967295u, u_input.b)) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(-1647f * -426f))))));
    var var_3 = any(select(vec4<bool>(true, false, -580f != _wgslsmith_f_op_f32(324f + var_2.x), true), select(vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, true, false, true)), -1894f < var_2.x, true), vec4<bool>(true, true, true, true), true), !(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, -1i)) != firstLeadingBit(u_input.a))));
    let var_4 = Struct_1(all(!vec2<bool>(all(vec3<bool>(true, true, true)), true)), select(~u_input.c.yx, select(u_input.c.xz, vec2<u32>(36763u, ~u_input.c.x), false), true != (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1), vec2<i32>(0i, 30845i)) < firstLeadingBit(u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1117f - _wgslsmith_f_op_f32(-var_2.x)) + var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1119f, _wgslsmith_f_op_f32(trunc(1000f)))))), -(~(~var_1)));
    return 1051f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), !vec2<bool>(any(vec3<bool>(true, false, false)), 0i <= u_input.a), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !vec2<bool>(all(vec4<bool>(false, false, false, false)) | true, true), all(vec2<bool>(true | (u_input.c.x <= 4294967295u), all(vec3<bool>(true, true, true)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2038f + _wgslsmith_f_op_f32(f32(-1f) * -1776f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407f - -741f))) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-326f + 1602f))))), 1498f);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -662f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), var_1.x);
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, u_input.c.zzx, vec4<f32>(-1700f, -281f, 750f, var_1.x), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -947f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 141f)), true)) - vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x))))));
    let var_2 = Struct_1(var_0.x, _wgslsmith_clamp_vec2_u32(u_input.c.xx, vec2<u32>(4294967295u, abs(112u)) & firstLeadingBit(vec2<u32>(u_input.b, 1u)), vec2<u32>(47781u, u_input.b)), var_1.x, -7139i);
    var var_3 = _wgslsmith_add_i32(~12663i, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

