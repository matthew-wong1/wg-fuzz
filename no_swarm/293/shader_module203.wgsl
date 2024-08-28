struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = Struct_1(arg_1.a, vec3<i32>(min(~(-1i), ~(-1i & arg_1.b.x)), u_input.a.x, abs(u_input.a.x)), vec4<bool>(true, arg_0, false, true), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_1.c.x, any(arg_1.c)), !any(vec3<bool>(arg_1.d.x, false, true))));
    var var_1 = var_0;
    let var_2 = Struct_1(any(var_1.c), -(~(vec3<i32>(-24088i, -2372i, 2147483647i) & ~var_0.b)), select(select(vec4<bool>(all(arg_1.c.yx), 0i >= var_1.b.x, any(vec3<bool>(arg_0, false, arg_1.c.x)), true), !var_0.c, !vec4<bool>(false, var_1.c.x, arg_0, var_0.d.x)), !var_0.c, var_0.c), vec2<bool>(true, any(select(!var_1.c.xwy, vec3<bool>(arg_1.c.x, var_0.a, var_1.c.x), false))));
    let var_3 = vec2<i32>(0i, firstTrailingBit(_wgslsmith_div_i32(2147483647i, var_2.b.x)));
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1475f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_2)) * -1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(727f + arg_2), _wgslsmith_f_op_f32(round(789f)))))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(220f, -1446f, 708f, -1993f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, -269f, -245f, 2319f)), arg_0.c)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-635f, 1041f, -1336f, -756f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0.d.x, Struct_1(any(arg_0.c.zxx), arg_0.b, vec4<bool>(true, arg_0.a, arg_0.c.x, false), select(arg_0.d, vec2<bool>(true, arg_0.d.x), arg_0.c.x)), _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x), _wgslsmith_f_op_f32(func_3(-855f <= _wgslsmith_f_op_f32(-var_0.x), arg_0, 532f)), -628f));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1065f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1132f, 1021f, var_0.x, 246f) + vec4<f32>(794f, 1111f, 643f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-3074f, 835f, -542f, var_0.x), vec4<f32>(var_0.x, var_0.x, 719f, 1633f), arg_0.c)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -145f, -674f, -1372f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(1063f, var_0.x, var_0.x, 1407f)) - vec4<f32>(3121f, var_0.x, -739f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -100f, 1000f, var_0.x))))));
    let var_1 = Struct_1(arg_0.a, ~(~(~firstTrailingBit(vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))), !arg_0.c, vec2<bool>(false, !(true | !arg_0.d.x)));
    let var_2 = -132f;
    return abs(firstLeadingBit(max(_wgslsmith_clamp_u32(34369u, 46820u, 70394u) | ~1u, 12779u)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(false, vec3<i32>(-_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, arg_2.b.x), ~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_2.b.x, arg_2.b.x), arg_2.b)), max(16314i, ~(arg_1.x << (arg_0 % 32u))), arg_2.b.x), vec4<bool>(true, true, arg_2.a, !arg_2.d.x), !arg_2.c.yy);
    let var_1 = ~(~abs(reverseBits(vec2<u32>(arg_0, 4294967295u) << (vec2<u32>(1u, 34698u) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-967f + _wgslsmith_f_op_f32(f32(-1f) * -925f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -323f) + _wgslsmith_f_op_f32(-790f - 445f)), false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-474f, -1450f)))))));
    var_2 = -1080f;
    let var_3 = 25351i;
    return abs(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_2.b.x, _wgslsmith_mod_i32(-22285i, arg_1.x)), vec2<i32>(-2147483647i, 0i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = u_input.a;
    var_0 = func_4(18205u, vec4<i32>(var_0.x, -_wgslsmith_div_i32(-2147483647i, -15968i), var_0.x << (func_2(Struct_1(false, vec3<i32>(-2147483647i, var_0.x, 0i), vec4<bool>(arg_1.a, false, arg_1.c.x, true), arg_1.d)) % 32u), reverseBits(0i)), arg_1);
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(round(arg_0.x))), 477f))));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~34824u, 1u), abs(1u));
    return firstLeadingBit(firstTrailingBit(~_wgslsmith_add_u32(~10197u, firstLeadingBit(37139u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(4294967295u, 1u, abs(~0u), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(1u, 21681u, 0u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 73148u)), 56697u));
    var_0 = vec4<u32>(~(~(~func_1(vec2<f32>(-471f, -1626f), Struct_1(true, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, true, false, true), vec2<bool>(false, false))))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-614f, _wgslsmith_f_op_f32(1000f + -1593f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1894f), _wgslsmith_f_op_f32(abs(-1000f)))), Struct_1(true, ~(vec3<i32>(41539i, u_input.a.x, u_input.a.x) >> (var_0.xww % vec3<u32>(32u))), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec2<bool>(true, true))), var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_0.x), 4294967295u), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(7700u, 1u), var_0.zx)) >> (min(vec2<u32>(4294967295u, var_0.x) | vec2<u32>(17539u, var_0.x), vec2<u32>(1u, var_0.x)) % vec2<u32>(32u))));
    var var_1 = vec2<i32>(u_input.a.x, 17746i);
    var_1 = abs(~vec2<i32>(abs(var_1.x), var_1.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1819f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1218f)))))), !(~0i < -var_1.x))) * -1745f);
    var var_3 = Struct_1(false, reverseBits(vec3<i32>(firstLeadingBit(abs(24835i)), abs(-19728i), -1i)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(true, false, true)), true), any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), select(select(false, false, false), true, false))), vec2<bool>(true, true));
    var var_4 = var_3.c.ww;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(129f + -1000f)))) - _wgslsmith_f_op_f32(round(1f)));
    var var_6 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1045f);
}

