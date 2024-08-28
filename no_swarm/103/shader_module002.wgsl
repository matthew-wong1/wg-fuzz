struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_1(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 10521u, 6333u, arg_0.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, var_0.a, u_input.d, 2377u), vec4<u32>(arg_0.a, var_0.a, u_input.d, u_input.d))), countOneBits(~(~arg_0.a))));
    var var_2 = arg_0;
    var var_3 = 23504u;
    return all(vec2<bool>(true, true));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.c.x);
    let var_1 = 1f;
    let var_2 = vec4<bool>(true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)))), false, func_3(Struct_1(var_0.a)));
    let var_3 = abs(1i);
    var_0 = Struct_1(firstLeadingBit(abs(var_0.a)));
    return Struct_1(1777u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = 4294967295u;
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_2(), _wgslsmith_add_vec4_i32(countOneBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, -56209i, -1i), vec4<i32>(2147483647i, -20622i, 0i, 7900i))), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, -164f, 816f, -631f) - vec4<f32>(-191f, 747f, -1497f, -195f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(425f, 410f, 527f, 212f) - vec4<f32>(-899f, -556f, 209f, 1105f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-177f, 289f, 441f, -691f)))) - vec4<f32>(_wgslsmith_f_op_f32(min(-689f, 315f)), _wgslsmith_f_op_f32(-1018f + -916f), -1000f, 503f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1398f), _wgslsmith_f_op_f32(-1f), -394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(305f - -591f), 940f, false)))));
    var var_2 = arg_0.xx;
    var_2 = !(!select(select(vec2<bool>(var_2.x, true), arg_0.xz, !arg_0.wz), select(arg_0.zw, !arg_0.zx, select(vec2<bool>(true, arg_0.x), arg_0.zw, vec2<bool>(var_2.x, var_2.x))), arg_0.x));
    let var_3 = ~(-_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), -_wgslsmith_mult_vec4_i32(vec4<i32>(-4639i, 27121i, -24825i, 0i), vec4<i32>(-51753i, 5076i, 1i, 2147483647i))));
    return func_4(func_2(), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(-50842i), var_3.x, i32(-1i) * -1i, var_3.x), -vec4<i32>(-21466i, -2147483647i, var_3.x, var_3.x), var_3), var_3, arg_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_vec3_u32(~max(u_input.a, select(vec3<u32>(u_input.b, 4294967295u, u_input.c.x), firstTrailingBit(vec3<u32>(0u, arg_0.a, 1u)), false)), ~min(u_input.a, u_input.a));
    var var_2 = true;
    let var_3 = Struct_1((u_input.a.x >> (_wgslsmith_sub_u32(reverseBits(0u), _wgslsmith_div_u32(1819u, arg_0.a)) % 32u)) << (~3874u % 32u));
    var var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, firstLeadingBit(_wgslsmith_div_u32(arg_0.a, abs(u_input.d))), u_input.c.x, 3301u), reverseBits(vec4<u32>(~0u, arg_0.a, 56139u, 1u)));
    return -189f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>((_wgslsmith_add_i32(1i, abs(29578i)) >> (0u % 32u)) >> (u_input.a.x % 32u), abs(0i));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1059f, -1000f) * _wgslsmith_f_op_f32(925f + 607f)), 1f, -680f)), vec3<f32>(-765f, _wgslsmith_f_op_f32(func_5(func_1(vec4<bool>(true, true, true, true), Struct_1(1u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(622f, -520f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(729f, -519f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1090f, _wgslsmith_div_f32(-493f, 659f), all(vec4<bool>(false, false, false, true)))))))));
    let var_2 = func_1(select(vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), false, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(855f > var_1.x, false, func_3(Struct_1(12770u)), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true)), true & any(vec4<bool>(true, true, true, true))), func_1(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), any(vec3<bool>(false, false, false))), func_1(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), func_1(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), func_2()))));
    var var_3 = vec3<f32>(-203f, 918f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(74826i, _wgslsmith_sub_i32(~var_0.x, ~(-8673i)), (var_0.x ^ 2147483647i) << (~1u % 32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1904f, var_3.x)), _wgslsmith_f_op_f32(127f + var_3.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 275f)), _wgslsmith_f_op_vec2_f32(trunc(var_3.zx))))), var_0.x, 57546u, vec3<u32>(63017u, u_input.c.x, u_input.b & _wgslsmith_add_u32(~var_4.a, func_2().a)));
}

