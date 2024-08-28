struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = Struct_1(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), arg_3);
    let var_1 = Struct_1(select(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x | u_input.a.x, u_input.d), countOneBits(var_0.a.x & 0i), reverseBits(~13186i)), ~vec3<i32>(23415i, u_input.b.x, -47875i), false), 1000f);
    let var_2 = var_1;
    var var_3 = -957f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3)) + _wgslsmith_div_f32(-108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * var_1.b) + _wgslsmith_f_op_f32(min(arg_2.a.x, 839f))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -1483f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1646f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1044f - var_0.b) * _wgslsmith_div_f32(927f, 1431f)))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(countOneBits(u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1309f, 936f)) * arg_2.b));
    var var_1 = 1988f;
    let var_2 = ~u_input.c << (1u % 32u);
    let var_3 = -vec4<i32>(var_0.a.x ^ ~_wgslsmith_dot_vec3_i32(var_0.a, var_0.a), -17470i, 1i, -reverseBits(~(-2147483647i)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1092f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_1(vec3<i32>(firstTrailingBit(u_input.b.x), u_input.a.x, u_input.d), -652f);
    var var_1 = Struct_2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_4(~var_0.a.x, _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), Struct_2(vec2<f32>(var_0.b, var_0.b)), 669f)))), Struct_1(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(-48369i, 36040i, 939i)), _wgslsmith_f_op_f32(312f - arg_0))))));
    var var_2 = var_0.a.x;
    var var_3 = Struct_1(abs(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, var_0.a.x) << (vec3<u32>(53830u, u_input.c, 66132u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.d, var_0.a.x), vec3<i32>(u_input.a.x, u_input.d, var_0.a.x)), vec3<bool>(true, true, true)), vec3<i32>(u_input.d, abs(-32700i), 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))))));
    let var_4 = _wgslsmith_sub_u32(u_input.c, 22127u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), 944f);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = !vec4<bool>(any(vec3<bool>(false, true, false)) && all(vec2<bool>(true, true)), true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), false);
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(105f, _wgslsmith_f_op_f32(arg_1.a.x * arg_0.x))) * arg_0.x), 380f));
    var var_2 = vec2<bool>(!all(var_0), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-371f + 1000f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1131f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(784f)), _wgslsmith_f_op_f32(exp2(arg_1.a.x))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1787f), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.x, var_1.a.x, true)))))) + -688f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -352f))) - _wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))))));
    return -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(624i, 1i, -2147483647i), firstLeadingBit(vec3<i32>(18166i, u_input.d, 2147483647i))), 14213i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~(~(~(u_input.c << (31522u % 32u)))), u_input.c | ~1u, 0u, ~_wgslsmith_mult_u32(reverseBits(u_input.c), countOneBits(4294967295u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-268f, -327f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-642f, 201f), vec2<f32>(-1376f, -1674f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2352f, -1396f)), 91054u >= u_input.c))))));
    let var_2 = abs(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, _wgslsmith_div_f32(2705f, var_1.a.x), 631f) + vec3<f32>(1000f, _wgslsmith_f_op_f32(-180f * var_1.a.x), _wgslsmith_f_op_f32(2224f - -525f))), var_1));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), -1038f) + var_1.a) - vec2<f32>(var_1.a.x, var_1.a.x)));
    var_0 = ~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.c, var_0.x, 4294967295u, var_0.x) & vec4<u32>(u_input.c, u_input.c, 13428u, 1u)), (~vec4<u32>(var_0.x, 37040u, u_input.c, 4294967295u) & select(vec4<u32>(var_0.x, 13600u, 72760u, u_input.c), vec4<u32>(var_0.x, 4294967295u, 1u, u_input.c), vec4<bool>(false, true, true, false))) | ~abs(vec4<u32>(42090u, 107555u, var_0.x, var_0.x)), select(~(vec4<u32>(4294967295u, u_input.c, 20250u, var_0.x) >> (vec4<u32>(1u, 0u, 4294967295u, var_0.x) % vec4<u32>(32u))), vec4<u32>(69281u, 13124u, 31026u, var_0.x) >> (vec4<u32>(4294967295u, 4294967295u, 1u, 52676u) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))));
    var var_4 = var_2;
    var var_5 = _wgslsmith_f_op_f32(447f * var_1.a.x);
    let var_6 = select(vec3<bool>(select(false, true, true) & false, !all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), vec3<bool>(var_3.a.x >= _wgslsmith_f_op_f32(var_1.a.x * var_3.a.x), any(vec2<bool>(true, true)), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(true, false))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_i32(0i, max(u_input.d, u_input.a.x))), vec3<i32>(2147483647i, i32(-1i) * -select(u_input.d, 1i, var_6.x), -var_2), abs(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(23302i, 1i))));
}

