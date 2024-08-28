struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: i32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    var var_1 = max(~(~max(reverseBits(76694u), 1u)), 59317u);
    let var_2 = select(arg_0.yx, vec2<bool>((arg_2.a < _wgslsmith_mod_i32(arg_2.a, 8034i)) | !select(arg_0.x, arg_0.x, arg_0.x), false), vec2<bool>(all(!vec2<bool>(false, arg_0.x)), true));
    var_1 = firstTrailingBit(countOneBits(4294967295u));
    var var_3 = -1i;
    return -var_0.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(27228i, ~(-2147483647i))));
    var_0 = Struct_1(_wgslsmith_div_i32(func_3(vec4<bool>(true, true, false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, 415f, -309f, -1000f)), Struct_1(0i)), -3296i));
    var var_1 = select(select(!vec2<bool>(arg_0.x, arg_0.x), select(select(arg_0, vec2<bool>(true, true), var_0.a >= 23152i), select(vec2<bool>(true, true), vec2<bool>(arg_0.x, false), true), !vec2<bool>(arg_0.x, arg_0.x)), vec2<bool>(_wgslsmith_clamp_u32(0u, 0u, 1u) != ~20606u, false)), arg_0, !(!arg_0.x));
    var_0 = Struct_1(reverseBits(-40970i));
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1020f, -2052f), _wgslsmith_f_op_f32(f32(-1f) * -588f), true)))));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_div_f32(-338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2356f - _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), u_input.a.zy))), -1000f, any(vec2<bool>(true, true))))));
    let var_1 = vec4<bool>(true, true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(arg_0.a, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-39743i, u_input.a.x, arg_0.a)))), _wgslsmith_mod_i32(~arg_0.a, u_input.a.x)), u_input.a.x);
    var var_3 = arg_0;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1861f, -1000f) + -340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-735f + 238f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec2<bool>(any(var_1), false && var_1.x), -(u_input.a.yx & vec2<i32>(var_2.x, 65510i)))))), true));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-584f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(789f, 664f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1459f, -805f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1053f, 1000f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-953f, -1969f)), _wgslsmith_f_op_f32(1439f + 763f))), true));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(490f, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, -709f))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(u_input.a.x & 0i))), vec2<f32>(_wgslsmith_f_op_f32(round(-200f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 673f))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1133f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -436f)), -554f, -617f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1474f, var_0.x, var_0.x, var_0.x))) + vec4<f32>(var_0.x, var_0.x, 483f, var_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 883f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -558f, var_0.x) * vec4<f32>(var_0.x, -857f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -622f, var_0.x, var_0.x), vec4<f32>(-1608f, var_0.x, 209f, var_0.x)))))));
    let var_2 = vec3<u32>(countOneBits(select(reverseBits(49128u), max(~80803u, countOneBits(114930u)), true)), ~4259u, min(abs(0u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), ~max(vec4<u32>(0u, 35680u, 2124u, 50719u), vec4<u32>(1u, 1u, 0u, 12563u)))));
    var var_3 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(-2647f, -1135f)), var_0.x))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, _wgslsmith_f_op_f32(-var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(20092i, 2355i, u_input.a.x, 2147483647i) & _wgslsmith_sub_vec4_i32(select(countOneBits(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), ~vec4<i32>(-15298i, u_input.a.x, 2147483647i, u_input.a.x), true), vec4<i32>(u_input.a.x >> (1572u % 32u), ~(-1i), -1i, i32(-1i) * -2147483647i)), ~(-_wgslsmith_div_vec4_i32(abs(vec4<i32>(2147483647i, 1i, 0i, 1i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 65722i))), abs(i32(-1i) * -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), -446f, 52081i);
}

