struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = abs(1u);
    let var_1 = select(!arg_0, true, false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1047f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * 1050f) * _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))))), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(firstLeadingBit(var_0), u_input.a.x), 1u & u_input.a.x)));
    var var_3 = var_2.b;
    var_3 = abs(max(_wgslsmith_div_u32(~_wgslsmith_div_u32(var_0, 4294967295u), u_input.a.x), 20257u));
    return ~(~(~(~var_0) >> (0u % 32u)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, 1209f)) * _wgslsmith_div_f32(-503f, -2124f)), 354f)), ~min(_wgslsmith_clamp_u32(arg_1.x, 4294967295u, func_3(true, Struct_1(vec3<f32>(-1000f, 550f, arg_0), u_input.a.x))), 47604u));
    let var_2 = u_input.b.x;
    var_0 = !any(select(vec2<bool>(true, select(false, false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), var_2 >= u_input.b.x)));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, 1015f) + -175f)), _wgslsmith_f_op_f32(-arg_0), -1478f), 1u);
    return Struct_1(var_1.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.a.yxy, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1.b, var_1.b), u_input.a.zyy)) ^ ~1u, ~(_wgslsmith_dot_vec3_u32(u_input.a.xxz, u_input.a.xwz) >> (var_1.b % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.a);
    let var_1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), arg_0.a.x))), ~(~(~u_input.a.yw)) & ~vec2<u32>(~arg_0.b, u_input.a.x));
    let var_2 = 0u;
    var var_3 = func_2(_wgslsmith_f_op_f32(-var_0.x), vec2<u32>(~var_2, ~44505u) >> (~reverseBits(vec2<u32>(arg_0.b, 44269u)) % vec2<u32>(32u)));
    let var_4 = _wgslsmith_add_i32(u_input.b.x, -1i);
    return func_2(var_1.a.x, vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(1u, var_2) | var_3.b), 17953u));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = vec2<u32>(max(~countOneBits(u_input.a.x ^ 1u), arg_2.b), ~_wgslsmith_mult_u32(firstLeadingBit(37416u), countOneBits(~u_input.a.x)));
    let var_1 = 0u;
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-12874i, firstTrailingBit(firstLeadingBit(~u_input.b.x)), ~46309i, _wgslsmith_mult_i32(select(u_input.b.x, -1i, arg_1.x), ~0i) >> (~1u % 32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-8955i, 46220i, u_input.b.x, u_input.b.x)), vec4<i32>(3326i, u_input.b.x, u_input.b.x, u_input.b.x)), abs(vec4<i32>(u_input.b.x, -1i, 2147483647i, u_input.b.x))), -8223i, _wgslsmith_add_i32(reverseBits(61881i), 29013i) << ((arg_2.b | ~var_1) % 32u), 26579i));
    var_2 = u_input.b.x;
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(94663u, ~var_0.x), vec2<u32>(4294967295u, firstLeadingBit(1u)));
    return 913f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-598f, select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), func_1(Struct_1(vec3<f32>(-1282f, -1133f, -551f), u_input.a.x), u_input.a.x != 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-906f, 1017f) * vec2<f32>(-645f, -1000f))))) + _wgslsmith_f_op_f32(-630f * _wgslsmith_f_op_f32(-func_1(Struct_1(vec3<f32>(-892f, -898f, 1000f), 1u), false).a.x))));
    let var_1 = u_input.a.zz;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0 - var_0), func_2(var_0, var_1).a.x, -1000f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(988f * var_0), _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(floor(var_0))))), var_0 != var_0)), ~(~firstLeadingBit(_wgslsmith_sub_u32(1u, u_input.a.x))));
    let var_3 = u_input.a.xxw;
    var var_4 = -(~u_input.b.x);
    let var_5 = vec3<u32>(1u, ~firstTrailingBit(20488u) ^ 0u, 4294967295u);
    var_4 = _wgslsmith_mod_i32(min(-19366i, u_input.b.x), firstTrailingBit(u_input.b.x));
    let var_6 = _wgslsmith_sub_vec3_u32(~var_3, vec3<u32>(firstTrailingBit(~var_5.x) ^ 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.b, var_3.x), 0u), ~1u), ~1u));
    let var_7 = select(var_5.x << (min(var_6.x, u_input.a.x | 116930u) % 32u), 29907u, all(vec3<bool>(true, true, true)) != all(vec4<bool>(true, true, true, true))) ^ ~52031u;
    let x = u_input.a;
    s_output = StorageBuffer(83217u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, -1232f, 105f, 322f), vec4<f32>(var_2.a.x, -240f, 420f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1028f, -649f)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0 * var_2.a.x), _wgslsmith_f_op_f32(func_4(1000f, vec2<bool>(false, false), var_2, var_2.a.xy)), _wgslsmith_f_op_f32(abs(var_2.a.x)), var_0)))), ~(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_6.x, 18220u), var_7)), firstTrailingBit(u_input.b.x << (~(~47962u) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, var_2.a.x, 1000f, var_2.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-417f, var_2.a.x, var_0, 433f) + vec4<f32>(-1070f, var_2.a.x, -607f, -704f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(705f, 1306f, 2244f, var_0)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.x, -656f, 245f, var_0))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -636f, 646f, var_2.a.x) + vec4<f32>(var_0, 617f, var_0, var_2.a.x)))));
}

